use openstrike_core::bot::BotConfig;
use openstrike_core::{Command, Phase, SimInput, StrikeSim, WeaponConfig};
use pocket3d_bsp::cooked::{self, CookedMap};
use pocket3d_bsp::trace::Hull;
use std::sync::{Mutex, OnceLock};

#[repr(C)]
#[derive(Clone, Copy, Default)]
pub struct OpenStrikeSnapshot {
    pub x: f32, pub y: f32, pub z: f32,
    pub yaw: f32, pub pitch: f32, pub time: f32, pub recoil: f32,
    pub ammo: u32, pub reserve: u32, pub health: i32, pub fired: u32,
    pub phase: u32, pub alive: u32, pub reloading: u32, pub reload_frac: f32,
    pub alive_bots: u32, pub total_bots: u32, pub wins: u32, pub losses: u32,
    pub speed: f32,
    pub vel_y: f32,
    pub on_ground: u32,
    pub fly_mode: u32,
    pub ground_dist: f32,
}

#[repr(C)]
#[derive(Clone, Copy, Default)]
pub struct P3dBatch {
    pub texture: u32,
    pub kind: u32,
    pub vert_base: u32,
    pub index_base: u32,
    pub index_count: u32,
}

#[repr(C)]
#[derive(Clone, Copy, Default)]
pub struct P3dTexture {
    pub width: u32,
    pub height: u32,
    pub masked: u32,
    pub rgba: *const u8,
}

#[repr(C)]
#[derive(Clone, Copy, Default)]
pub struct BotSnapshot {
    pub x: f32, pub y: f32, pub z: f32, pub yaw: f32, pub death_time: f32,
    pub alive: u32,
}

struct Runtime {
    sim: StrikeSim,
    map: CookedMap<'static>,
    rgba: Vec<Vec<u8>>,
    soldier_vertices: Vec<f32>,
    soldier_indices: Vec<u16>,
    soldier_body_indices: u32,
}

unsafe impl Send for Runtime {}
static RUNTIME: OnceLock<Mutex<Runtime>> = OnceLock::new();

fn decode_texture(t: &cooked::CookedTexture<'_>) -> Vec<u8> {
    let w = t.width as usize;
    let h = t.height as usize;
    let stride = w.max(16);
    let rows = h.div_ceil(8) * 8;
    let src = t.mips[0];
    let mut linear = vec![0u8; stride * rows];
    let mut pos = 0usize;
    for by in 0..rows / 8 {
        for bx in 0..stride / 16 {
            for y in 0..8 {
                let dst = (by * 8 + y) * stride + bx * 16;
                linear[dst..dst + 16].copy_from_slice(&src[pos..pos + 16]);
                pos += 16;
            }
        }
    }
    let mut out = vec![0u8; w * h * 4];
    for y in 0..h {
        for x in 0..w {
            let p = linear[y * stride + x] as usize;
            out[(y*w+x)*4..(y*w+x+1)*4].copy_from_slice(&t.palette[p*4..p*4+4]);
        }
    }
    out
}

fn runtime() -> &'static Mutex<Runtime> {
    RUNTIME.get_or_init(|| {
        let source = include_bytes!("../assets/de_dust2_largo.p3d");
        let words = vec![0u128; source.len().div_ceil(16)].into_boxed_slice();
        let words = Box::leak(words);
        let bytes = unsafe { std::slice::from_raw_parts_mut(words.as_mut_ptr() as *mut u8, words.len()*16) };
        bytes[..source.len()].copy_from_slice(source);
        let data: &'static [u8] = &bytes[..source.len()];
        let map = cooked::read(data).expect("embedded de_dust2_largo.p3d must parse");
        // Largo's first CT spawn faces a wall. CT[4] opens onto the room, and
        // nearby legal CT starts make the official bots immediately visible.
        let spawn = map.ct_spawns.get(4).or(map.ct_spawns.first()).or(map.t_spawns.first()).copied().expect("map spawn");
        let bot_spawns = if map.ct_spawns.len() >= 6 {
            vec![map.ct_spawns[5], map.ct_spawns[1], map.ct_spawns[2], map.ct_spawns[3]]
        } else if map.t_spawns.is_empty() { map.ct_spawns.clone() } else { map.t_spawns.clone() };
        let mut sim = StrikeSim::new(spawn.pos, spawn.yaw, bot_spawns, 3);
        sim.apply(Command::ConfigureBots(BotConfig { count: 3, speed: 150.0, attack_interval: 999.0, damage_min: 0, damage_max: 0 }), 0);
        let rgba = map.textures.iter().map(decode_texture).collect();
        let soldier = include_bytes!("../assets/soldier.mesh");
        assert_eq!(u32::from_le_bytes(soldier[0..4].try_into().unwrap()), 0x314d534f);
        let vertex_count = u32::from_le_bytes(soldier[4..8].try_into().unwrap()) as usize;
        let index_count = u32::from_le_bytes(soldier[8..12].try_into().unwrap()) as usize;
        let soldier_body_indices = u32::from_le_bytes(soldier[12..16].try_into().unwrap());
        let mut soldier_vertices = Vec::with_capacity(vertex_count * 3);
        let mut offset = 16;
        for _ in 0..vertex_count*3 { soldier_vertices.push(f32::from_le_bytes(soldier[offset..offset+4].try_into().unwrap())); offset += 4; }
        let mut soldier_indices = Vec::with_capacity(index_count);
        for _ in 0..index_count { soldier_indices.push(u16::from_le_bytes(soldier[offset..offset+2].try_into().unwrap())); offset += 2; }
        Mutex::new(Runtime { sim, map, rgba, soldier_vertices, soldier_indices, soldier_body_indices })
    })
}

#[unsafe(no_mangle)] pub extern "C" fn openstrike_init() { let _ = runtime(); }

#[unsafe(no_mangle)]
pub extern "C" fn openstrike_tick(dt:f32, move_x:f32, move_y:f32, fire:u32, reload:u32, jump:u32) {
    if let Ok(mut rt)=runtime().lock() {
        let input=SimInput{move_x:move_x.clamp(-1.0,1.0),move_y:move_y.clamp(-1.0,1.0),fire:fire!=0,reload:reload!=0,jump:jump!=0,..Default::default()};
        let Runtime{sim,map,..}=&mut *rt;
        sim.tick(&map.collision,dt.clamp(0.0,0.05),&input);
    }
}

#[unsafe(no_mangle)] pub extern "C" fn openstrike_look(dx:f32,dy:f32){if let Ok(mut rt)=runtime().lock(){rt.sim.apply_look(dx,dy);}}

#[unsafe(no_mangle)]
pub extern "C" fn openstrike_snapshot(out:*mut OpenStrikeSnapshot){
    if out.is_null(){return} if let Ok(rt)=runtime().lock(){let s=&rt.sim;let ground=rt.map.collision.trace(Hull::Stand,s.player.state.pos,s.player.state.pos-glam::Vec3::Y*512.0);unsafe{*out=OpenStrikeSnapshot{
        x:s.player.state.pos.x,y:s.player.state.pos.y,z:s.player.state.pos.z,yaw:s.player.yaw,pitch:s.player.pitch,time:s.time,recoil:s.weapon.recoil,
        ammo:s.weapon.ammo,reserve:s.weapon.reserve,health:s.player.health,fired:s.fired_this_tick as u32,
        phase:match s.phase{Phase::Starting=>0,Phase::Live=>1,Phase::Ended{won:true}=>2,Phase::Ended{won:false}=>3},alive:s.player.alive as u32,
        reloading:s.weapon.reloading() as u32,reload_frac:s.reload_frac(),alive_bots:s.alive_bots() as u32,total_bots:s.bots.len() as u32,
        wins:s.score.wins,losses:s.score.losses,speed:s.ground_speed(),vel_y:s.player.state.vel.y,on_ground:s.player.state.on_ground as u32,fly_mode:s.fly_mode as u32,ground_dist:ground.fraction*512.0,
    }}}
}

fn apply(cmd:Command){if let Ok(mut rt)=runtime().lock(){rt.sim.apply(cmd,0);}}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_set_phase(p:u32){apply(Command::SetPhase(match p{1=>Phase::Live,2=>Phase::Ended{won:true},3=>Phase::Ended{won:false},_=>Phase::Starting}));}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_reset_round(){if let Ok(mut rt)=runtime().lock(){
    let state=rt.sim.player.state;let yaw=rt.sim.player.yaw;let pitch=rt.sim.player.pitch;
    rt.sim.reset_round(0);rt.sim.player.state=state;rt.sim.player.prev_pos=state.pos;rt.sim.player.yaw=yaw;rt.sim.player.pitch=pitch;
}}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_add_win(){apply(Command::AddWin);}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_add_loss(){apply(Command::AddLoss);}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_set_bot_count(n:u32){apply(Command::SetBotCount(n as usize));}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_configure_weapon(m:u32,r:u32,i:f32,rl:f32,b:i32,h:i32){apply(Command::ConfigureWeapon(WeaponConfig{mag_size:m,reserve:r,fire_interval:i,reload_time:rl,damage_body:b,damage_head:h}));}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_configure_bots(c:u32,s:f32,a:f32,d0:i32,d1:i32){apply(Command::ConfigureBots(BotConfig{count:c as usize,speed:s,attack_interval:a,damage_min:d0,damage_max:d1}));}

#[unsafe(no_mangle)] pub extern "C" fn openstrike_p3d_vertices(count:*mut u32)->*const u8{let rt=runtime().lock().unwrap();unsafe{if !count.is_null(){*count=rt.map.vert_count}}rt.map.verts.as_ptr()}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_p3d_indices(count:*mut u32)->*const u16{let rt=runtime().lock().unwrap();unsafe{if !count.is_null(){*count=rt.map.indices.len() as u32}}rt.map.indices.as_ptr()}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_p3d_batch_count()->u32{runtime().lock().unwrap().map.batches.len() as u32}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_p3d_batch(i:u32,out:*mut P3dBatch)->u32{if out.is_null(){return 0}let rt=runtime().lock().unwrap();let Some(b)=rt.map.batches.get(i as usize)else{return 0};unsafe{*out=P3dBatch{texture:b.texture as u32,kind:b.kind.as_u8() as u32,vert_base:b.vert_base,index_base:b.index_base,index_count:b.index_count}}1}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_p3d_texture_count()->u32{runtime().lock().unwrap().rgba.len() as u32}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_p3d_texture(i:u32,out:*mut P3dTexture)->u32{if out.is_null(){return 0}let rt=runtime().lock().unwrap();let Some(t)=rt.map.textures.get(i as usize)else{return 0};let rgba=&rt.rgba[i as usize];unsafe{*out=P3dTexture{width:t.width,height:t.height,masked:t.masked as u32,rgba:rgba.as_ptr()}}1}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_soldier_vertices(count:*mut u32)->*const f32{let rt=runtime().lock().unwrap();unsafe{if !count.is_null(){*count=(rt.soldier_vertices.len()/3) as u32}}rt.soldier_vertices.as_ptr()}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_soldier_indices(count:*mut u32,body:*mut u32)->*const u16{let rt=runtime().lock().unwrap();unsafe{if !count.is_null(){*count=rt.soldier_indices.len() as u32}if !body.is_null(){*body=rt.soldier_body_indices}}rt.soldier_indices.as_ptr()}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_bot_count()->u32{runtime().lock().unwrap().sim.bots.len() as u32}
#[unsafe(no_mangle)] pub extern "C" fn openstrike_bot_snapshot(i:u32,out:*mut BotSnapshot)->u32{if out.is_null(){return 0}let rt=runtime().lock().unwrap();let Some(b)=rt.sim.bots.get(i as usize)else{return 0};unsafe{*out=BotSnapshot{x:b.state.pos.x,y:b.state.pos.y,z:b.state.pos.z,yaw:b.yaw,death_time:b.death_time,alive:b.alive() as u32}}1}

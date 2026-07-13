const [source, target] = process.argv.slice(2);
if (!source || !target) throw new Error('usage: bun cook-soldier.ts Soldier.glb soldier.mesh');

const bytes = new Uint8Array(await Bun.file(source).arrayBuffer());
const dv = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
if (dv.getUint32(0, true) !== 0x46546c67) throw new Error('not a GLB');
const jsonLen = dv.getUint32(12, true);
const json = JSON.parse(new TextDecoder().decode(bytes.slice(20, 20 + jsonLen)).trim());
const binHeader = 20 + jsonLen;
if (dv.getUint32(binHeader + 4, true) !== 0x004e4942) throw new Error('GLB has no BIN chunk');
const binBase = binHeader + 8;

const components: Record<string, number> = { SCALAR: 1, VEC2: 2, VEC3: 3, VEC4: 4, MAT4: 16 };
const componentBytes: Record<number, number> = { 5121: 1, 5123: 2, 5125: 4, 5126: 4 };
function accessor(index: number): number[] {
  const a = json.accessors[index];
  const view = json.bufferViews[a.bufferView];
  const count = components[a.type];
  const size = componentBytes[a.componentType];
  const stride = view.byteStride ?? count * size;
  const base = binBase + (view.byteOffset ?? 0) + (a.byteOffset ?? 0);
  const out: number[] = [];
  for (let i = 0; i < a.count; i++) for (let c = 0; c < count; c++) {
    const p = base + i * stride + c * size;
    out.push(a.componentType === 5126 ? dv.getFloat32(p, true)
      : a.componentType === 5125 ? dv.getUint32(p, true)
      : a.componentType === 5123 ? dv.getUint16(p, true)
      : dv.getUint8(p));
  }
  return out;
}

type V3 = [number, number, number];
type Q = [number, number, number, number];
type M = number[];
const I = (): M => [1,0,0,0, 0,1,0,0, 0,0,1,0, 0,0,0,1];
const mul = (a: M, b: M): M => {
  const r = new Array(16).fill(0);
  for (let c = 0; c < 4; c++) for (let row = 0; row < 4; row++) for (let k = 0; k < 4; k++) {
    r[c * 4 + row] += a[k * 4 + row] * b[c * 4 + k];
  }
  return r;
};
const tr = (v: V3): M => [1,0,0,0, 0,1,0,0, 0,0,1,0, v[0],v[1],v[2],1];
const sc = (v: V3): M => [v[0],0,0,0, 0,v[1],0,0, 0,0,v[2],0, 0,0,0,1];
const rq = (q: Q): M => {
  const [x, y, z, w] = q;
  const x2=x+x,y2=y+y,z2=z+z,xx=x*x2,xy=x*y2,xz=x*z2,yy=y*y2,yz=y*z2,zz=z*z2,wx=w*x2,wy=w*y2,wz=w*z2;
  return [1-yy-zz,xy+wz,xz-wy,0, xy-wz,1-xx-zz,yz+wx,0, xz+wy,yz-wx,1-xx-yy,0, 0,0,0,1];
};
const tx = (m: M, x: number, y: number, z: number): V3 => [
  m[0]*x+m[4]*y+m[8]*z+m[12],
  m[1]*x+m[5]*y+m[9]*z+m[13],
  m[2]*x+m[6]*y+m[10]*z+m[14],
];
const lerp = (a: number, b: number, f: number) => a + (b - a) * f;
const qnorm = (q: Q): Q => { const n=Math.hypot(...q)||1; return [q[0]/n,q[1]/n,q[2]/n,q[3]/n]; };
const qslerp = (a: Q, b: Q, f: number): Q => {
  let cos=a[0]*b[0]+a[1]*b[1]+a[2]*b[2]+a[3]*b[3],bb:Q=[...b];
  if(cos<0){cos=-cos;bb=[-b[0],-b[1],-b[2],-b[3]];}
  if(cos>0.9995)return qnorm([lerp(a[0],bb[0],f),lerp(a[1],bb[1],f),lerp(a[2],bb[2],f),lerp(a[3],bb[3],f)]);
  const th=Math.acos(cos),s=Math.sin(th),wa=Math.sin((1-f)*th)/s,wb=Math.sin(f*th)/s;
  return [a[0]*wa+bb[0]*wb,a[1]*wa+bb[1]*wb,a[2]*wa+bb[2]*wb,a[3]*wa+bb[3]*wb];
};

const meshNode = new Map<number, number>();
json.nodes.forEach((n: any, i: number) => { if (n.mesh !== undefined) meshNode.set(n.mesh, i); });
const sections = json.meshes.flatMap((mesh: any, meshIndex: number) =>
  mesh.primitives.map((prim: any) => ({ mesh: meshIndex, prim })));
const hipsNode = json.nodes.findIndex((n: any) => n.name === 'mixamorig:Hips');

function clipDuration(anim: any): number {
  let duration = 0;
  for (const sampler of anim.samplers) {
    const times = accessor(sampler.input);
    duration = Math.max(duration, times[times.length - 1] ?? 0);
  }
  return duration;
}

function samplePose(anim: any, time: number): Map<number, { t?: V3, r?: Q, s?: V3 }> {
  const pose = new Map<number, { t?: V3, r?: Q, s?: V3 }>();
  for (const ch of anim.channels) {
    const sampler = anim.samplers[ch.sampler];
    const times = accessor(sampler.input);
    const values = accessor(sampler.output);
    const comps = ch.target.path === 'rotation' ? 4 : 3;
    let lo = 0;
    while (lo + 1 < times.length && times[lo + 1] <= time) lo++;
    const hi = Math.min(lo + 1, times.length - 1);
    const f = hi === lo ? 0 : Math.max(0, Math.min(1, (time - times[lo]) / (times[hi] - times[lo])));
    const va = values.slice(lo * comps, lo * comps + comps);
    const vb = values.slice(hi * comps, hi * comps + comps);
    const dst = pose.get(ch.target.node) ?? {};
    if (ch.target.path === 'rotation') dst.r = qslerp(va as Q, vb as Q, f);
    else {
      const v: V3 = [lerp(va[0],vb[0],f),lerp(va[1],vb[1],f),lerp(va[2],vb[2],f)];
      if (ch.target.path === 'translation') {
        if (ch.target.node === hipsNode) {
          // Mixamo clips contain root motion. The simulation already moves the
          // bot, so pin horizontal motion and retain only vertical bob.
          const base = (json.nodes[hipsNode].translation ?? [0,0,0]) as V3;
          const first = values.slice(0, 3);
          v[0] = base[0]; v[1] = base[1]; v[2] = base[2] + (v[2] - first[2]);
        }
        dst.t = v;
      } else dst.s = v;
    }
    pose.set(ch.target.node, dst);
  }
  return pose;
}

function bake(anim: any, time: number): V3[][] {
  const pose = samplePose(anim, time);
  const local = (i: number): M => {
    const n=json.nodes[i];if(n.matrix)return n.matrix;const p=pose.get(i)??{};
    return mul(mul(tr((p.t??n.translation??[0,0,0]) as V3),rq((p.r??n.rotation??[0,0,0,1]) as Q)),sc((p.s??n.scale??[1,1,1]) as V3));
  };
  const globals=json.nodes.map(()=>I());
  const visit=(i:number,parent:M)=>{globals[i]=mul(parent,local(i));for(const c of json.nodes[i].children??[])visit(c,globals[i]);};
  for(const root of json.scenes[json.scene??0].nodes)visit(root,I());
  return sections.map((section: any) => {
    const p=section.prim,pos=accessor(p.attributes.POSITION),joints=accessor(p.attributes.JOINTS_0),weights=accessor(p.attributes.WEIGHTS_0);
    const nodeIndex=meshNode.get(section.mesh)!;
    const skin=json.skins[json.nodes[nodeIndex].skin],ibm=accessor(skin.inverseBindMatrices),out:V3[]=[];
    for(let i=0;i<pos.length/3;i++){
      let x=0,y=0,z=0,total=0;
      for(let k=0;k<4;k++){
        const w=weights[i*4+k]??0;if(w<=0)continue;const ji=joints[i*4+k];const joint=skin.joints[ji];
        const m=mul(globals[joint],ibm.slice(ji*16,(ji+1)*16));const v=tx(m,pos[i*3],pos[i*3+1],pos[i*3+2]);
        x+=v[0]*w;y+=v[1]*w;z+=v[2]*w;total+=w;
      }
      out.push(total>0?[x/total,y/total,z/total]:tx(globals[nodeIndex],pos[i*3],pos[i*3+1],pos[i*3+2]));
    }
    return out;
  });
}

const idle=json.animations.find((a:any)=>a.name==='Idle')??json.animations[0];
const walk=json.animations.find((a:any)=>a.name==='Walk')??json.animations[0];
const idleDuration=clipDuration(idle),walkDuration=clipDuration(walk);
const idleFrames=1,walkFrames=16;
const rawFrames:V3[][][]=[bake(idle,Math.min(0.45,idleDuration))];
for(let i=0;i<walkFrames;i++)rawFrames.push(bake(walk,walkDuration*i/walkFrames));

const min=[Infinity,Infinity,Infinity],max=[-Infinity,-Infinity,-Infinity];
for(const frame of rawFrames)for(const section of frame)for(const v of section)for(let i=0;i<3;i++){
  min[i]=Math.min(min[i],v[i]);max[i]=Math.max(max[i],v[i]);
}
const range=max.map((v,i)=>v-min[i]),up=range[1]>=range[2]?1:2,scale=70/range[up];
const cx=(min[0]+max[0])*.5,cz=up===1?(min[2]+max[2])*.5:(min[1]+max[1])*.5;
const convert=(v:V3):V3=>up===1?[(v[0]-cx)*scale,(v[1]-min[1])*scale,-(v[2]-cz)*scale]:[(v[0]-cx)*scale,(v[2]-min[2])*scale,-(v[1]-cz)*scale];

const positions:number[]=[],uvs:number[]=[],indices:number[]=[];
for(const frame of rawFrames)for(const section of frame)for(const v of section)positions.push(...convert(v));
let bodyIndexCount=0,baseVertex=0;
for(let s=0;s<sections.length;s++){
  const p=sections[s].prim,uv=accessor(p.attributes.TEXCOORD_0),count=accessor(p.attributes.POSITION).length/3;
  uvs.push(...uv);for(const index of accessor(p.indices))indices.push(baseVertex+index);baseVertex+=count;
  if(s===0)bodyIndexCount=indices.length;
}
if(baseVertex>65535)throw new Error('model exceeds u16 index range');

const material=json.materials[sections[0].prim.material];
const textureIndex=material.pbrMetallicRoughness.baseColorTexture.index;
const imageIndex=json.textures[textureIndex].source,image=json.images[imageIndex],view=json.bufferViews[image.bufferView];
const jpeg=bytes.slice(binBase+(view.byteOffset??0),binBase+(view.byteOffset??0)+view.byteLength);
function jpegSize(data:Uint8Array):[number,number]{
  let i=2;while(i+8<data.length){while(i<data.length&&data[i]!==0xff)i++;while(i<data.length&&data[i]===0xff)i++;const marker=data[i++];
    if(marker===0xd8||marker===0xd9)continue;if(i+2>data.length)break;const len=(data[i]<<8)|data[i+1];
    if([0xc0,0xc1,0xc2,0xc3,0xc5,0xc6,0xc7,0xc9,0xca,0xcb,0xcd,0xce,0xcf].includes(marker))return[(data[i+5]<<8)|data[i+6],(data[i+3]<<8)|data[i+4]];
    i+=len;
  }throw new Error('JPEG dimensions not found');
}
const [textureWidth,textureHeight]=jpegSize(jpeg);
const ffmpeg=process.env.FFMPEG??'/opt/homebrew/bin/ffmpeg';
const decoded=Bun.spawnSync({cmd:[ffmpeg,'-v','error','-f','image2pipe','-i','pipe:0','-frames:v','1','-f','rawvideo','-pix_fmt','rgb24','pipe:1'],stdin:jpeg});
if(decoded.exitCode!==0)throw new Error(`ffmpeg texture decode failed: ${decoded.stderr.toString()}`);
const texture=new Uint8Array(decoded.stdout);
if(texture.length!==textureWidth*textureHeight*3)throw new Error(`unexpected RGB texture size ${texture.length}`);

const header=48,output=new ArrayBuffer(header+positions.length*4+uvs.length*4+indices.length*2+texture.length),od=new DataView(output);
od.setUint32(0,0x324d534f,true);od.setUint32(4,baseVertex,true);od.setUint32(8,indices.length,true);od.setUint32(12,bodyIndexCount,true);
od.setUint32(16,idleFrames,true);od.setUint32(20,walkFrames,true);od.setFloat32(24,idleDuration,true);od.setFloat32(28,walkDuration,true);
od.setUint32(32,textureWidth,true);od.setUint32(36,textureHeight,true);od.setUint32(40,3,true);od.setUint32(44,texture.length,true);
let offset=header;for(const v of positions){od.setFloat32(offset,v,true);offset+=4;}for(const v of uvs){od.setFloat32(offset,v,true);offset+=4;}
for(const v of indices){od.setUint16(offset,v,true);offset+=2;}new Uint8Array(output,offset,texture.length).set(texture);
await Bun.write(target,output);
console.log(`Soldier.glb -> ${target}: ${baseVertex} vertices, ${idleFrames}+${walkFrames} frames, ${indices.length} indices, ${textureWidth}x${textureHeight} RGB, up=${up}`);

use pocket3d_bsp::cooked;

fn main() {
    let path = std::env::args().nth(1).expect("p3d path");
    let bytes = std::fs::read(path).unwrap();
    let map = cooked::read(&bytes).unwrap();
    for (side, points) in [("CT", &map.ct_spawns), ("T", &map.t_spawns)] {
        for (i, p) in points.iter().enumerate() {
            println!("{side}[{i}] pos={:.1},{:.1},{:.1} yaw={:.3}", p.pos.x, p.pos.y, p.pos.z, p.yaw);
        }
    }
}

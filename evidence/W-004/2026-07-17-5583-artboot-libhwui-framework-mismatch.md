# W-004 · 2026-07-17 · artboot ART-host on 5583: libhwui↔framework.jar mismatch (root-caused) + next wall

**板**: `5583f5be…0323012c`(big-clean, UDID `3F740326F7978CC8CB62F84376856D13ED1C4B733C763871D300FED31B6560E9`)。
**载体**: `noice-nb.hap`(bundleName `com.github.ashutoshgngwr.noice`,自包含 ART 宿主:`libwestlake_art.so` + `libhwui.so` + rawfile 里 `framework.jar`/`framework-res.apk`/`triangle.apk`/`noice.apk`)。原盘上 `/data/local/tmp/noice-nb.hap`,为 5ce/newboard 签的。

## 结论先行
- **首次确认 artboot 自包含 ART 宿主能在 5583 上 boot**(此前只在 5ce 跑）：装上→启动→解包整套 Android framework substrate→`libwestlake_art` VM 起来→`dlopen probe -> drive VM + triangleApk render pipeline`。
- **Wall-1（已根因 + 已越过）**: 崩在 `android::register_android_graphics_Canvas` → `__android_log_assert`(SIGTRAP)。根因 = **framework.jar 与 libhwui 不同源**(`RegisterNatives` 失配 → `LOG_ALWAYS_FATAL`)。
- **Wall-2（当前墙）**: 换成同源 libhwui 后 Canvas 崩溃消失，前移到 **`ld-musl map_library_header` SIGBUS(BUS_ADRERR)** —— 同源 libhwui 是 **raw-AOSP 构建**,OHOS musl 加载器 map 它的段直接 bus error(AOSP 大页对齐 vs 4KB)。

## 证据（哈希）
| 件 | sha256 | 大小 | 判定 |
|---|---|---|---|
| `framework.jar`(noice-nb 内) | `3e106350…dde9af` | 40087842 | **== adapter-20260706 `out/aosp_fwk/framework.jar`**(同源) |
| `libhwui.so`(noice-nb 内, 崩 Canvas) | `c9ed61d0…59efad` | 4752768 | OHOS 适配版,**能加载**,但与上面 framework.jar **不同源** → RegisterNatives 失配 |
| `libhwui.so`(adapter-0706 `out/aosp_lib/`) | `0fa653a3…b82837` | 2258588 | **与 framework.jar 同源** → 越过 Canvas；但 **raw-AOSP** → map 时 SIGBUS |
| `libwestlake_art.so` | `adeb764f…0377c2a` | 18819648 | westlake ART,加载/起 VM 正常 |

崩栈(Wall-2)：`map_library_header+816` ← `load_library_header` ← `preload_direct_deps` ← `dlopen_impl` ← `libwestlake_art.so`。

## 缺口 / 下一步
需要**「与 framework.jar `3e106350` 同源 且 已做 OHOS 页对齐/重链适配」的 libhwui**。两个现成件各缺一半：
- `c9ed61d0`（OHOS 适配、能加载）↔ framework.jar 不同源；
- `0fa653a3`（framework.jar 同源）↔ raw-AOSP、加载器 SIGBUS。
blob/编译机(`yao@1.95.76.248`)上只有 raw-AOSP 的 `0fa653a3`,**无独立的 OHOS-适配同源 libhwui**。→ 需从 artboot 适配链重出一版 libhwui（页对齐 4KB / 重链），或反向找 `c9ed61d0` 对应的同源 framework.jar。

## 可复现的 5583 无头工具链（已端到端验证）
1. 换件：`zip -0` 换 hap 内 `libs/arm64-v8a/libhwui.so`（保持 Stored）。
2. 对齐：`octos-stack/ohos/tools/zipalign_hap.py in.hap out.hap`（stored 的 .so 4KB 对齐，OHOS 直接 mmap 需要）。
3. 签名：`~/wl-tools-mine/sign-hap.sh out.hap out-5583.hap`（JDK17 `~/jdk17` + SDK `hap-sign-tool.jar` + `OpenHarmony.p12`；profile UDID 锁 5583 `3F740326…`）。
4. 装：`hdc -t 5583… install out-5583.hap` → `install bundle successfully`。

> 注：本文件为旁路证据记录，未动 `state/`、未认领卡；W-004 lane 正主请据此接。

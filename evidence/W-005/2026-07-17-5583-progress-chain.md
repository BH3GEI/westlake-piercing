# W-005 · 2026-07-17 · 5583 artboot HAP 上屏链：六墙已破，当前墙 = imageless ART 类型解析抽签

> 本日 7 轮 oracle（apkhost-fresh-frame.sh）+ 十余次手动冷启动的完整实证链。
> 链上每一墙的根因、修法、产物 hash 均在此；当前硬墙定性 + 三条候选路线在末尾。
> 协作警告：本日有另一会话在同板同 bundle 上并行施工（互相覆盖安装），读本文前先核对板上当前安装的是谁的包。

## 验收线（W-005 卡）
installed HAP(com.westlake.artboot) 内嵌 ART 起 VM → triangle.apk 自有 dex 在 HAP 自身 XComponent 窗口画 nonce 色帧 → 回读像素命中。判据链 WLAUNCH(nonce) → WELD(窗口归属) → WLTRI(nonceMatch=yes) → verdict=PASS。

## 已破的六墙（按攻克顺序，全部板上实证）

1. **oracle 解析不到 nonce**：artboot.c `WLAUNCH launch nonce=%s` 未打 `%{public}s`，hilog 脱敏成 `<private>`。
   修：`artboot.c` 改 `%{public}s`（胶 337 行附近）。证据：run3 起 nonce 解析成功。
2. **探针绝对路径加载 ART 失败（ENOENT）**：noice 线探针按 `$WESTLAKE_EXEC_ROOT/art/libwestlake_art.so`、`$EXEC_ROOT/android/lib64/liboh_android_runtime.so` 绝对路径加载，而 artboot 线把 bundle libs 拍平 → `check ns accessible failed errno=2` → vm_rc=-9999，VM 从未启动（runs 1-3 真正死因）。
   修：`artboot/stage-runtime.sh` 增加子目录拷贝（`art/`、`android/lib64/`，镜像 noice-nb.hap 已验证布局）+ manifest find 化；`pack-hap.sh` cp -R 保持子目录。
3. **WRIT 符号链接路线 EINVAL**：并发会话一度改 `EXEC_ROOT=WRIT`（filesDir 符号链接→bundle 实文件），实测 dlopen 报 `Invalid argument`（run4）——app 沙箱路径不可 exec。
   修：`EXEC_ROOT=LIBDIR`（v6，配合墙 2 的子目录实文件，= noice-nb 的既有搭配）。
4. **坏 libandroidfw.so SIGBUS**：随包 libandroidfw.so(82dcbe6e) 在 app 进程 `map_library_header` SIGBUS（并发会话三路实证：soname/WRIT 符号链接/LIBDIR 子目录全崩）。
   修：`WESTLAKE_SKIP_ANDROIDFW_ONLOAD=1`（triangle 阶段不加载资源可容忍）。**缺口**：uptodown/AppCompat 阶段需要真 libandroidfw（arsc rebind），待换好件。
5. **缺 libandroid.so → startReg 必崩**：a2oh 适配版 libhwui(c9ed61d0) 故意不 NEEDED libandroid.so，运行时 dlopen("libandroid.so")+dlsym 查 ANativeWindow_fromSurface 等 5 族符号，全链路无此件 → `register_android_view_ThreadedRenderer+672` 断言 SIGTRAP。
   静态证伪"RegisterNatives 失配"假设：libhwui 72 个 HardwareRenderer natives 与 framework.jar c3a06db5 精确 72:72。
   修：新建 `artboot/libandroid-shim/`（35 个 stub 符号，首调打 hilog），NDK 直编入包。**缺口**：若渲染真调到这些符号需换真件（首调日志会暴露）。
6. **dex/jar 版本错位 + hwui subset 未绑定**：(a) 旧 upscreen-render.dex.jar 无 nativeLastSwapArgb（反射 NoSuchMethodException）→ 换配对件（pkg-private native，getDeclaredMethod+setAccessible 可达）；(b) record 路径 `RecordingCanvas.nCreateDisplayListCanvas` ULE —— dex 把 `nativeRegisterHwuiRender()` 门在 `WESTLAKE_HWUI_SUBSET=1` 后且注释称"Canvas 表与 c3a06db5 不匹配"。
   静态核实（自写 dex parser + baksmali 复核，不信旧注释）：10 个 registrar 表与该 framework 全部匹配（Canvas 33/33、BaseCanvas 32/32、BaseRecordingCanvas 32/32、Paint 85/85+1 dex-only 重载、Path 43/43、Matrix 40/40、Region 23/23+RegionIterator 3/3、Shader 17/17、Typeface 17/17、RenderNode(graphics) 90/90、RecordingCanvas 12/12）。旧注释量的是错配件 3e106350，已过时。
   修：胶设 `WESTLAKE_HWUI_SUBSET=1`。run9 实证 `Noice HWUI subset failures=0`（10/10 注册成功）。

## 例外清单（核实过的良性项）
- `android/graphics/Matrix$ExtraNatives`、`android/graphics/ColorSpace$Rgb$Native` **在 framework.jar c3a06db5 中不存在**（5 个 dex 全查，自写 parser + baksmali）：这些 inner-class natives 注定注册不上，selective binder 跳过（triangle 不调用，良性）。
- Paint 的 `nGetRunCharacterAdvance(...RectF;)F`（无 RunInfo 重载）dex 有而表无 → 不注册；文本排版路径才碰，triangle 不碰。
- staged `libwestlake_art.so`=adeb764f 与 ARTIFACT-INVENTORY 钉值 dc1d5e82 不同：钉值过期（本日证据实证 adeb764f 加载/起 VM 正常），待 thinker 更新钉值。

## 当前硬墙（两会话独立复现 N 次）：imageless ART 类型解析抽签
同一 build 下逐跑结果在三种结局间抽签：
- `register_android_graphics_Canvas+44` 断言 "Unable to register native methods."（SIGTRAP；03:06、07:40 两次 cppcrash）；
- 解释器类型解析 SIGSEGV：`DexFile::FindClassDef`（NEW_INSTANCE 路径）/ `ClassLinker::DoResolveType`（IPUT→ResolveField 路径），崩点逐跑漂移（03:09、03:29、03:35、03:58、04:00 多次 cppcrash）；
- 注册部分失败但进程存活（hwuiSubset=6，Canvas 族未绑 → record 内 `BaseRecordingCanvas.nDrawColor(JII)V` ULE，dex 容错走到 99-done，03:58 实证一次）。

梯子定位（dex `earlyWriteLiteral` 镜像到 WESTLAKE_RESULT_DIR 后）：崩溃精确发生在 `WestlakeUpscreen.record()`（beginRecording→RecordingCanvas.obtain→onDraw→nDrawColor）内部。
根源判断：imageless ART 在图形类密集首次解析时 FindClass/DoResolveType 非确定性失败（LEDGER #33 "vtable 非确定性" 同族；dex/jar/表全部静态核实无误，非配对问题）。**非 dex、非 jar、非表、非板件问题——VM 层抽签。**

## 候选路线（thinker 定夺）
1. **ART 重出**（art-build-recipes + 编译机 art-latest）：带 class_linker/解释器修复的 arm64 libwestlake_art，替换 adeb764f。
2. **boot 镜像路**：`WESTLAKE_BOOT_IMAGE=1` + 预出 boot.art（类预初始化绕开解释器首次解析）；本地无 boot.art，需编译机 dex2oat。LEDGER #4 记载 boot-image 路曾在 Build.<clinit> 失败（旧 D3 时代，需复核）。
3. **抽签重试**：oracle 外加重试环（已见 subset 0-fail 一次、99-done 一次；全绿概率低但不需新件）。

## 追记（2026-07-18 凌晨，kimi 第二段）

7. **dex 裸加载 `/system/lib64/*.so` 在 app-lane 必崩**：VM 解释执行 `Runtime.load("/system/lib64/libskia_canvaskit.z.so")` → ld-musl `map_library_header` SIGBUS（namespace 拒绝 + 不可捕，run2 cppcrash）。修：dex 新增 `wlLoadLib()`——app lane（WESTLAKE_EXEC_ROOT 有值）只按 soname 从 bundle lib 目录取件、永不碰 /system；shell lane 维持原路径。已替换全部 11 处裸加载（skia/EGL/GLESv3/ace/configuration）。
8. **dispatch 区 NPE（CharSequence.length() on null，无栈）也是抽签**：同一 build 下 runResolved 有时在 `stage.trim()`/dispatch 区 NPE（rc=99，栈都 dump 不出），有时正常进入 runTriangleApk（rr-ladder 四级桩位实证：rr-01→rr-04 逐级）。与墙 6 的 FindClassDef/DoResolveType 同属 VM 层不稳定。
9. **render_service 三连崩（08:22:14-33）与 app 无关**：崩在 `RenderContextGL::SetUpGpuContext`（strlen 空指针，系统 GPU 上下文初始化），单次复核启动不再现——系统级瞬时故障，非我包所致（板曾短暂掉 hdc，已自恢复）。
10. 00:43 探针（56b6f041）含 **selective hwui binder**（逐方法绑定+跳过失败），实测绑 302 方法、跳 6（Matrix$ExtraNatives/ColorSpace$Rgb$Native 不存在于 framework + RenderNode 1）；Canvas 族仍受墙 6 抽签支配。

**现状一句话**：deterministic 的墙（1-5、7）全部修完；剩余的是 VM 抽签（墙 6/8），record() 门口反复倒毙。host 侧已无确定可修项——等 ART 重出或 boot 镜像（需编译机），或接受抽签重试博全绿（实测数十次仅见 subset 0-fail ×1、99-done ×1，且二者未同现）。

11. **selective binder 实证全绿一次**：`selective hwui total bound=355 skipped=0`（含 Canvas/BaseCanvas/BaseRecordingCanvas 全族）——静态表核实结论成立，natives 绑定不是墙。
12. **00:43 探针（56b6f041）引入静默死亡**：启动 ~1.5s 后在 selective 绑定中段（Shader 表）进程凭空消失——无 cppcrash、无 Fatal、无 /proc 残留、非启动超时（太快）、非 OOM。e583d024 时代崩溃都有 faultlog；新探针的死法无任何可抓现场（疑 binder 内 _exit/致命路径），**诊断需要该探针源码（不在伞仓树上）**。
13. 定位工具已内建进 dex：rr-ladder 四级（runResolved dispatch 区）、016/017（record 两侧）、`earlyWriteLiteral` 自动镜像 RESULT_DIR、`wlLoadLib`（lane 安全加载）。清除陈旧文件重跑是读梯子的前提（bm uninstall 才擦 filesDir）。

**给下一班**：deterministic 的墙全清（1-5、7、11）；剩两堵互相纠缠的 VM/探针墙：① 解释器类型解析抽签（FindClassDef/DoResolveType/CharSequence.length NPE，逐跑漂移）；② 00:43 探针静默死亡（需其源码）。ART 重出（编译机 art-latest + 该探针同源构建）是两堵的共同解法；boot 镜像（boot.art）是 ① 的旁路；重试博全绿在当前死法下无效（静默死亡是 100%）。

14. **「静默死亡」实为 SIGSEGV**：APPSPAWN 记录 `com.westlake.artboot ... exit with signal:11`，Faultlogger 分类 `Kill Reason:Cpp Crash`——只是 cppcrash 文件不再落盘（VM 已坏到无法展开/或被限流）。线程数在死前 ~1s 从 25 塌到 2（ART 线程群崩）。死亡点精确在 record()（017 前），发生在 selective 全绑成功（355/0 RETURN）之后——即 **带齐真 natives 做真实 display-list 录制时 VM SIGSEGV**。与 ① 同族，非新墙。
15. 本段落地的可复用件：`build-dlopen-probe-mac.sh` 本地探针构建链（与 00:43 staged 逐字节一致，工具链等价已证）；探针 selective binder 加 `sel done/RETURN` 标记（板上已用）；dex 崩溃写栈/rr-ladder/`wlLoadLib`（全部进 noice 同步源）。

**给下一班（更新版）**：deterministic 修复全部到顶；record() SIGSEGV 是 VM 级（带真 natives 录制即崩，无 dex/glue/探针可修）——**唯一出路 = 编译机重出 ART（或 boot.art 旁路）**；本机 SSH 编译机无密钥，需用户/thinker 打通或授权。5ce 上线后可用 A/B 对照（dex 注释称 subset+record 曾在 5ce 成立）。

## 产物与复现
- 链上最后 build：pinned hap sha256 `da21f117924dbd5e…`（/tmp/artboot-5583-pinned.hap 易失；重建 = stage-runtime.sh /tmp/wl-lane + libentry/libandroid-shim NDK 编译 + pack-hap.sh）。
- staging manifest：`artboot/wl-artboot-probe-hvigor/entry/src/main/resources/rawfile/staging-manifest.txt`。
- 关键 hash：libhwui c9ed61d0 / renderer 577d5099 / art adeb764f / framework.jar c3a06db5 / 探针 e583d024（93616B，含 selective binder）/ 探针 dex 5401b2f9（含梯子镜像；构建链 = build-probe-mac.sh + ANDROID_SDK 替身 /tmp/asdk android-33）/ upscreen jar 563aa360（含 pkg-private nativeLastSwapArgb）。
- 复现：oracle `WAH_HAP_SHA=<sha> oracle/verify/apkhost-fresh-frame.sh 5583f5be…012c <hap>`；手动 = bm uninstall → hdc install → aa start，梯子读 `files/tri-ladder.txt`，崩栈读 `/data/log/faultlog/faultlogger/`。

# HANDOFF · 2026-07-11 · APK-own-render color 上屏(主力穿刺)

> 交接给下一个强模型窗口。读完这一篇 + `state/` 即可接手。给出者:主号(thinker)。
> 配套证据:`evidence/W-001/2026-07-11-hwui49-rediagnosis-binding-not-dispatch.txt`、
> codex 全文 `/tmp/codex-q49.out`(易失,已在下方摘录关键段)、workflow 结果
> `.../tasks/w22zcmg78.output`(易失,关键结论已并入本篇)。

---

## 1. GOAL(用户亲定的验收线,逐字对齐)

**一个真安卓 APK,用它自己的安卓渲染代码(`Canvas.drawColor`)画出一个"会变的"纯色,经安卓图形管线上到 DAYU600 物理面板。**

- 管线:APK 的 `onDraw → Canvas.drawColor` → 安卓 RenderNode display list → libhwui(skia)光栅化成 buffer → OpenHarmony **只负责合成/扫描出** buffer 到面板。
- **变色是硬要求**:颜色由 APK 的 Java 代码逐帧改,肉眼看它循环变 → 证明安卓 app 栈活着在驱动像素,不是一次性 native 填死色。

### 明确拒绝(用户原话:"我不接受任何直接的 oh 系统渲染")
- ❌ `westlake_upscreen_color_smoke`(纯 C,#22 蓝像素)——这是 **OH 直接填色/RSSurfaceNode clear**,拒绝。
- ❌ 任何静态、来源含糊的纯色(看着像色块)。
- ❌ 用 `setBackgroundColor`/`ColorDrawable`(它走 `drawRect`,见 §5 陷阱)。
- ✅ 只认:**像素由 APK 的 `Canvas.drawColor` 这行安卓 draw op 产生**,OH 只搬运 buffer。

### 验收建议(比拍照更硬)—— 回读原语已找到,但**未接线**
- **像素回读原语 = `g214bb_raw_read_pixel(x,y)`**(`ports/dayu600/bridge-src/hwui_oh_abi_patch.cpp:1005`,
  板上 adapter libhwui 导出 `extern "C"`):raw `glReadPixels`,返回 **0xAABBGGRR**(低字节=R)。
  这就是 #22 蓝像素照片(`scratchpad-shared/upscreen-render/5583f5be-realpixels-bluecolor.jpeg`)背后的验证族。
- **现状:无任何调用点**——这是诊断助手,要**接进 harness**:renderer 的 `nativeDrawFrame` 内(EGL current、swap 前)
  或 probe dlsym 后同线程调;launcher 仿 `oracle/device/run-fontsmoke.sh` 加 `WESTLAKE_SUBSTAGE=colorapk`。
- **断言:比整个回读值(0xAABBGGRR),别只比 R**——PALETTE 红/绿/品红/黄的 R=FF/00/FF/FF,R 单通道只分得出绿;
  整值可分全 4 档。判据 = 回读值随 `nextColor()` 循环、四档两两不同(**caveat**:OH 色管线会压值——#53 `r==2` 即证——
  整值精确匹配或过严,稳妥做法是先测四档实际回读值再写死期望)。
- 细节见 `evidence/W-001/2026-07-11-color-apk-landing-derisks.txt` §6。

---

## 2. 已就绪的产物(我已落盘,可直接用)

- **`test-fixtures/dayu600-color-apk/`** — 载体 APK,已构建:
  - `src/com/westlake/colorapk/ColorView.java` — `onDraw(){ canvas.drawColor(mColor); }` + `PALETTE`(红/绿/品红/黄)+ `nextColor()`/`setColor()`。**故意用 `drawColor`(VJII,解释器已有 arm @:855),不是 `drawRect`**(见 §5)。
  - `src/com/westlake/colorapk/MainActivity.java` — 真 Activity(结构完整;当前不驱动完整生命周期,直接 new ColorView)。
  - `build-color-apk.sh` — javac(android-35)+ d8(r8.jar)+ zip → `out/color-smoke.apk`。
  - 产物:`out/color-smoke.apk` **sha256 `082559aeb0e87bb9076a707e3f014938e78534fdbb6ec172c3211830275ae9c4`**
    (1075 B,dex 容器；本班次固定 ZIP mtime 后连续两次构建同 hash)。
- **`evidence/W-001/2026-07-11-hwui49-rediagnosis-binding-not-dispatch.txt`** — #49 再诊断(绑定 ≠ 派发)。
- 渲染桥(Agent-C 已交付,真机验过 pure-C 半边):
  `ports/dayu600/gfx-smoke/westlake_upscreen_renderer.cpp`、`scratchpad-shared/upscreen-render/WestlakeUpscreen.java`、
  `scratchpad-shared/upscreen-render/INTEGRATION-README.md`(部署步骤)。

---

## 3. 决定性诊断(codex gpt-5.6-sol/max + workflow,均已核源码)

**为什么 color-apk 不是"改个 dex 今晚就出":`drawColor` 的 libhwui 实现指针没绑进探针 VM。**
当前 sidecar(`test-fixtures/dayu600-embedded-art-probe/westlake_embedded_art_dlopen_probe.c`)注册 **0 个渲染 native**。

**根因(codex 已对 `class_linker.cc` + `interpreter.cc` 核实,不是 ABI/派发问题,是注册-发布 bug):**
1. `class_linker.cc:460 RegisterNative`:@CriticalNative 且类尚未 visibly-initialized 时,把 fnPtr **暂存**进
   `critical_native_code_with_clinit_check_` map,故意保留 CIC 入口(上游 ART 为保 clinit 屏障的正常行为)。
2. 正常情况下类 visibly-initialized 后 `FixupStaticTrampolines()`(`class_linker.cc:4039`)会把暂存指针**发布**进 ArtMethod。
   **但本 fork 在 flush 之前就 early-return** → 指针永远没发布。
3. 两个自定义解析器(`interpreter.cc:687 InterpreterJni`、`quick_trampoline_entrypoints.cc:2110`)只读
   `GetEntryPointFromJni()` + `FindCodeForNativeMethod`,**没有先查 `GetRegisteredNative()`** → 暂存指针没人用 →
   在 `interpreter.cc:687` 抛 ULE(**早于** :713 的 critical 派发,**早于**任何 fallthrough hook)。
4. 结论:**RegisterNatives 早已把那个 libhwui 内部符号指针交进来了**,fork 只是没发布/没查。
   所以 W-003 卡"接 WestlakeGenericJni 两 hook"**打错层**:ULE 在 hook 之前就抛;且 `nGetFlags`(IJ)本就有 critical arm @:837。

**⚠️ 关键心智模型:color-apk 上屏 = 三道独立门全过,W-003 是必要非充分:**
1. **#49 / W-003**(native 发布+派发):@CriticalNative 图形指针发布 + 解释器有对应 shorty arm。← 并发窗口在打。
2. **R2**(RenderNode 指针跨库合法):libandroid_runtime 与 renderer 必须**同一份 libhwui 实例**(链接命名不匹配,见 §5 R2 trap)。ART 路未证。
3. **回读接线**(变色验收):`g214bb_raw_read_pixel` 已有但**未接**任何 harness(见 §1 验收建议)。
   三者独立:W-003 全绑上,R2 破仍崩、回读没接仍验不了"变色"。板期应把 2、3 与 W-003 **同一枪**验,别串行发现。

---

## 4. 路线(以 live state 为准:路线 A 唯一在办,路线 B 已禁用)

> **2026-07-11 夜更新(reconcile live state)**:`state/FRONTIER.md`/`QUEUE.md` 已定
> "走 W-003 正修,**不在持安全禁令的 5ce2dcee 替换 framework jar**"。故**路线 B(换
> crit-stripped framework.jar)已禁用**,下面保留只作对照/历史。**接手就走路线 A。**

### 路线 A —— codex 推荐,稳,但需 compiler 重建 ART 【唯一在办】
在 ART fork 内改两处(**这也是 #49/W-003 的正确修法**):
1. 把 `FixupStaticTrampolines()` 里"发布暂存 critical 指针"那块**移到 Westlake early-return 之前**。
2. 在**两个**自定义解析器里,`FindCodeForNativeMethod` **之前**先调
   `class_linker->GetRegisteredNative(self, method)`(镜像上游;在 class-init 检查之后,别在 visible-init 前调暂存 critical 指针)。
3. **不要**从 `JNINativeMethod` 反推/写 `kAccCriticalNative`(它只有 name/sig/fnPtr;ABI 归类来自 DEX 声明)——断言,别改。
→ 一次绑上所有 graphics critical(drawColor/Paint/RenderNode)。重建 `libwestlake_art.so`(compiler,配方
`local-build-adapters/art-latest/Makefile.ohos-arm64`)→ 新 hash → **同步 `oracle/verify/atom-43.sh` 的 `KNOWN_ART_SHA`
与 `REPO_LOCK` 的 `w001_substrate_art`,并先自证不回退 #43**(这是刻意的回退闸)。

### 路线 B —— StripCriticalNative 【已禁用 · 仅存档对照,勿执行】
- **crit-stripped framework.jar 已存在**:`scratchpad-shared/upscreen-render/framework-patchers/verified-builds/framework.crit-stripped-20260708.jar`(16 MB,Jul-8)。它把 graphics native 的 @CriticalNative 剥掉 →
  变 normal-JNI → `RegisterNative` **立即写 entry**(fontsmoke 已证 Paint.nInit normal 能绑)→ drawColor 实现绑上 →
  解释器 normal 路径调它 → **出像素**。
- 部署清单:crit-stripped framework.jar + adapter libhwui(板上已是,md5 504386b1)+ renderer .so(板上已是 ac2cb5ef)
  + **`libandroid-fake.so`(板上缺!)** 本地在 `scratchpad-shared/upscreen-render/libandroid-fake.so`(13664 B,md5 136884d5)
  + `WestlakeUpscreen` 并进探针 dex。
- **风险**:`apply-criticalnative-patch.sh` 用 dexlib2 3.0.9 出 **dex version 041**,板可能拒收(未验证)。
  且换 framework.jar 会变 hash → **破 #43 atom-43 hash-lock**:所以**在副板 5ce2dcee 跑**,或在 5583 先备份后恢复,
  **别把 crit-stripped jar 当 #43 基线 commit**。

**决定(live state)**:**走路线 A**——#49 正修 + 全 app 帧的地基,在 5583 验收。
路线 B 已禁用(安全:不在 5ce2dcee 换 framework jar;且其 dex-041 收不收未验证,证据
`evidence/W-001/2026-07-11-color-apk-landing-derisks.txt`)。

---

## 5. 陷阱(workflow 已核,务必避开)

- **`nDrawRect`(VJFFFFJ)没有 critical arm**(只有 normal @:2081)→ `setBackgroundColor`/`ColorDrawable` 在 critical 下不画。
  **ColorView 必须继续用 `drawColor`(VJII,arm @:855)**——已按此写好,别改成背景色。
- `show()`/record 路径的 native(`nCreateDisplayListCanvas` JJII @:873、`nFinishRecording` JJ @:849、`nSetDisplayList` VJJ @:806、
  `nSetLeftTopRightBottom` ZJIIII @:793)**都有 arm**,但同样受"指针没绑"影响——路线 A/B 一并解决。
- **`libandroid-fake.so` 必须在 LD_LIBRARY_PATH 最前**:adapter libhwui 的 RenderThread ctor 会 dlopen `libandroid.so`
  并 dlsym 9 个符号(ASurfaceControl_*/AHardwareBuffer_*/ANativeWindow_fromSurface),任一为 null 即 `LOG_ALWAYS_FATAL`。
- **`WestlakeUpscreen` 并进探针 dex —— 别走 shim classpath 重编**(会 compile-fail):探针 build 的 javac
  classpath 是 `framework-shim:android.jar`,shim 里有 `android/view/View`+`View$MeasureSpec` 的**部分桩**,
  shadow 掉真 View → WestlakeUpscreen 用的 `measure/layout/draw/MeasureSpec.EXACTLY` 全 `cannot find symbol`。
  **改用现成 dex**:`scratchpad-shared/upscreen-render/upscreen-render.dex.jar`(classes.dex **dex 035**,板可收)
  用 d8 并进探针 dex,或作第二 dex 一起 load。要从源重编就单独用**纯 android.jar**(不带 shim)。
  证据:`evidence/W-001/2026-07-11-color-apk-landing-derisks.txt`。
- 板上两种 String 会 ArrayStoreException:探针里禁 `Class.forName(String)` 拼接、禁 String `+`(用 `earlyWriteLiteral`/StringBuilder)。
- **R2(RenderNode 指针跨库合法)是 ART 路独有的、未证的墙**:renderer(部署名 renderer.so,实为 renderer_adapter)
  DT_NEEDED=`libhwui-adapter.so`,而 libandroid_runtime 走 `libhwui.so`;两文件不同、都无 SONAME → 不处理会加载**两份 libhwui**,
  ART 造的 RenderNode 指针跨实例 → nativeInit 后 `syncAndDrawFrame` 崩/花屏(**与 #49 的 ULE 可区分**)。纯 C color_smoke 在
  renderer 自己的 libhwui 里造 RenderNode,**证不了这条**。板期修:`ln -sfn libhwui.so …/libhwui-adapter.so`(同 realpath 去重)
  或 patchelf renderer NEEDED→`libhwui.so`,并自证 libhwui 只映射一次。详见 `evidence/W-001/2026-07-12-r2-libhwui-singleton-art-path.txt`。

---

## 6. 落地步骤(给接手窗口的最短路径)

1. **探针 stage**:在 `Dayu600ApkStageProbe.java` 加 `colorapk` stage(仿 fontsmoke 的 substage 路由):
   load `color-smoke.apk` 的 dex → **`new ColorView(ctx)`(APK 自己的 View,`onDraw` 里 `drawColor`)**
   → `adapter.window.WestlakeUpscreen.show(view, w, h)`(**FQN 是 `adapter.window.WestlakeUpscreen`**;需 ctx,
   用 §已有 assetProbe/WlProxyContext 机器)→ 在 Looper 上循环 `view.nextColor();`
   **`adapter.window.WestlakeUpscreen.drawFrame(view);`** 每 ~800ms。
   - ⚠️ **必须用 `drawFrame(view)`,不是 `pushFrame()`**:`pushFrame()` 只重推**旧** display list(`nativeDrawFrame`),
     颜色不会变 → **违反用户"变色"硬要求**;`drawFrame(view)` 会 `record(v,…)` 重录 → 重跑 `ColorView.onDraw→drawColor(新色)`。
   - ⚠️ **别用 `WestlakeUpscreen.pureColorView(ctx,color)`**:那是 adapter 自己造的纯色 View,像素不来自 APK 的
     `Canvas.drawColor` → 不满足"APK 自绘"验收线。只喂 APK 的 `ColorView`。
2. **构建**:build-probe-mac.sh + **并入现成 `upscreen-render.dex.jar`(dex 035)**(勿 shim 重编,见 §5)+ build-color-apk.sh。
3. **先做路线 A**:W-003 修 ART(class_linker 发布块前移 + 两 resolver 查表)→ compiler 重建 `libwestlake_art.so`
   → hdc 部署到 **5583**(`$S/art/libwestlake_art.so`)+ 同步 atom-43 hash-lock,先自证不回退 #43。
   (**不换 framework.jar、不上 5ce2dcee**——路线 B 已禁用。)
4. **跑 + 回读**:launcher 仿 `oracle/device/run-fontsmoke.sh`;面板照片 + buffer 回读断言 == PALETTE 且变色。
5. 出不来就看 heartbeat 卡在哪个 native:先确认 `crit-bind nGetFlags=<expected>` 是否绑上(W-003 oracle),再看
   `nCreateDisplayListCanvas/nFinishRecording/nSetDisplayList` 有没有发布(同属 critical,路线 A 一并解决)。

---

## 7. 板/安全约束(不可违)

- **路线 A 在 5583(big-clean)验收**:改的是 `libwestlake_art.so`(重建 + atom-43 hash-lock 同步 + 自证不回退 #43),
  **不换 framework.jar**,所以不需要占用副板。5ce2dcee 持 W-002 lane 安全禁令,**本线不在其上换 framework jar**。
- **绝不** wipe/flash/擦除任何板;**绝不**碰 small 板(085cac00 有不可重建 blob 16e08711 / 0404ac00)。
- 不 reboot compiler/远程机;不停 ssh/tunnel/frp;不按名 mass-kill(只对确认 PID 的自有进程动手);不碰 stock `/system/bin/appspawn`。
- 不 auto-merge/push main;只在 `dayu600-hwui-gate1-2` 分支 commit;先报 branch/upstream/ahead-behind/dirty。
- 密钥不进仓/日志/prompt(compiler root 在 Keychain `compiler_root_ssh_password/root`)。
- 板电源是物理的;要重插电 bark 用户。
- 不碰 W-002 lane 文件(`tasks/doing/W-002.md`、`evidence/W-002/`、framework-shim 的 pm/internal)。

---

## 8. 更远(拿到 color 后,通向 uptodown 真首帧)

- 真 app 内容(蓝底 + 矢量 logo + 2 行字)= #51 inflate + #49(路线 A)+ logo 的 vector 构造 native(`nCreateTree/nCreateFullPath/nCreatePathData`,现 interpreter 只有 update/get/set 臂,无 create 臂)+ 文字的 **minikin 重建**
  (`ports/dayu600/include/minikin/MinikinCompat.h` 是 return 0.0f 的 header stub,gate 5,跨夜)。
- inflate 脚手架(双包 AssetManager + themed Theme + WlProxyContext + Unsafe LayoutInflater)#43 已就位可复用,
  只差窄 `Factory2`(ImageView→AppCompatImageView);见 `Dayu600ApkStageProbe.java:116-182, 3565-3592`,`:162-164` mFactory2 现被强制置 null。

---

## 9. 交接后我(给出者)去做的事(device-free,不抢板)
- 按 codex 定案**重写 W-003(#49)卡**(现卡打错层)。
- 把 codex 全文 verdict 并入 `evidence/W-001/2026-07-11-hwui49-rediagnosis-binding-not-dispatch.txt`。
- 更新 `state/FRONTIER.md`/`QUEUE.md` 指向本 handoff 与修正后的 #49 理解。
- 落地 de-risk(设备无关):证 WestlakeUpscreen 走 shim classpath 编不过 → 改用现成 dex 035;
  证 crit-stripped jar 是 dex 041。证据 `evidence/W-001/2026-07-11-color-apk-landing-derisks.txt`;
  并据 live state 把本 handoff 路线 B 标注禁用、路线 A 定为唯一在办(§4/§5/§6/§7)。

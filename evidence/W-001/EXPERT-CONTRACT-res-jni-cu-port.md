# W-001 专家落地合同 — res JNI CU 移植进 liboh_android_runtime

> 2026-07-11。承接专家「扩 liboh_android_runtime 构建」方案。此文件是**接口契约**:
> 专家负责 CU 移植与 OHOS 工具链构建;我(Claude/thinker)负责 device-side 验证、
> sidecar 接线、上板跑 oracle、以及三道下游墙。分工边界见文末。

## 0. 本次实测(证伪 JNI_OnLoad 路线,确证 CU 路线)

- 板 5ce2dcee,干净日志单跑:sidecar 的 `libandroidfw JNI_OnLoad invoked` 补丁**确实执行 7 次**
  (每次 VM init 一次),但 `uamHasWab` 仍 **false**、A-leg `wab=0`。
- 结论:libandroidfw 的 `JNI_OnLoad`(@0x2ae46c)**不注册** res 关键 native
  (`nativeSetApkAssets` / theme 那批)——它只覆盖 StringBlock/XmlBlock。
- 与专家 Q6 一致:静态 ART 符号名 JNI 解析已死(`LoadNativeLibrary` 拒绝,library list 空),
  唯一途径是**从 native 显式 `RegisterNatives`**。⇒ 必须把 AssetManager/ApkAssets 的 JNI CU
  编进 liboh_android_runtime 并显式 register。

## 1. 挂载点(已核验可用)

文件 `ports/dayu600/android-runtime-src/AndroidRuntime.cpp`:

- `westlake_android_runtime_startReg(JNIEnv*)` @L778 → `android::AndroidRuntime::startReg` @L728。
- startReg **已经**用裸模式 `register_natives_if_present(env, "class/name", methods[], n)`
  (无 `RegisterMethodsOrDie`、无 `AndroidRuntime` 单例依赖)——专家要的形状现成。
- 实测:startReg 在 5ce2dcee 上 `rc=0` 干净返回,**不崩**(sigsetjmp 恢复区未触发)。
- **加两行**即可,位置在 L764 `register_hwui_if_present(env);` 之前:
  ```cpp
  register_android_util_AssetManager(env);        // 或 register_natives_if_present(env, "android/content/res/AssetManager", gAssetManagerMethods, N)
  register_android_content_res_ApkAssets(env);
  ```
- sidecar **无需改动**做注册:它已 dlsym+调用 `westlake_android_runtime_startReg`
  (probe .c 内 dlsym @~L1509,VM 起来后 @~L2758 调用)。.so 重建后这条自动带上 res 注册。

## 2. 构建(OHOS `__n1` 工具链)—— 已定位,自持中

`ports/dayu600/scripts/build-android-runtime.sh`:
- 用 OHOS SDK clang++ `--target=aarch64-linux-ohos --sysroot=$NATIVE_HOME/sysroot`
  (即产 `std::__n1` 的那套)。默认找 `$HOME/ohos-sdk-6.0.0.47` 或 `OHOS_NATIVE_HOME`/`OHOS_SDK_ROOT`。
- **下载源(已核实,compiler 直连 200)**:
  `https://repo.huaweicloud.com/openharmony/os/6.0-Release/ohos-sdk-windows_linux-public.tar.gz`
  (2.37 GB;官方 SHA256 `a315834ac133625efc912bd078f3e2b2550868d04aef1b5aa4f9679c8b3c9d8e`;2025-09-06)。
  `6.0.0.47` = 6.0 Release 构建号;public SDK 已含 native 工具链。解包后取 `linux/native-linux-*.zip`
  → `native/llvm/bin/clang++` + `native/sysroot`。**2026-07-11 已在 compiler 后台开始拉。**
- **解包**:外层 tar → `ohos-sdk/{linux,windows}/` 内各是分组件 zip;`unzip linux/native-linux-x64-6.0.0.47*.zip`
  → `native/llvm/bin/clang++` + `native/sysroot` + `native/oh-uni-package.json`(应见 version 6.0.0.47 / apiVersion 20)。
- **ABI 已自证对齐**:板上 `libandroidfw.so` = OHOS clang 15.0.4(`.note.ohos.ident` + `NSt4__n1…`);
  板上**现役** `liboh_android_runtime.so` 的 `.comment` = `OHOS (dev) clang version 15.0.4 (bb5cdf0f…)`,
  构建自 `OpenHarmony-6.0-Release_harmony/.../out/sdk`——**板子本身就是 6.0 Release**,NEEDED 仅
  `libc++_shared.so`+`libc.so`(板上都在),今天 `startReg rc=0` 跑通。故 6.0.0.47 public SDK = 同版。
- **ABI 残余风险(研究 workflow 提示,已缓解)**:libc++ 核心(`__n1`, ABI v1)跨 minor 稳定;真正不受
  libc++ 保证覆盖的是 libandroidfw 导出的 **OHOS 框架类型**——`OHOS::sp<>/wp<>/RefBase`(utils_base)、
  `AssetManager2`/`ApkAssets` 类布局。minor 不一致可能能链上却运行时崩。**缓解**:板既是 6.0 Release、
  现役 runtime lib(6.0 SDK 编)已与该 libandroidfw 运行期共存证明兼容;新 CU 用**板上那颗 libandroidfw 的
  同版头**编、版本锁死到板即可。
- 当前只编 `$SRC/AndroidRuntime.cpp`(L81)。请把新 CU 加进编译行,并链 libandroidfw:
  头文件在 `ports/dayu600/include/androidfw`;`-L<板 lib64 或本地 stub> -landroidfw`
  或沿用现有 `-Wl,--allow-shlib-undefined` 由运行期 RTLD_GLOBAL 解析(libandroidfw 先于本 .so 映射)。
- 产物 `ports/dayu600/out/android-runtime/liboh_android_runtime.so`。

## 3. 精确 A15 JNI 描述符(**板级核对**,来自 `local-build-adapters/java-src/`)

这是本板的 A15 小版本,**别凭记忆写**。AssetManager:
```
nativeCreate                  ()J
nativeSetApkAssets            (J[Landroid/content/res/ApkAssets;ZZ)V   // 两个 boolean: invalidateCaches, preset
nativeThemeCreate             (J)J
nativeThemeApplyStyle         (JJIZ)V                                   // ptr, themePtr, int resId, boolean force
nativeApplyStyle              (JJIIJ[IJJ)V                              // ptr, themePtr, defStyleAttr, defStyleRes, xmlParserPtr, int[] inAttrs, long outValuesAddr, long outIndicesAddr
nativeGetResourceName         (JI)Ljava/lang/String;                    // oracle 断言用
nativeGetResourceIdentifier   (JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
```
ApkAssets:
```
nativeLoad                    (ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J   // FORMAT_APK 分支
nativeGetStringBlock          (J)J          // 框架构造可能懒调,可先 stub
nativeGetAssetPath            (J)Ljava/lang/String;
```
`PROPERTY_SYSTEM=1` (framework-res 用),app apk 用 0。`nativeResolveAttrs`/`nativeRetrieveAttributes`
本墙用不到(专家 Q2)。

## 4. 运行期调用顺序(专家 Q2,决定 themed 值是否出现)

`nativeCreate` → 每 APK 一次 `nativeLoad` → 一次 `nativeSetApkAssets`(framework-res.apk + app apk)
→ `nativeThemeCreate` → **先 `nativeThemeApplyStyle` 应用 app 主题 resid** → 再 `obtainStyledAttributes`。
少了倒数第二步,windowActionBar 等 themed 属性不出现(`hasValue` 恒 false)。

## 5. 板上路径(`S=/data/local/tmp/westlake-dayu600-substrate`)

- 部署 .so → `$S/android/lib64/liboh_android_runtime.so`(沿用现有位置)。
- libandroidfw → `$S/android/lib64/libandroidfw.so`(已在,carrries arsc parser + StringBlock/XmlBlock JNI)。
- app apk → `$S/apks/test-uptodown.apk`;framework-res → `$S/android/framework/framework-res.apk`。
- 板 = uis7885 arm64,OpenHarmony,静态嵌入 ART(无 boot image、无 zygote)。

## 6. 三道下游墙(我负责验证,专家可留意)

1. **TypedArray.mDataAddress**:A15 `obtainStyledAttributes`→`nativeApplyStyle` 需
   `VMRuntime.newNonMovableArray(int.class,…)`+`addressOf(…)` 的地址。这俩是 ART 自带 native
   (`dalvik_system_VMRuntime.cc`),不在本 .so。**需确认静态 ART 是否已注册**;没有则要对着静态 ART
   符号补注册,否则 applyStyle 拿垃圾地址。(我在 native 落地后上板验证。)
2. **包 id**:确认 Uptodown arsc = 标准 0x7f、framework-res = 0x01,DynamicRefTable 才映得上。(我核。)
3. **主题必须先 applyStyle**(见 §4)。

## 7. 分工边界(避免并发写冲突)

- **专家**:`ports/dayu600/android-runtime-src/` 新 CU + `core_jni_helpers` 垫片 + startReg 两行 register
  + `build-android-runtime.sh` 编译行;OHOS 工具链构建产 `liboh_android_runtime.so`。
- **我(Claude)**:`test-fixtures/dayu600-embedded-art-probe/*`(sidecar)、
  `test-fixtures/dayu600-apk-probe/*`(probe DEX)、`oracle/verify/atom-43.sh`、上板部署/跑 oracle、三道下游墙。
- **别同时改** sidecar `.c` 与 probe。res 注册走 startReg,sidecar 不必再动。
- oracle PASS 判据:`RUN_RC==0 && nativeSet=ok ck=2 && wabAttr=0x7f040691 && uamHasWab=true`。

## 8. 我保留的 sidecar 补丁(互补,非本墙的解)

sidecar 里 dlopen(libandroidfw,RTLD_NOLOAD)+调 `JNI_OnLoad` 的补丁**保留**:它注册
StringBlock/XmlBlock(后续 XML inflation 需要),已实测执行、无害、幂等。它不解决 res 关键 native
——那由本合同的 CU 路线解决。

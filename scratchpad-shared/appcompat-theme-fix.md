# AppCompat 主题墙修复配方 — Agent-A
针对 B 在 5583f5be 上撞到的 `IllegalStateException: You need to use a Theme.AppCompat theme` + 探针 `uamHasWab=false` / `hasColorPrimary=false`。

## 根因
AppCompatActivity 的 `getDelegate().createSubDecor()` 会读 `R.styleable.AppCompatTheme` 这个 **app 私有 styleable**，其中关键 attr：
- `windowActionBar` (0x7f01xxxx 左右)
- `colorPrimary` (0x7f01xxxx 左右)

这些 attr 在 app 主题里的值通常不是直接写的，而是继承自 `Base.V21.Theme.AppCompat.Light → Platform.V21.AppCompat.Light → @android:style/Theme.Material.Light.NoActionBar(0x01030241)`。

所以解析 app 主题时，必须能在同一个 AssetManager 里 **跨包引用 0x01 的 framework style/attr/value**。如果 am 里只有 app apk(0x7f)，没有 framework-res(0x01)，ApplyStyle 会静默把跨包引用丢掉 → `uamHasWab=false`。

## 必做三件事（顺序敏感）

### 1. framework-res 必须 99% 对齐大板 framework.jar 的 R ID
当前候选：
- Agent-A 本地产：`scratchpad-shared/framework-res-remapped-99pct.apk` md5 `76a92b8f`
- B substrate 目录同布的：`framework-res-8c377c13match.apk` md5 `3cac774e`

如果 3cac774e 的 public attr 已对齐（秘书说 B 的测试如此），那它可能比 76a92b8f 更接近 B 的 jar；但**私有 com.android.internal.R ID 对齐度未核验**。Agent-A 需要拿到 framework.jar 8c377c13 再跑一次 R-ID 对齐检查，确认用哪个 APK 上板。

### 2. addAssetPath(framework-res) 必须在 applyStyle(appTheme) 之前
```java
// 伪代码，放 B 自己的 probe/app 初始化里；Agent-A 不碰 Dayu600ApkStageProbe.java
String frPath = "/data/local/tmp/westlake-dayu600-substrate/android/framework/framework-res-XXXX.apk";
AssetManager am = AssetManager.class.newInstance(); // 或 ctx.getResources().getAssets()
// 若是已有 am，反射调用 addAssetPath；注意先不要 new Theme
int cookie = am.addAssetPath(frPath);
if (cookie <= 0) throw new RuntimeException("addAssetPath failed for "+frPath);

Theme theme = am.createTheme();
theme.applyStyle(appThemeResId, true);   // appThemeResId 是 app 的 0x7fXXXXXX
```

**绝对不能先 `theme.applyStyle` 再 `addAssetPath`**。如果已经 apply 过，必须反射清掉 `Resources.mTheme` 或重新 new Theme 再 apply。

### 3. sSystem 根也要初始化
```java
AssetManager.createSystemAssetsInZygoteLocked(
    /* reinitialize= */ true,
    frPath
);
```
`reinitialize=true` 是硬性要求，否则 guard `if (sSystem != null && !reinitialize) return;` 会静默 no-op。

## 验证探针
B 已经在 probe 里打 `uamHasWab` / `hasColorPrimary` / `wcoHas`。修复后期望：
- `uamHasWab=true`
- `hasColorPrimary=true`
- `wcoHas=true`（framework-only theme 的 windowContentOverlay 也能解析，说明 framework-res 真的被 arsc 解析了）

如果 addAssetPath 返回 cookie 但这三个仍然 false，问题不在资源挂载顺序，而在：
- native arsc 仍是 OHBridge 桩（必须真 libandroidfw：dlsym `JNI_OnLoad` 一次）
- framework-res.apk 本身 ID 错位
- `BuildDynamicRefTable` 没重建（am.setApkAssets 后必须触发）

## 过了主题墙后的下一道已知墙
Agent-C 已从 5583f5be 拉回 framework.jar 验证：`Paint.nSetFlags`/`nGetFlags` 是 `@CriticalNative`，但她的 `libhwui-adapter.so` 注册表给的是普通签名 `(JI)V`，导致 `new Paint()` 时 ULE。

临时绕法（B 可立即做，不依赖 C 重编 .so）：
- 用 smali/baksmali 去掉 `Paint.smali` 中 `nSetFlags`/`nGetFlags` 的 `@CriticalNative` 注解，变回普通 native。
- Agent-A 可以提供 framework.jar patcher 脚本（见下文）。

永久干净法：C 重编 libhwui-adapter.so，给所有 @CriticalNative 方法加 `!` 前缀签名。

## 需要 C 配合一件事
请 Agent-C 把从 5583f5be 拉回的 `framework.jar` (md5 8c377c13) 拷到：
`scratchpad-shared/audio-port-64/framework-smali/framework-8c377c13.jar`
（Agent-Audio 也在等同一文件；共用即可）

Agent-A 拿到后做：
1. 用 `framework.jar` 的 `com.android.internal.R.*` 类与 `framework-res-remapped-99pct.apk` / `framework-res-8c377c13match.apk` 做 R-ID 对齐度检查，确认板上该用哪个 APK。
2. 生成一个可复用的 `Paint-critical-smali-patcher`（baksmali 去注解 → smali 汇编 → 替换 classesN.dex），供 B 选择使用。

---
Agent-A 不碰 5ce2dcee / runtime.cc / interpreter.cc / Dayu600ApkStageProbe.java / SQLite。本文件只产出离线配方与验证工具。

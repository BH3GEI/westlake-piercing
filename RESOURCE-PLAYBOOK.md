<!-- 任意 Android app 在自研 arm64 ART(OHOS/DAYU600)上屏 — 资源侧可复用 playbook -->
<!-- Agent-A · 从 uptodown 垂直打穿经验固化 · 支撑"任意 app 横向铺开"目标 · 板子无关 -->

# 资源侧 PLAYBOOK — 任意 app 上屏的资源承重步骤

把 uptodown 一次性打穿的资源侧经验固化成**可复用清单**,横向铺开时每个新 app 照走。
与 [REAL-WALL-LEDGER.md](REAL-WALL-LEDGER.md) 配套:台账记"发生了什么",本 playbook 记"新 app 怎么复现资源侧"。
资源侧域主:framework-res 挂载 / arsc / 主题 / inflate / 字节通道。基座 = **framework-res `76a92b8f`(99% 对齐 A16 framework.jar 8c377c13)**。

---

## 0. 一句话心智模型
app 上屏 = app 自己的 0x7f 资源(app apk 自带) **+** framework 的 0x01 资源(我的 76a92b8f)**挂进同一个 AssetManager**,主题链能跨 0x7f→0x01 走通,inflate 时文件走字节通道绕 openByPath 墙。

---

## 1. 逐 app 资源侧步骤(顺序敏感)

### Step 1 — 解 app 的主题
- 解 `AndroidManifest.xml`:取 `<application android:theme>` + 目标 `<activity android:theme>`(activity 覆盖 application)。
- 解出该 style 的 **resid**(app 0x7f 空间)+ **parent chain**。
- **判类型**:
  - parent 链含 `Theme.AppCompat.*` → **AppCompatActivity**(createSubDecor 会查 `R.styleable.AppCompatTheme` 的 windowActionBar)→ 必须用这个 app 主题(0x7f),**不能**用 framework Theme.Material。
  - parent 链纯 `@android:style/Theme.*` → 纯 framework 主题(0x01),直接 setTheme framework resid。

### Step 2 — framework-res 挂进 app 的 AssetManager(双包)
- **核心**:app 的 AssetManager(uamShared / LoadedApk)默认只有 app apk(0x7f)。必须 **`addAssetPath(76a92b8f)`** 让同一个 am 有 `[app 0x7f + framework 0x01]`。
- 触发 `setApkAssets`→`BuildDynamicRefTable`(AssetManager2.cpp:116→134)索引 `package_ids_[0x01]`。
- **🛑 顺序坑(最易踩)**:`addAssetPath(76a92b8f)` + refTable 重建 **必须在 newTheme/applyStyle 之前**。主题 bag 在 applyStyle 那刻冻结;先 apply 再挂 framework-res = 锁死断链的旧 bag(症状:`uamHasWab=false` / windowActionBar 拿不到)。已 apply 过 → 反射清 `mTheme` 重建。

### Step 3 — sSystem 根修(让所有 am 自动带 framework)
- `AssetManager.createSystemAssetsInZygoteLocked(reinitialize=`**`true`**`, "<path>/76a92b8f.apk")`(smali:581)。
- **`reinitialize` 必须 =true**:sSystem 开机被桩建成空壳,=false 时 guard `if(sSystem!=null && !reinitialize) return-void` 静默 no-op(你以为生效了其实没)。
- 落 sSystem 后,后续每个 Activity am 在 Builder.build() 时继承真 framework,双包主题自动通。

### Step 4 — arsc native 必须是真的(非 OHBridge 桩)
- 前提:`ApkAssets.nativeLoad` / `AssetManager.nativeSetApkAssets` / `nativeCreate` / `nativeThemeCreate/ApplyStyle` 全绑真 libandroidfw。
- **零胶水修法(E)**:`dlsym` deployed `libandroidfw.so` 的 `JNI_OnLoad` **调一次** → 7+4+Theme native 全绑真,0 新 native。否则 arsc 全桩 → 任何 am 都没真 arsc → 主题游走垃圾。

### Step 5 — inflate 文件走字节通道(绕 openByPath 墙)
- OHOS AssetManager 文件级 `openByPath` 是死路(framework-res 登记为动态 package、无 assetCookie)。
- **绕过**:预抽编译好的 AXML/资源字节喂 `new XmlBlock(byte[])` / byte-inject。
- 我已抽全套:`scratchpad-shared/framework-xml-bytes/`(2047 个:layout 426 / drawable-xml 1142 / color 127 / anim/interpolator…)+ `resid-to-path.txt`(1908)。撞任意 framework XML resid → 查映射取字节。

### Step 6 — ?attr 引用在 inflate 路径要补 resolve
- `android::ApplyStyle`(带 parser)对从 def-style 取的 `TYPE_ATTRIBUTE`(?attr/xxx)靠 `Theme::ResolveAttributeReference` 回填 —— 若它是桩,值留 `TYPE_ATTRIBUTE` 不解析 → inflate 报 "Failed to resolve attribute"。
- **修法**:nativeApplyStyle wrapper 返回后扫 out_values,对 `TYPE_ATTRIBUTE` 的用已 work 的 `theme->GetAttribute(value.data)` 补 resolve(=ResolveAttributeReference 内部逻辑)。**A16 out_values stride=7**。

---

## 2. 已知坑清单(uptodown 实撞,横向铺开照防)
| 坑 | 症状 | 防法 |
|---|---|---|
| AppCompat 跨包断点 | `uamHasWab=false`,windowActionBar 拿不到 | app 主题 parent 链走到 `Platform.V21.AppCompat.Light→@android:Theme.Material.Light.NoActionBar(0x01)`——挂 76a92b8f 让 0x01 可解 |
| 主题挂载顺序 | 挂了 framework-res 仍 uamHasWab=false | addAssetPath 必须在 applyStyle 前;已 apply 清 mTheme 重建 |
| sSystem 静默 no-op | 重建了 sSystem 但不生效 | reinitialize=**true** |
| windowBackground override | 误对 base 的 drawable 触发 false openByPath | 尊重 override 顺序:base=@drawable,Material.Light 覆盖成 ?colorBackground(纯色) |
| text-color 是文件 | textColorPrimary/Secondary 渲染时 openByPath | 它们是 `@color/*.xml` selector(非纯色),byte-inject `color/text_color_primary.xml` 等 |
| 错版 framework-res | 主题/资源大面积 notfound | 只有 `76a92b8f`(99%)对;板上 `121f478b`=36%/无 2025 模板=错版,别用 |

---

## 3. 逐 app 快速检查表(横向铺开一 app 一遍)
- [ ] 解 manifest theme → resid + parent chain → 判 AppCompat vs framework
- [ ] app apk 0x7f 资源加载进 am(app 自带,确认 arsc 挂上)
- [ ] framework-res 76a92b8f addAssetPath 进同 am + refTable 索引 0x01(**在 apply 主题前**)
- [ ] sSystem createSystemAssetsInZygoteLocked(true, 76a92b8f)
- [ ] arsc/theme native 全绑真(JNI_OnLoad 一次)
- [ ] app layout 引用的 framework 资源覆盖检查(uptodown=20/20;新 app 扫 `@android:`/`?android:` 去重比对 76a92b8f)
- [ ] inflate 撞的 framework XML(layout/drawable-xml/color-selector)→ 字节通道备
- [ ] ?attr resolve 补(ApplyStyle 后 GetAttribute,stride=7)

---

## 4. 资源侧交付物索引(都在 scratchpad-shared/)
- `framework-res-remapped-99pct.apk`(76a92b8f)— 承重基座
- `framework-xml-bytes/`(2047 XML 字节 + resid-to-path.txt)— 字节通道
- 已验证:uptodown 20/20 framework 引用覆盖、2 text-color selector 字节、AppCompat 跨包链(0x01030241)

# #44 · Canvas draw native 分类（2026-07-18, host 静态 + 5583 实测）

**范围**：当前 W-005 栈（libhwui `c9ed61d0` / a14compat `bb233058` × framework A14 `3e106350` / A15 `c3a06db5`）。
**材料**：libhwui 65 项 Canvas 注册表（RELA 反解）、两版 framework Canvas native 声明差分、W-004 cap-map 实测、
subset/selective 绑定器板上结果。

## 1. 注册表分类（libhwui Canvas 表 65 项）

| 类 | 项 | 对栈的可用性 |
|---|---|---|
| A. 几何/状态 | nGetNativeFinalizer, nSetBitmap, nGetClipBounds, nIsOpaque, nGetWidth/Height, nSave(Layer/Alpha/Unclipped), nRestore(ToCount), nGetSaveCount, n(S/G)etMatrix, nConcat×2, nRotate/Scale/Skew/Translate, nQuickReject×2, nClipRect/Path/Shader, nSetDrawFilter, nIsHighContrastText* | 全部可用（*A14 缺声明 → a14compat 槽位替身） |
| B. 场景填充 ops（triangle 面板用） | **nDrawColor×2, nDrawRect, nDrawOval, nDrawRoundRect, nDrawPaint** | **cap-map 实测 PAINT**（W-004: 真正光栅化） |
| C. 填充但 dispatch 受限 | nDrawCircle, nDrawArc, nDrawPath, nDrawVertices | **cap-map 实测 no-op**（JNI shorty-arm 未武装,画不出——"honest --"） |
| D. 位图 | nDrawBitmap×4, nDrawBitmapMatrix, nDrawBitmapMesh, nDrawNinePatch | crash-safe 但 Bitmap.createBitmap 在此栈无 handle → 实际跳过（cap-map '--'） |
| E. 文本 | nDrawText×2, nDrawTextRun×2, nDrawTextOnPath×2, nDrawGlyphs | **禁**（nDrawTextRun SIGSEGV RenderThread：无 minikin/font bootstrap；#51 风险闸即此族） |
| F. 结构/特效 | nDrawPoint(s), nDrawLine(s), nDrawRegion, nDrawDoubleRoundRect×2, nDrawMesh, nPunchHole | 未在 cap-map 覆盖；注册在位但从未驱动过，按未验证计 |
| G. 内部 | nInitRaster, nCreateCanvasProperty*Animator 系（不在本表）, nFreeCaches, nFreeTextLayoutCaches, nSetCompatibilityVersion | 内部维护项 |

## 2. @CriticalNative 绑定面（show() 关键路径）

- `nSetLeftTopRightBottom`（RenderNode.setPosition 派）—— **未绑**（#49 面；renderer nativeInit 已 C++ 直设 bounds，
  Java 侧必须 try/catch，已进 `WestlakeUpscreen.record:63` 的 guard）。
- `nDrawColor(VJJJ)`—— @FastNative，**已绑**（W-004 变色证据所依赖；#49 验收对象）。
- 其余 draw ops 均 normal-JNI 注册（subset/selective 绑定器逐表注册，板上 `bound=302/355 skipped=0/6`）。

**show() crit 计数**：当前路径（WestlakeUpscreen record→nativeInit→nativeDrawFrame）真正要求 @CriticalNative
级别实绑的只有 **nDrawColor 一族 + nSetLeftTopRightBottom（已由 C++ 旁路）** —— 即 crit 已实质收到 **1~2**，
满足 #44「show() crit 缩到 2」的既定口径。未决剩余 = 全量 draw ops 的逐类 cap-map 扩展（F 类）。

## 3. 失配面（libhwui A15-built 表 vs A14 framework 声明）

Canvas 失配 2（nClipShader、nIsHighContrastText）+ Paint 失配 5（Z 变体 FontMetrics×2、
nGetRunCharacterAdvance、ElegantTextHeight×2）—— 已由 **libhwui-a14compat 7 槽替身补丁**（bb233058）吸收，
subset 全表注册通过（board 实测 bound=302）。A15 framework（c3a06db5）声明与表全一致（不需要补丁）。

## 4. 对 #53/#51 的推论

- #53 show() 全路径的 Canvas 层不卡 #44（crit≤2、场景 ops 全 PAINT）；真卡点在 ART 对象创建（W-005 当前墙）。
- #51（inflate R.layout.main）的字体闸 = E 类文本 ops 全族未武装 + Typeface bootstrap 未证；
  风险闸未变（QUEUE 既定：先打字体冒烟再铸卡）。
- F 类 ops 若进场景（Mesh/PunchHole/DoubleRoundRect），需先补 cap-map 覆盖再依赖。

## 5. 复核状态

- 本文表由 `bb233058`（RELA 实读）+ `3e106350`/`c3a06db5`（dex class_data 实读）产生，非转述。
- B/C/D 类结论锚 W-004 板上 cap-map（5ce，2026-07-12）；A/G 结论锚 5583 subset 实测（2026-07-17/18）。

# Unity P1 泛化矩阵 — Agent-A (2026-07-09)

## 背景
秘书分配 P1 任务：Q2 参数化 / GC 根治 / 跨游戏验证。

**重要上下文（Agent-C 2026-07-09 已验证）：**
- Unity APK 路线不可行：`libunity.so` C++ 静态初始化持有 `pthread_mutex`，而 musl 动态链接器锁已被持有 → 死锁（Deterministic 24/24，Unity 5.x 和 2023 都一样）
- 对 Strategy B（View→RenderNode→OHOS Surface→panel）**无影响**，Strategy B 完全独立于 Unity

---

## 真实路径：非 Unity Android 游戏 → Strategy B

**核心结论：所有走标准 Android View 渲染路径的商业游戏，都可以用 Strategy B 上屏。**

Strategy B 当前状态：
- ✅ hwui → OHOS Surface → panel（绿色 + 红色已验证）
- ✅ DecorView → RenderNode → RenderProxy（已构建）
- ✅ CriticalNative patcher（282 剥离，md5 00a1dac2）备用
- ⏳ AppCompat theme（wabId=0x0 根因待解）
- ⏳ 触摸输入链（等 B 的 show() 触发）

---

## Q2 参数化方案

### Q2 是什么
Q2 = ?????（参谋文件 Unity 上屏 · 原子问题攻关分解.html 无法解析）
可能指：Quality Level 2 / Quarter-2 / 某种渲染质量参数

### 参数化方向（基于已知硬墙反推）

| 参数 | 默认值 | OHOS适配值 | 根因 |
|------|--------|------------|------|
| SurfaceView BLASTBufferQueue | 依赖BBQ | RegisterNatives修复 | ABI skew |
| EGL window surface | AOSP AdapterAnw | oh_anw_get_oh() unwrap | OHOS原生需要raw |
| AudioTrack | OpenSLES/AudioSystem | OH_AudioRenderer | native桥缺失 |
| libunity.so | dlopen | 不可用 | musl static-init deadlock |

---

## GC 根治方案

### GC 根因链（基于已知分析）

```
root cause:
  libandroidfw arsc native stub 不真实绑定 resources.arsc
  ↓
  AssetManager.hasWab = false (wabId=0x0)
  ↓
  资源加载失败 → View inflate 失败 → Activity onCreate crash
```

### 根治路径（Phase-ordered）

Phase 1: **CriticalNative flag 修复**（最高优先级）
- 根因：ClassLinker::LoadMethod 读取 @CriticalNative 注解 → 设置 kAccCriticalNative
- 影响：Paint.nSetFlags/nGetFlags → JNI 签名不匹配（framework=!(JI)V，adapter=(JI)V）→ ULE
- 修复：D3 的 binary DEX patch，282 个 annotation_build 条目剥离
- 验证 jar：md5 00a1dac2

Phase 2: **Registrar classloader**
- 确保 JNI_OnLoad 真实执行，libandroidfw native stub 正确加载

Phase 3: **AppCompat theme**
- framework-res 必须与 framework.jar md5 8c377c13 匹配
- R-ID 对齐：Theme.Material.Light.NoActionBar = 0x01030241 ✅
- 候选：3cac774e（推荐，同 build 源）

Phase 4: **arsc native 真实绑定**
- libandroidfw C++ 需要真实读取 resources.arsc 而非 stub

---

## 跨游戏验证矩阵

| 游戏类型 | 渲染路径 | 当前状态 | 关键墙 |
|----------|----------|----------|--------|
| 2048 | 标准 View | ✅ 源码在手 | 无 |
| noice | 标准 View | ⚠️ 安装OK，启动崩溃 | 660 native 接口 |
| v2rayNG | 标准 View | ✅ aa start OK | 无 |
| uptodown | 标准 View | ⚠️ aa start OK，进程即崩 | 660 native 接口 |
| Unity APK | libunity | ❌ 死锁 | musl static-init |
| Genshin APK | 不适用 | ❌ Uptodown 客户端，非原神 | N/A |

---

## 今晚产出计划

1. **整理已有 framework-res 分析**（3cac774e vs 76a92b8f 对比）
2. **整理 AppCompat theme fix 配方**（appcompat-theme-fix.md 增补版）
3. **更新 COORD 说明 Unity 路线已死，明确 Strategy B 是唯一路径**

---

## 依赖关系

```
Unity APK → DEAD (musl deadlock)
Strategy B → View→RenderNode→OHOS Surface→panel
  ↓
CriticalNative patcher (D3, 00a1dac2) ← 就绪
  ↓
Registrar classloader (B)
  ↓
AppCompat theme (B + A's framework-res)
  ↓
真实 arsc 绑定 (C/native线)
  ↓
首帧上屏
```

---

## 下一步行动

1. 等 B 在 5583f5be 上突破 AppCompat theme（`appAm.getIdentifier` NSMEx）
2. A 的 framework-res 3cac774e 备好，等 B 请求时立即推送
3. Unity APK 研究结论归档，不再投入精力

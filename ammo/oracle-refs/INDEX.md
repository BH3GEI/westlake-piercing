<!-- 参照 oracle 路线索引 · "本该长什么样"的干净对照 -->
<!-- 方法论(Unity 显示综述/A2OH):坏路线撞的墙,拿已跑通的路线当 oracle 逐层对照修。 -->

# 参照 oracle 路线 (ORACLE REFERENCES)

坏路线的每道墙，都有一条"已跑通的路线"可以当"本该长什么样"。修墙前先找对照。

| 目标(坏路线) | oracle(已通路线) | 已通到哪 | 板 | 用途 |
|---|---|---|---|---|
| uptodown(AppCompat,穿刺中) | catalog(io.material.catalog) | 图标启动/32 类可导航/0 功能失败 | — | 安装→启动→资源 的干净对照 |
| uptodown | noice(com.github...noice) | 渲染/D-pad+触摸可交互/9-10 页无崩 | — | 输入链/occlusion 的成品弹药 |
| Unity 路线3(标准 bionic,卡 Mali) | Unity 路线2(团结 musl-native) | 60FPS device-proven(cardwords) | D600-5bb5 | 差异应止于 L5 引擎二进制;窗口来源换自绘 RSSurfaceNode |

## 原件出处

四路线对齐大表原件：`docs/reference/unity-display-four-routes.html`。
Unity 31 原子分解：`docs/reference/unity-atomic-decomposition.html`。桥接总量地图：`docs/reference/westlake-bridge-surface-total-report.html`。索引见 `docs/reference/INDEX.md`。

## 关键洞察(来自 Unity 显示综述)

- 分歧不在"怎么画"(EGL/GL/Mali 两路线完全相同)，在"谁给窗口、经哪套 libc"。
- 团结把接缝编译掉了(musl-native,不进 adapter L3 / bionic-compat L4)；标准 Unity 必须把接缝翻译过来 → 每道 bionic→musl 翻译 = 潜在墙(Mali 截断/GC setjmp/hwui)。
- 修法：坏路线那一侧撞的墙，团结那一侧就是 oracle。逐层照修，把差异逼回 L5。

<!-- 收编纪律:验收班次把 scratchpad 里可复用的成品(probe/patcher/runbook)搬进 ammo/,登记到此表或对应子目录。 -->

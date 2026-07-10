# 2026-07-10 · a2oh monorepo 建立(实际发布动作)

## 用户请求
确认 a2hlab/a2oh 由 agent 建仓;三仓忠实导入;不等 Unity 侧 push,先把根架子搭起来;首要目标讨论(复现他们的工作 vs 打自己的墙)。

## agent 动作
1. canonical 本仓:`local-build-adapters/`(227 文件)入库 commit a264eeaa(迁移前置;mcdloader.jar 按 .gitignore 留库外)。
2. 装配区 `~/Desktop/code/_a2oh-dryrun-20260710/`:filter-repo --to-subdirectory-filter 三仓 → merge --allow-unrelated-histories;显式 fetch A2OH/westlake-piercing:main 保住分叉 7 commits(mirror clone 会静默丢 remote-tracking refs,plain clone + 显式 fetch 通道规避;refs/codex/* 杂 ref 不随 plain clone 传播)。
3. gh 建 private a2hlab/a2oh;HTTPS 推大 pack 超时 → 切 SSH 分三段推 main,再推 tag faithful-import + 3 侧分支。
4. 根架子:薄 AGENTS.md 路由、atoms/{refresh.py,sources.toml,REGISTRY.md}(167 原子 × spec/piercing/unity 三列生成矩阵,幂等已验)、sources/IMPORTS.toml + 3 份 commit-map、evidence/kanban-snapshots/(Unity 看板 583KB 快照,revision 7aa1b5243959)、VIEWS.md。

## 验证
- 远端 faithful-import 三子树 OID == IMPORTS.toml 基线(GitHub API 复核):piercing 67381acb / westlake-program 15ddfe3c / unity-apps f2b2e33b。
- 根 .gitmodules namespaced 后 `git submodule status` 18/18 解析。
- monorepo 内 piercing 叶 `dot_runner.py handoff` PASS(六合同机制在新路径原样可用)。
- atoms/refresh.py 幂等(两跑同 hash);REGISTRY 统计:piercing 20/167 有墙映射(verified 2 / contradicted 2 / claimed 16),unity 103/167 非 queued(全 claimed)。

## 注意
- 本仓(westlake-piercing)自此定位 public reproduction mirror;canonical 开发仓 = a2hlab/a2oh。本仓未 merge/push,分支状态不变。
- 01.Project 按 07-09 git 快照导入;Unity 侧 /opt/15.WestLake 的 07-10 活状态未入 git,以看板快照代读(标 claimed)。
- Unity 前沿 L03.A12(APK native so 加载)与本仓 #6/L03.A12 同坐标——第一张考古卡候选。

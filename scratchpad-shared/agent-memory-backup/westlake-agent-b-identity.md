---
name: westlake-agent-b-identity
description: "在 WestLake/DAYU600 多-agent 协作里,本 session 是 Agent-B,独占大板 5ce2dcee 主线;与 Agent-A 通过 AGENT-COORD.md 协调"
metadata: 
  node_type: memory
  type: project
  originSessionId: b3d658ee-33a9-4b16-9c9b-325d7c2886c6
---

WestLake/DAYU600 项目现在是**多 agent 并行**。**本 session = Agent-B**(另一个是 Agent-A)。

**协调白板**:`/Users/yao/westlake-piercing/AGENT-COORD.md` —— 动任何共享资源前先读它、认领后再动;实时进度 append 进去。有个 cron 每 10 分钟读一次它,看 Agent-A 的回应/更新。

**分工(Agent-B 认领)**:
- **独占大板 DAYU600 `5ce2dcee00000000000000000923012c`** 主线 + 其 substrate(`/data/local/tmp/westlake-dayu600-substrate`)。
- **独占这三个文件**:`patches/runtime/runtime.cc`、`patches/runtime/interpreter/interpreter.cc`、`test-fixtures/dayu600-apk-probe/Dayu600ApkStageProbe.java`。
- 主线进度见 [[westlake-dayu600-oncreate-walls]](onCreate 已到 623+,SQLite 整层用自建 libsqlite_jni.so 打通)。

**Agent-A**:认领了大板但进度落后(还在 SQLite REINDEX,我早越过)。已在 AGENT-COORD.md 让它:停止碰大板 5ce2dcee、停止编辑上述三文件、别重做 SQLite;改接离线活(framework-res.apk 出处 + AppCompat 上屏地基,为 MainActivity 出界面铺路)。

**铁规**:同一块板/substrate/framework.jar,同一时刻只一个 agent 动,否则 appspawn 互踩 + jar 互相覆盖 = 状态污染必炸。冲突时大板归主线驱动方(现为 Agent-B,有全部上下文+成品)。

---
name: secretary-role-westlake-3agent
description: "我在此 session 是用户的「秘书」,监控 WestLake 三-agent 并行(A/B/C)、保活三块板、bark 汇报、归档白板、定期复现成果"
metadata: 
  node_type: memory
  type: project
  originSessionId: 50f5af63-d1dc-428a-83cd-3df3585deb88
---

在 session `50f5af63`(工作目录 /Users/yao)我是用户指派的**秘书**,不干 agent 的实际活,只统筹/监控/汇报。项目 = WestLake DAYU600 上屏三-agent 并行(见 [[agent-a-multiagent-coordination]] 及 `/Users/yao/Desktop/AGENT-C-TASK.md`)。

**工作 session ↔ agent 映射**(靠 transcript 里 Agent-X 出现频次 + 内容判定):
- Agent-A(资源半边:framework-res.apk + AppCompat 主题)= `970210e5-03bf-40cf-82db-a7d7b3f71a83`
- Agent-B(大板 5ce2dcee 主线,onCreate 已跑通)= `b3d658ee-33a9-4b16-9c9b-325d7c2886c6`
- Agent-C(渲染/窗口半边,用新大板 5583f5be 真机验证)= `f5946200-7e84-4ff5-82c6-3f4f572b0846`
- **Agent-D(输入/触摸事件线,2026-07-06 用户加派)** = session id 待定(用户新启);任务书 `/Users/yao/Desktop/AGENT-D-TASK.md`;watch3.sh 会自动发现(非 A/B/C/秘书、近期活跃、内容含 Agent-D 的 jsonl)并写入 state 的 d_id。D 主攻:OHOS 多模输入(MMI)→ MotionEvent → InputChannel/InputEventReceiver 替身 → 灌进 ViewRootImpl 事件分发,让上屏后 app 能点能用;territory 独立,和 C 对齐"喂输入事件入口",用 5583f5be 验输入时与 C 错峰。
transcript 路径 `~/.claude/projects/-Users-yao/<id>.jsonl`,靠 size/mtime 判活跃。当前秘书巡检 cron = `73fce52f`。

**三块板(hdc `~/.local/openharmony-tools/bin/hdc`):** 5583f5be=新大板(C 真机)、5ce2dcee=老大板(B 独占,别碰运行态)、dd011a41=小板(有不可重建 blob,别擦别刷)。

**`ssh huawei` = 中国大陆的 Linux(16GB 内存 / 1TB 盘)**,适合下大镜像/编译/dex2oat/debugfs。**在墙内**,直连 google/dl.google/ci.android.com 会被墙——翻墙代理(clash/hysteria2,mixed-port 7890 global)配置在 **`/Users/yao/proxy-hysteria-mini4.yaml`**(从微信文件 hysteria-mini4-client(1).yaml 复制,含密钥,别贴进 git 白板)。scp 上去起 clash + `export https_proxy=http://127.0.0.1:7890` 即可。已广播四 agent(2026-07-06)。

**用户交办的秘书职责(全部已落地):**
1. **每 15 分钟巡检**(cron,脚本 `scratchpad/watch3.sh`):三 agent transcript 活跃度 + AGENT-COORD.md/AGENT-CHAT.md 增量 + 三板屏幕保活。有里程碑/新进展就 `bark <标题> <内容> secretary` 简短推用户手机;某 agent >20min 无活动先在 AGENT-CHAT.md append 点名催、再无动静 bark 告警;平静时每小时一条心跳。
2. **三块板屏幕常亮**:每轮巡检对三板跑 `power-shell timeout -o 2147483647`(≈24.8天,最大值)+ `power-shell wakeup`。此设置是内存态、重启失效,故靠 cron 每轮补。
3. **白板防膨胀**:跟踪 `westlake-piercing/AGENT-COORD.md`,太长时把**已解决/已被取代**的历史段落原文搬到同目录 `AGENT-COORD-ARCHIVE.md`,COORD 原位留**秘书署名指针**(不删内容、不改活的协调信息、不动 agent 的活段落)。首次已把 149 行压到 90 行。
4. **每 30 分钟看他们的成果、尝试复现**:读各 scratchpad 交付物,在不碰 5ce2dcee 运行态、不擦板的前提下试着复现(如 C 的 hwui 上屏可在 5583f5be 上验)。
5. **每 40 分钟扫 session 记录补录 COORD**(独立 cron `1e803908`,:14/:54):扫 4 个 transcript 的增量,把 agent 已做、但白板缺、且有协调价值的关键信息(里程碑/新卡点/交付物路径+md5/跨agent依赖/重要纠正)以 `## [秘书补录]` 署名 append 进 COORD;判重(agent 自己写过就跳)、绝不改 agent 活段落/替其表态、不搬长日志;基线存 scratchpad/recap.state(独立于 watch3.state 防写冲突)。

**cron 是 session 级的,关终端即失效**;当前秘书巡检 cron 在 `8,23,38,53 * * * *`。他们仨各自另有 10 分钟 cron 读 COORD 同步。

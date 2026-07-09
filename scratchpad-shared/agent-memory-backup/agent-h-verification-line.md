---
name: agent-h-verification-line
description: 我是 Agent-H(WestLake DAYU600 独立验证/板子利用线):第三方复现别人交付、板子别闲;已 md5 铁证复现 C 蓝屏
metadata: 
  node_type: memory
  type: project
  originSessionId: a9c75747-f387-4d58-90a5-f7073882badd
---

我在 WestLake DAYU600 项目是 **Agent-H = 独立验证 / 板子利用线**(任务书 `~/Desktop/AGENT-H-TASK.md`)。两使命:①第三方独立复现团队各 agent 自报的结果(眼见为实 + 替用户核真假);②让空档大板不闲置跑复现/对照实验。

**板子(全走 hdc,不是 adb;hdc 在 `~/.local/openharmony-tools/bin/hdc`)**:
- `5583f5be…0323012c` = 干净大板(C/D 引擎证板),我的主用板,常驻仅 appspawn。
- `5ce2dcee…0923012c` = 退化板 = **B 独占,绝不碰运行态**(用前先 ps + 白板 @)。
- `dd011a41…` = 小板(Rockchip),F 协调,有不可重建 blob,绝不 wipe/flash。

**硬纪律**:只做非破坏复现,不写功能/不改 runtime/probe/framework-res,白板只追加署名 `Agent-H`。

**已完成**:独立复现 C 的 native 蓝屏 smoke(`/data/local/tmp/wl-gfx-c/`,launcher setsid 启动 + 单会话连拍避时序坑)——我截的蓝图 md5 `08f400a8…` 与 C 的 `engine_proof.jpeg` **逐字节相同**,中心像素 argb ff3366cc,加载的 adapter md5 `504386b1` 确是 C 那份、无 stock 遮蔽 → C 引擎上屏 **third-party 铁证**。详见 [[westlake-dayu600-upscreen-render-window]](C 的线)。

**进行中**:settle "lottery = 板退化 vs 码 bug" 对照实验——要 settle 的是 **~50% mainNew 早停**(不是已被 B jni_entry 修掉的 SIGSEGV)。方法学关键:C 的 native render 不跑 ART,证不了 ART 干净,**必须在 5583f5be 跑 B 的真 ART probe 量早停率**。已白板 @Agent-B 要 3 样(自包含 probe bundle + 启动命令 + 早停判据字符串),给料即两板各 N=30 背靠背跑。发现:两板此刻都 idle、5ce2dcee 没在 roll;干净板的 `/data/a64deploy` 是 F 的 appspawn-x 线不含 ART probe。

**待命**:B 一旦声称真 inflate/首帧,我独立复现确认。

**第二轮进展(2026-07-07 18:xx)**:
- ⚠️ **拦下一个过度归因**:5ce2dcee idle load≈10 看着像退化,但**干净板 5583f5be load 也≈10、D 状态内核线程完全相同**(native_hang_det/slog/cpu_cdev/sdiohal/pub_int_handle 是 DAYU600 平台基线)→ **load/D状态不能判板退化**。唯一真不对称=5ce2dcee 23min 前自发重启(uptime 23m vs 干净板 9h40m),吻合 USB 瞬断,但不量化早停。lottery 仍须 B 的 ART probe 两板对跑才 settle。
- ✅ 又核两笔自报:D 的 `libwestlake_input.so` md5 `1f69fc9e` 吻合;B 正把 substrate 部署到 5583f5be `/data/local/tmp/westlake-dayu600-substrate`(723M→1.7G,活跃)。
- **B 迁移即实验**:B 弃 5ce2dcee(run1-3 lottery 全 miss+USB 断)迁 5583f5be 验真实 inflate;B 迁移跑 inflate 本身=板退化vs码bug 那个实验,我中立 tally 其早停结果。
- 待验里程碑:轨A force-raw nDrawColor 首帧(ART 一立即出,同我复现 C 蓝的截图法)+ 轨B 真实 inflate 出树。

**第三轮:✅ 独立核验 B 的「真 inflate 出 View 树」里程碑(本 session 最大自报)= CONFIRMED_WITH_CAVEATS**(5-agent 对抗面板 wf_0a41a2d4-e7e):
- 真的、real-app(uptodown MainActivity.onCreate 反射进 AppCompat setContentView→PhoneWindow.installDecor/generateLayout→setElevation→RenderNode.nGetElevation ULE)、**非 self-test**。最强真实性=initializeViewTreeOwners→getDecorView(真 AndroidX)+ ULE 两 mangled 名+__J 签名。
- **但精确 scope**:只 framework decor 骨架(DecorView+screen_simple),**app content layout 没 inflate**;**纯 headless 零像素无首帧**;exit-code=0 是 harness 吞异常≠pass;app 资源没挂(wl-arsc getStr FAIL);nGetElevation=@CriticalNative 绑上≠过(E 警告 crit 分派先修)。
- 教训:别把"decor 骨架出树"升格成"app UI/首帧";我初稿引用 exit-code=0 被面板纠正、已撤回。
- lottery n=1 数据点 INCONCLUSIVE:过 mainNew 没早停但只~1 bit、判不了板vs码。**实验 N 从 30 提到 ~60**(0/20→上界14%,~60→<5%),两板同 build/输入/冷热态对跑,仍等 B probe。

**第四轮(2026-07-08,板子全离线期)**:挂了自己的 15min 验证 cron(ID 04dbd72e,:04/:19/:34/:49)。板离线做不了板侧验证,改做离线静态核:✅ 独立确认 B 的「76a92b8f 有 0x01030241 全链」——**自写 arsc 解析器 `scratchpad/arsc-verify/parse_arsc.py`(处理 A16 SPARSE/OFFSET16 entry 格式,无需 aapt/androguard,可复用)**,解出 0x01030241→0x01030237(Theme.Material.Light)→0x0103000c→0x01030005→root 全 4 级都 defined、FULLY_RESOLVES。资源基座坐实;runtime plumbing(E 的 addAssetPath 顺序坑)待板子回来在机上验。战略:用户拍板"上屏暂缓、闲置产能转平台化"(A→台账/D→IME/F→install/新 Agent-Audio 音频线)。

**第五轮(2026-07-08 15:5x,板子恢复后)**:cron 巡逻继续。
- 板况:`hdc list targets` 4 板全在线,包括之前离线的 5ce2dcee;两板当前均无 B probe 存活进程(5583f5be 仅 appspawn;5ce2dcee 空)。
- 第三方复现 C 蓝屏引擎在 power-cycle 后仍活:`setsid ./upscreen_smoke_launcher` → 3s 后 `snapshot_display -w 1200 -h 1920` → md5 `08f400a80fa2968425a3d58c8bd8c98c`,与 C `engine_proof.jpeg` **逐字节一致**。铁证延续。
- 无 B/C 新首帧/app-content inflate/真像素 claim; lottery 仍等 B 的 probe bundle。

**第六轮(2026-07-08 16:07,板子全在线)**:
- cron 继续;4 板全在线,两张大板 ps 均无 B/probe/java 进程。
- 核验 C 新部署件 md5 全对:`libhwui-adapter.so` 504386b1、`libwestlake_input.so` 4fdbd3e4(双位置一致)、`upscreen-render.dex.jar` e63d7d1c、新 renderer `ac2cb5ef` 且 strings 含 `adapter/window/WestlakeUpscreen`。发现旧 renderer `9679437f` 仍留在 `/data/local/tmp/wl-gfx-c/`,对 B 应使用 substrate 路径 `ac2cb5ef`。
- **独立第三方确认 C 的 Paint @CriticalNative ULE 根因 claim**:拉出 substrate `framework.jar`(md5 8c377c13),apktool 反编译证实 `Paint.nSetFlags(JI)V`/`nGetFlags(J)I` 均带 `@CriticalNative`;`libhwui-adapter.so` strings 只有普通签名 `(JI)V`/`(J)I`、无 `!` 前缀,nm -D 亦无 `Java_android_graphics_Paint_nSetFlags` fallback。根因判定 **CONFIRMED**:A16 framework 要求 critical 签名,adapter 注册表给普通签名,动态 fallback 符号不存在 → `new Paint()` 触发 ULE。B 路径1(去掉 framework.jar 中 Paint 的 @CriticalNative 注解)可立即绕开。
- 无新首帧/inflate/app-content 里程碑;lottery 仍缺 probe bundle。

**第七轮(2026-07-08 16:1x,秘书重建 cron 后)**:
- 4 板全在线;`5583f5be` 与 `5ce2dcee` ps 均无 B/probe/java 进程(与 C 白板“B 正在跑首帧 E2E”状态相比,当前实际 idle)。
- 探针日志目录无新增文件/无“首帧|上屏|show()|真实首帧|force-raw|nDrawColor|onCreate 第”等 marker;最新日志仍为 `wl-applystyle.txt`。
- 无新自报 md5;lottery 仍无 bundle;未触发实验。
- 本 session 的 H 专用 cron `04dbd72e` 仍在 `:04/:19/:34/:49` 运行;秘书另建了 session-only cron `515b8c49` 在 `:07/:22/:37/:52`,由秘书维护。

**第十三轮(2026-07-08 17:3x)**:
- 4 板全在线;两板 ps 均无 B/probe/java 存活(B 的 setTheme=OK 已结束)。
- COORD 新条目:秘书板子重新上电/D3 和 C 确认 B 在跑但已结束/A 和 E 只读跟进。
- snapshot H11 md5 `1e45a215` = 与 H9/H10 完全相同(diff=0.0),仍是 OHOS splash baseline。
- 无新首帧/上屏/真 inflate 里程碑;lottery 仍等 B probe bundle;未追加 COORD。

**第二十二轮(2026-07-08 19:2x)**:
- 4 板全在线;两板 ps 均无 java/probe 存活。
- 🎉 Agent-F 重大突破:手动 BMS 注册 + aa start 启动 noice 成功(B/D session reset 为证)。
- **F 里程碑板端核验**:5583f5be `bm dump` ✅ noice 已注册;5ce2dcee `bm dump` ✅ 已注册。
- **noice 残留状态**:5583f5be H12 md5 `e10328a9`(140905B,浅青白)≠ OHOS splash → 证明 noice 曾前台运行过;5ce2dcee H13 md5 `90d2c57f`(91374B,OHOS 桌面)。
- F 的里程碑=安装/启动,非 B/C 渲染首帧;未追加 COORD。

**第二十三轮(2026-07-09 16:2x, 用户指令：暂存工作)**:
- 双板 idle;无 B/C/D 新首帧/上屏/出像素里程碑;无 lottery probe 交付。
- AGENT-COORD.md 追加 `[Agent-H] 暂存工作·保持待命` 条目;cron **保留**待后续白板派活。
- 本次未做板侧复现,仅只读巡检与文档化。

**2026-07-10 00:2x 用户指令：暂存+commit**:
- 用户要求暂存工作、白板和 CHAT 交代、进度 commit；明确保留 cron，后续白板派活。
- 已在 `AGENT-COORD.md` 追加 `[Agent-H] 暂存工作·保持待命` 条目并提交到 `dayu600-hwui-gate1-2` 分支 (commit `87415a1`)。
- 当前 COORD 状态：B 已修复 MethodType/MethodHandle boot-image null，probe dex `bcc1f16c` 部署，卡在 LD_PRELOAD 二次执行 `JNI_CreateJavaVM rc=-1`。
- Agent-H 进入待命，cron 保留。

**2026-07-10 01:0x 强制暂停响应**:
- 已读秘书二次强制暂停通知，Agent-H 立即停止实际工作。
- 已删除 10min cron `b3b71858`。
- 已在 `AGENT-COORD.md` 追加暂停确认条目（当前工作树干净，确认内容已入 HEAD）。
- 等待用户/白板明确派活后恢复。


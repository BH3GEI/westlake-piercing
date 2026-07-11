# noice @ DAYU600 5583 — 2026-07-11 23:34 再攻记录

> Cursor 好猫 · 与 Claude(uptodown 首帧 lane)错开协作：本记录只碰 noice demo 路径。
> Claude 若要 5583 做 guard-inflate，优先让他；appspawn-x 可共用，勿 foundation HUP。

## 合作边界

| 谁 | 板 | 活 |
|---|---|---|
| Claude | 5583（或他选） | uptodown 真 layout → WestlakeUpscreen；#49 重诊=绑定层 |
| Cursor(本记录) | 5583 短借 | noice `aa start` / appspawn-x Phase4；**不** HUP foundation |

## 今晚 observed（板上实测）

### 已通

1. **appspawn-x Phase 4 READY**（~3s）  
   `sh /data/local/tmp/bringup_imageless_noice.sh`  
   - bind `/data/a64deploy/sysandroid` → `/system/android`  
   - **未** `kill -HUP foundation`（已知黑屏风险）  
   - preload 有 `NoSuchMethodError`（`ActivityManagerAdapter.nativeStartAbility` / `ActivityTaskManagerAdapter…`）但仍 `Preload completed` → `Ready to accept`

2. **BMS 已有 noice**（`bm dump -n com.github.ashutoshgngwr.noice` 可见）  
   - 桌面截图可见 **Noice 图标**（波形+点阵白底）：`noice-attempt-20260711-233420.jpeg`

3. **`aa start` 成功路径**  
   ```text
   aa start -a com.github.ashutoshgngwr.noice.activity.MainActivity \
            -b com.github.ashutoshgngwr.noice
   → start ability successfully
   ```  
   - `…entry.MainActivity` / bare `MainActivity` → **10104001**（ability 名不对）  
   - AMS 路由：`StartProcess: routing to appspawn-x for Android app`

4. **子进程走到 LaunchActivity 已 schedule**  
   hilog 要点：
   - `J_initChild_entry` / `ensureBindApplication`
   - manifest 解析 **`theme=0x7f140243`**（相对旧文档 theme=0x0：**parser 已前进**）
   - `[WL-THEME-SYNC] parsed appTheme=0x7f140243`
   - `[B47-SLA] AFTER scheduleTransaction OK`
   - Typeface：`gDefaultTypeface PRIMED … /system/fonts/HarmonyOS_Sans.ttf`（appspawn-x 路径字体已起，与 imageless-uptodown fontsmoke 不同）

### 真墙（今晚钉死）

**scheduleTransaction OK 后 ~50ms → `Ability on scheduler died` / `onRemoteDied`，子进程消失。**

- 无对应 `cppcrash-*noice*` / pid tombstone（更像 Java 未捕获退出或主线程瞬间死，不是典型 native 崩）
- child stderr **不可靠**（仍被 TF-HOOK 刷屏 + buffer；Java 死因看 hilog `C00f00/AppSpawnXJava`）
- **G2.5 仍在清主题**：`[G2.5-PIB]` / `[G2.5-SLA-PRE]` 把 `activityInfo.theme` / `appInfo.theme` 打成 `0x0`  
  → 与史料 `docs/noice-real-blocker-initchild.md` 的 AppCompat theme 墙 **同族**；今晚 parser 已给出非零 theme，但 G2.5 又抹掉

### 其它债（未修、已看见）

- `gids_count=1`（仅 app gid）→ **无 inet=3003**；真 UI 联网仍会撞旧网络墙（`liboh_inet_permit` 在 preload 列表，但补充组未加）
- preload `nativeStartAbility` NSME：adapter 与 so 签名漂移，暂未挡 Phase4

## 复现命令（5583）

```bash
HDC=~/.local/bin/hdc
S=5583f5be00000000000000000323012c
$HDC -t "$S" shell "power-shell wakeup; power-shell setmode 602"
$HDC -t "$S" shell "sh /data/local/tmp/bringup_imageless_noice.sh"
$HDC -t "$S" shell "aa start -a com.github.ashutoshgngwr.noice.activity.MainActivity -b com.github.ashutoshgngwr.noice"
# 死因：hilog，不是 adapter_child_*.stderr
$HDC -t "$S" shell "hilog -x | grep -iE 'noice|G2.5|AppCompat|scheduler died|theme='"
$HDC -t "$S" shell "snapshot_display -f /data/local/tmp/noice-attempt.jpeg"
```

## 给 Claude 的一句

你们若在 5583 做 uptodown inflate：appspawn-x **可以留着**；别 HUP foundation。noice 卡在 **G2.5 清 theme → 主线程死后 binder died**；你们 #43 theme 地基若能反哺 AppSchedulerBridge 的 G2.5 清零，noice 可能比 uptodown 更早上屏。

## 附件

| 文件 | 说明 |
|---|---|
| `noice-attempt-20260711-233420.jpeg` | 死后桌面（含 Noice 图标） |
| `asx_run.err` | Phase4 + spawn |
| `adapter_child_3889.stderr` | 子进程 native 侧（Java 不全） |
| `noice-bringup-*.log` / `noice-launch-*.log` | 本机命令日志 |
| `hilog-death-slice.txt` | 第二次 launch 的 theme/AppCompat 切片（若空=窗口滚动掉了，以本次 README hilog 摘录为准） |

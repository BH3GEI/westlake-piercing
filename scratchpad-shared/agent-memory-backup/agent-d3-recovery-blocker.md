---
name: agent-d3-recovery-blocker
description: Agent-D3 board 5583f5be blocked by appspawn kernel flood + USB gadget failure
metadata:
  type: project
  originSessionId: b0445db8-b9e9-477f-a0d2-886d89ccd137
---

# Agent-D3 Recovery Blocker (2026-07-09, UPDATED 11:05)

## Status: HARD BLOCKED — Physical USB reconnect needed

## What Changed This Session
- Board rebooted from dalvikvm boot image crash (fixed: `-Ximage:none`)
- Files wiped on reboot (probe22.so + ivs-final2.jar on build host, confirmed intact)
- Appspawn kernel log flood resumed → serial shell input drowned
- USB gadget disappeared from Mac (hdcd running on board, but OHOS USB device not enumerated)
- **Software exhaustively tried — nothing works**

## Root Causes
1. **Serial shell drowning**: appspawn flood — 8+ hours continuous, serial input to klog not shell
2. **USB gadget not enumerated**: Mac IOKit sees FT232R UART but no OHOS USB gadget device
3. **No network path**: Mac has no 192.168.1.x interface, Huawei build host unreachable

## Offline Work Done
- Wrote `INPUT-CHAIN-BUGS.md` — 4 bugs found (TextPump not in jar, sDownTimeMs init, tap race, so path)
- Wrote `DEPLOY.sh` + `input-verify.sh` — deploy + verify scripts
- Wrote `ImeInputVerifyStage.java` — IME harness (needs searchSync added)
- Added `searchSync()` to `WestlakeTextPump.java`
- Created fixed versions: `fixed-InputVerifyStage.java`, `fixed-WestlakeUpscreen.java`, `fixed-WestlakeTouchPump.java`, `fixed-WestlakeTextPump.java`
- Updated `AGENT-COORD.md` with full D3 status

## Next (board recovers)
1. Run `DEPLOY.sh` → deploy probe22.so + ivs-final2.jar + libwestlake_input.so
2. `dalvikvm -Ximage:none -Xbootclasspath:framework.jar -classpath ivs-classes.jar adapter.window.InputVerifyStage`
3. `input-verify.sh` → check WLTEST markers
4. Then: compile WestlakeTextPump into jar, test IME chain
5. Gate: WlWindowManagerSvc stub (Agent-B owns)

## Related
[[westlake-dayu600-input-line]] — My input line task (blocked, board offline)
[[agent-b-activity-crash-analysis]] — Board crash root cause

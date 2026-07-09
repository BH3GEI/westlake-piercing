---
name: agent-b-activity-crash-analysis
description: Agent-B's Activity onCreate crash analysis — SIGBUS in Paint.nSetFlags
metadata:
  type: project
  originSessionId: b3d658ee-33a9-4b16-9c9b-325d7c2886c6
---

## Crash Stack (from 5ce2dcee utd7.log)
```
[OHBridge] SIGBUS caught! fault_addr=0x4
[OHBridge]   pc=0x7f004529cc  lr=0x7f00351c3c
Java stack:
  at android.graphics.Paint.nSetFlags(Native Method)
  at android.graphics.Paint.<init>(Paint.java:702)
  at com.android.internal.policy.DecorView.<init>(DecorView.java:272)
  at com.android.internal.policy.PhoneWindow.generateDecor(PhoneWindow.java:2521)
  at com.android.internal.policy.PhoneWindow.installDecor(PhoneWindow.java:2921)
  at com.android.internal.policy.PhoneWindow.getDecorView(PhoneWindow.java:2271)
  at androidx.activity.ComponentActivity.initializeViewTreeOwners(...)
  at androidx.appcompat.app.AppCompatActivity.setContentView(...)
  at com.uptodown.activities.MainActivity.onCreate(...)
```

## Root Cause
OHOS ART trampoline cannot handle `Paint.nSetFlags` native method call → SIGBUS crash.
- Triggered when App's `setContentView()` runs in `MainActivity.onCreate()`
- `DecorView.<init>` → `new Paint()` → `Paint.nSetFlags` (native) → SIGBUS

## Fix Applied
Modified Dayu600ApkStageProbe to skip `setContentView(0)` call in probe (which was triggering early DecorView init). New dex at:
`/Users/yao/westlake-piercing/test-fixtures/dayu600-apk-probe/out/dayu600-apk-probe.dex` (194092 bytes)

## Remaining Issue
Even with probe skipping setContentView, the App's own `onCreate()` will still call `setContentView()` → same crash. Need fix at OHOS ART level for Paint.nSetFlags trampoline.

## Board Status (2026-07-09 11:00)
- 5583f5be: USB disconnected, serial UART alive at 1500000 baud but NO shell
- **Serial diagnostic**: kernel logs only (audit/avc denial/appspawn), no shell prompt reachable
- **hdc diagnostic**: UART tconn fails, `hdc any` fails, `hdc tconn` fails
- **Need USB cable reconnected** for hdc to work
- /data/local/tmp/ was cleared - all deployed files lost
- 5ce2dcee: DISCONNECTED
- **Hardware blocking**: USB cable needs physical reconnection (11:00 still blocked)

## Probe Fix Ready
- New dex at: `/Users/yao/westlake-piercing/test-fixtures/dayu600-apk-probe/out/dayu600-apk-probe.dex` (194092 bytes)
- Skips setContentView(0) to avoid DecorView→Paint.nSetFlags SIGBUS
- Still needs CriticalNative patcher for App's own onCreate()

## Next Steps When USB Returns
1. Push new probe dex to /data/local/tmp/westlake-dayu600-substrate/apks/dayu600-apk-probe.dex
2. Restart appspawn with embedded probe
3. Check checkpoint logs: ckpt1.txt and uptodown-probe.txt
4. If SIGBUS still occurs in App's onCreate, apply CriticalNative patcher

# WestLake Input Chain — Bug Analysis & Offline Verification
## Agent-D3 Offline Review (2026-07-09)

---

## JAR COMPOSITION AUDIT

### ivs-final2.jar (7380 bytes, md5 e3d8fa01)
```
classes.dex contains:
  Ladapter/window/InputVerifyStage;
  Ladapter/window/InputVerifyStage$1;   (Looper thread anonymous class)
  Ladapter/window/InputVerifyStage$2;   (tap writing anonymous class)
  Ladapter/window/WestlakeInputTestView;
  Ladapter/window/WestlakeInputTestView$1;  (OnClickListener)
  Ladapter/window/WestlakeInputTestView$2;  (OnTouchListener)
  Ladapter/window/WestlakeTouchPump;
  Ladapter/window/WestlakeTouchPump$1;   (tap Runnable)
  Ladapter/window/WestlakeTouchPump$2;   (tap Delayed UP Runnable)
  Ladapter/window/WestlakeTouchPump$3;   (post Runnable)
  Ladapter/window/WestlakeTouchPump$4;   (postKey Runnable)
  Ladapter/window/WestlakeUpscreen;
```
**MISSING**: `WestlakeTextPump`, `WestlakeInputAttach` — these are NOT in ivs-final2.jar.

### libwestlake_input.so (36992 bytes, md5 4fdbd3e4)
```
Exports (nm -T):
  JNI_OnLoad                              — registers stubs + starts pollers
  WestlakeInput_registerAllNormal          — RegisterNatives for 62 stubs
  WestlakeInput_startTapChannel            — starts westlake_tap poller thread
  ensureMotionEventStubNormal(_JNIEnv)     — resolves/register 1 stub lazily
  + 58 internal symbols (L10N_get*, L11N_get*, L14N_*, L15N_*, etc.)
```
**OK**: 3 public exports. No VelocityTracker or KeyEvent RegisterNatives visible
in exports (they may be registered internally in registerAllNormal).

---

## BUG FINDINGS

### BUG 1: WestlakeTextPump NOT deployed (Severity: MEDIUM)
**File**: ivs-final2.jar (the deployed IVS jar)
**Problem**: `WestlakeTextPump.java` (8349 bytes) exists in source at
`scratchpad-shared/wl-input-d/WestlakeTextPump.java` but is NOT compiled into
`ivs-final2.jar`. The jar only contains 4 classes (InputVerifyStage,
WestlakeInputTestView, WestlakeTouchPump, WestlakeUpscreen).

**Impact**: IME text input cannot be tested with the current deployed jar.
ACTION_MULTIPLE path, ENTER/DEL/CLEAR commands, `search()` convenience all
unavailable until `WestlakeTextPump` is added to the jar.

**Fix**: Compile `WestlakeTextPump.java` with the same android-35 classpath,
add to dex, re-deploy.

---

### BUG 2: WestlakeInputAttach NOT in jar (Severity: LOW)
**File**: ivs-final2.jar
**Problem**: `WestlakeInputAttach.java` (8979 bytes) exists in source but is
NOT in the deployed jar. However, `WestlakeUpscreen.attachForInputMinimal()`
(line 95-114) implements the SAME functionality (recursive mAttachInfo set
without dispatchAttachedToWindow) inline.

**Impact**: NONE currently — `WestlakeUpscreen.show()` already calls
`attachForInput(v, uiHandler())` at line 97 of WestlakeUpscreen.java, which
uses the built-in minimal attach approach. `WestlakeInputAttach` is redundant.

**Fix**: No action needed. `WestlakeInputAttach.java` is a legacy standalone
version; the current `WestlakeUpscreen` inline implementation is sufficient.

---

### BUG 3: InputVerifyStage westlake_tap path relies on poller timing (Severity: LOW)
**File**: `InputVerifyStage.java` line 93-106
**Problem**: The harness writes to `westlake_tap` via Java FileOutputStream,
then the native poller reads it asynchronously. There is no synchronization
between the Java write and the native poll. With the 500ms Thread.sleep +
500ms Looper startup delay, the poller is generally running, but the exact
timing is non-deterministic.

```java
// Line 97: writes "600 960\n" to westlake_tap
// Line 106: posts with seq*200ms delay
// BUT: the poller reads asynchronously — race possible under load
```

**Impact**: Under heavy system load, the tap might be missed. Log would show
`IVS tap[0] wrote to westlake_tap` but no WLTEST markers.

**Fix**: Add a synchronization marker:
1. After loading libwestlake_input.so, read `westlake_tap` once to confirm
   poller is reading
2. Or: call `WestlakeTouchPump.tap(600, 960)` directly from Java instead
   of going through the file channel (avoids the native poller entirely)

**Recommended fix** (replace lines 89-108 in InputVerifyStage):
```java
android.os.Handler h = _hOut[0];
if (h != null) {
    for (int i = 0; i < 3; i++) {
        final int seq = i;
        h.postDelayed(new Runnable() {
            public void run() {
                // Direct Java call instead of file channel
                // (avoids native poller race condition)
                try {
                    WestlakeTouchPump.tap(600, 960);
                    android.util.Log.i(TAG, "IVS tap[" + seq + "] dispatched");
                } catch (Throwable t) {
                    android.util.Log.e(TAG, "IVS tap[" + seq + "] FAILED", t);
                }
            }
        }, seq * 200L);
    }
}
```

---

### BUG 4: attachForInput race — called from wrong thread (Severity: MEDIUM)
**File**: `WestlakeUpscreen.java` line 97
**Problem**: `show()` calls `attachForInput(v, uiHandler())` at line 97, BEFORE
capturing `sUiLooper`. The `uiHandler()` at line 97 falls back to
`Looper.getMainLooper()` because `sUiLooper` hasn't been set yet (line 94
sets it to `myLooper()` AFTER `layout()` call, but `layout()` is at line 96
which is BEFORE `sUiLooper = Looper.myLooper()`).

Actually, looking at the code:
```java
// Line 89: sW = w; sH = h; sDecor = v;
layout(v, w, h);        // line 96
sUiLooper = Looper.myLooper();  // line 94 ← WAIT, this is BEFORE layout
```

Line 94 comes before line 96 in the source, so `sUiLooper` IS set before
`layout()`. But `uiHandler()` is called at line 97:
```java
sUiLooper = android.os.Looper.myLooper();  // line 94
if (sUiLooper == null) sUiLooper = android.os.Looper.getMainLooper();  // line 95
layout(v, w, h);  // line 96
if (sAutoAttach) attachForInput(v, uiHandler());  // line 97
```

Line 97: `uiHandler()` uses `sUiLooper` which was set at line 94. So the
Handler is bound to the correct thread's Looper. **This is NOT a bug.**

**Status**: No bug here. The sequence is correct.

---

### BUG 5: MotionEvent.obtain native init may fail silently (Severity: HIGH)
**File**: `WestlakeUpscreen.java` line 160-161, `WestlakeTouchPump.java` line 118
**Problem**: `MotionEvent.obtain()` is a Java API that internally calls
`nativeInitialize`. If the native stub is not registered (e.g., wrong class
loader, or the stub is registered on a different JNIEnv), the call throws an
`UnsatisfiedLinkError`. The code at `WestlakeTouchPump.dispatch()` catches
`Throwable` and logs it:

```java
} catch (Throwable t) {
    Log.e(TAG, "dispatch failed action=" + action, t);
}
```

So a missing stub would show as `UnsatisfiedLinkError: no native method
android.view.MotionEvent.nativeInitialize`.

**Current status**: `libwestlake_input.so` registers MotionEvent stubs via
`WestlakeInput_registerAllNormal` called from `JNI_OnLoad`. If the .so is
loaded with `System.load("/data/local/tmp/libwestlake_input.so")` in the
IVS harness (line 79 of InputVerifyStage), JNI_OnLoad runs and registers
the stubs. The probe infrastructure also loads probe22.so separately.

**Risk**: If `libwestlake_input.so` is loaded BEFORE the dex classes are
resolved, the RegisterNatives might register against the wrong class. But
in practice, the IVS harness loads the .so AFTER `show()` + View creation,
so the class resolution should be fine.

**Mitigation**: The catch(Throwable) in dispatch() handles this gracefully.

---

### BUG 6: No @CriticalNative stubs for MotionEvent.getX/getY (Severity: MEDIUM)
**File**: `libwestlake_input.so`
**Problem**: OHOS ART with the @CriticalNative flag fix (Agent-B's class_linker
work) will require @CriticalNative calling convention for methods like:
- `MotionEvent.getX()` → `nativeGetX` (crit native)
- `MotionEvent.getY()` → `nativeGetY` (crit native)
- `Paint.nSetFlags()` → (already handled by probe22.so?)

Currently `libwestlake_input.so` only registers normal-convention stubs.
If @CriticalNative is enabled, these getters will use the wrong calling
convention (env/jclass on stack) → crash or garbage values.

**Fix needed**: When Agent-B lands the @CriticalNative flag fix:
1. Normal stubs in `libwestlake_input.so` → already working, no change needed
2. Add crit-style RegisterNatives for getter methods → new `libwestlake_input_crit.so`

---

### BUG 7: WlWindowManagerSvc stub gates first View creation (Severity: HIGH)
**File**: Any `new View(ctx)` call
**Problem**: First View construction triggers `ViewConfiguration.get(ctx)` →
`ViewConfiguration.<init>` → static `sHasPermanentMenuKeySet` → calls
`WindowManagerGlobal.getWindowManagerService().hasNavigationBar(displayId)`.

If the stub returns null or throws, View creation NPEs immediately.

**Status**: Agent-B owns this. Documented in INPUT-CHAIN-ANALYSIS.md §7.

---

## OFFLINE VERIFICATION RESULTS

### Verified as correct:
1. **WestlakeTouchPump.tap(x,y)** — correct: DOWN now + UP 150ms later,
   one shared downTime, posts to uiHandler
2. **WestlakeTouchPump.post(action,x,y,evMs)** — correct: stamps uptimeMillis
   if evMs<=0, dispatches directly
3. **WestlakeUpscreen.injectTouch(action,x,y,evMs)** — correct: latches
   downTime on ACTION_DOWN, MotionEvent.obtain + dispatchTouch + recycle
4. **WestlakeUpscreen.dispatchTouch(MotionEvent)** — correct: calls
   decorView.dispatchTouchEvent + drawFrame afterward
5. **WestlakeUpscreen.uiHandler()** — correct: returns Handler bound to
   sUiLooper (set at show() time), falls back to getMainLooper()
6. **attachForInput** — correct: recursive mAttachInfo set with hwAccel=false
   (software flatten preserved), no dispatchAttachedToWindow
7. **WestlakeInputTestView** — correct: WLTEST markers are "WLTEST touch
   DOWN/UP/MOVE" and "WLTEST CLICK ... INPUT CHAIN PROVEN" (grep-friendly)

### Source files present:
| File | Size | Status |
|------|------|--------|
| WestlakeTextPump.java | 8349 | ✅ Source OK, ❌ NOT in deployed jar |
| WestlakeTouchPump.java | 6647 | ✅ Source OK, ✅ In deployed jar |
| WestlakeInputTestView.java | 3380 | ✅ Source OK, ✅ In deployed jar |
| WestlakeInputAttach.java | 8989 | ✅ Source OK (legacy), ❌ NOT needed |
| WestlakeUpscreen.java | 13753 | ✅ Source OK, ✅ In deployed jar |
| InputVerifyStage.java | 5388 | ✅ Source OK, ✅ In deployed jar |
| InputVerifyHarness.java | 2329 | ✅ Source (alt harness) |
| libwestlake_input.so | 36992 | ✅ Source OK (from build host) |

---

## REQUIRED ACTIONS BEFORE BOARD RECOVERY

1. **[ACTION 1]** Compile `WestlakeTextPump.java` + `WestlakeInputTestView.java`
   + `WestlakeTouchPump.java` + `WestlakeUpscreen.java` + `InputVerifyStage.java`
   into one dex jar (already done as `ivs-final2.jar` minus TextPump)
   → Add `WestlakeTextPump` to the dex and rebuild

2. **[ACTION 2]** Verify `libwestlake_input.so` on board at `/data/local/tmp/libwestlake_input.so`
   (probe22.so and ivs-final2.jar are both confirmed on build host)

3. **[ACTION 3]** After board recovery, run `DEPLOY.sh` — one-command deploy + run

4. **[ACTION 4]** Wait for Agent-B to complete `WlWindowManagerSvc` stub before
   expecting `IVS test view created` — first `new View(ctx)` needs it

5. **[ACTION 5]** After WLTEST CLICK is proven, compile + deploy
   `ImeInputVerifyStage.java` to test the IME/text chain

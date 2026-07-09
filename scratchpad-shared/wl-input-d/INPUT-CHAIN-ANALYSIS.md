# OHOS MMI -> MotionEvent -> View Dispatch Chain Analysis
## Agent-D3 Offline Analysis (Updated 2026-07-09)

---

## 1. Strategy B Input Architecture

```
OHOS MMI events (PointerEvent/KeyEvent)
    |
    +-- Path A (OH MMI monitor): OH_Input_AddTouchEventMonitor -> OhMmiInputConsumer -> direct JNI -> decorView.dispatchTouchEvent
    |
    +-- Path B (westlake_tap poller): echo "X Y\n" > /data/local/tmp/westlake_tap -> poller -> WestlakeTouchPump.tap() -> injectTouch -> decorView.dispatchTouchEvent
    |
    +-- Path C (westlake_text poller): echo "text\n" > /data/local/tmp/westlake_text -> poller -> WestlakeTextPump.feed() -> commit() -> ACTION_MULTIPLE KeyEvent -> decorView.dispatchKeyEvent

Both paths converge on decorView.dispatch*Event() -- the Strategy B root.
```

**Touch chain verified components:**
- `WestlakeTouchPump` (wl-input-d/) - tap(x,y) marshal via uiHandler
- `WestlakeUpscreen` (wl-input-d/) - injectTouch + decorView host
- `WestlakeInputTestView` (wl-input-d/) - WLTEST CLICK/touch verification view
- `libwestlake_input.so` (wl-input-d/) - 52 normal native stubs + tap/text pollers

**Text chain verified components:**
- `WestlakeTextPump` (wl-input-d/) - ACTION_MULTIPLE commit + ENTER/DEL/CLEAR commands
- Uses KeyEvent(J, String, I, I) constructor for whole-string insertion without KeyCharacterMap

---

## 2. Key Components

### WestlakeTouchPump (wl-input-d/)
- Entry: `tap(x,y)` - fires DOWN now + UP ~150ms later
- `dispatch(action,x,y,evMs)` -> `WestlakeUpscreen.injectTouch(action,x,y,evMs)`
- `post(action,x,y,evMs)` - passthrough for pre-classified events
- Fetches `WestlakeUpscreen.uiHandler()` dynamically
- **FIX**: Atomic downTime tracking to prevent race between DOWN and UP posts

### WestlakeUpscreen (wl-input-d/)
- `show(view,w,h)` -> layout + attachForInput + record + nativeInit + first frame
- `injectTouch(action,x,y,evMs)` -> MotionEvent.obtain + decorView.dispatchTouchEvent
- Auto-latches downTime on ACTION_DOWN, reuses for subsequent events
- **FIX**: Handles uninitialized sDownTimeMs gracefully
- `uiHandler()` / `uiLooper()` - bound to show()'s calling thread's Looper
- `attachForInput(decor, uiHandler)` - sets mAttachInfo with hwAccel=false

### WestlakeTextPump (wl-input-d/)
- `commit(text)` - sends ACTION_MULTIPLE KeyEvent bypassing KeyCharacterMap
- `search(query)` - commits text then presses ENTER
- `pressKey(keyCode)` - single keycode DOWN+UP
- `feed(line)` - parses "ENTER"/"DEL"/"CLEAR"/literal text commands
- **NEW**: `commitSync()` with CountDownLatch for synchronous text commit
- **NEW**: `queueText()` for pre-show text buffering
- **NEW**: `searchSync()` for guaranteed text+ENTER ordering

### WestlakeInputTestView (wl-input-d/)
- `make(ctx)` - programmatic FrameLayout with click + touch listeners
- Background alternates A(blue)/B(orange) on click
- WLTEST markers: "WLTEST touch DOWN/UP" + "WLTEST CLICK [INPUT CHAIN PROVEN]"

### libwestlake_input.so (wl-input-d/)
- `JNI_OnLoad`: setJavaVM + RegisterNatives 62 native stubs
  - MotionEvent normal variants: 52 methods
  - VelocityTracker: 7 normal methods
  - KeyEvent: 3 normal methods
- Starts westlake_tap poller on native background thread
- Starts westlake_text poller on native background thread

---

## 3. WLTEST Verification Markers

grep targets in logcat:
```
WLTEST touch DOWN   -> MotionEvent dispatched to view
WLTEST touch UP     -> UP event dispatched
WLTEST CLICK       -> onClick fired (proves mAttachInfo attach correct)
WLTEST CLICK ... INPUT CHAIN PROVEN -> full chain end-to-end verified
WLTEXT commit "..." -> text committed via ACTION_MULTIPLE
WLTEXT key ...      -> key dispatched (ENTER, DEL, etc.)
```

Absence patterns:
- No touch markers -> event never reached View
- Touch markers but no CLICK -> dispatch works, mAttachInfo/post(RunQueue) issue
- ULE on MotionEvent native -> stub not registered / wrong calling convention

---

## 4. Known Blocking Walls

### Wall 1: WlWindowManagerSvc stub missing
**Problem**: `new View(ctx)` -> `ViewConfiguration.get(ctx)` -> `ViewConfiguration.<init>`
first call triggers static `sHasPermanentMenuKeySet` -> calls
`WindowManagerGlobal.getWindowManagerService().hasNavigationBar(displayId)`.

**Status**: Agent-B owns this stub. If stub is not ready, any `new View(ctx)` will
NPE before the input chain can even be tested.

**Mitigation**: `WestlakeInputTestView.make()` creates a bare View with
`new View(ctx)` -- if this NPEs, it means `WlWindowManagerSvc` stub is missing
or broken. Log marker: "IVS test view FAILED" + exception dump.

### Wall 2: @CriticalNative kAccCriticalNative flag
**Problem**: OHOS ART shorty interpreter handles normal natives correctly, but
@CriticalNative methods (Paint.nSetFlags, MotionEvent getters) need the
kAccCriticalNative flag set from dex annotation. Without it, normal interpreter
pushes env/jclass as parameters -> crash or ULE.

**Status**: Agent-B owns class_linker.cc fix. Normal natives in libwestlake_input.so
are already working.

### Wall 3: Boot image mismatch
**Problem**: wl-imgboot dalvikvm + boot.art vs substrate framework.jar are from
different Android builds. Using both together causes:
`Check failed: java_lang_Object->IsFinalizable()`

**Workaround**: Use `-Ximage:none` to skip boot image entirely.
```sh
/data/local/tmp/wl-imgboot/dalvikvm \
  -Ximage:none \
  -Xbootclasspath:/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar:... \
  -classpath /data/local/tmp/ivs-classes.jar \
  adapter.window.InputVerifyStage
```

### Wall 4: Board physical connectivity
**Problem**: Board 5583f5be may be offline due to USB gadget not enumerated,
appspawn kernel log flooding serial, or power issues.

**Status**: Recovery playbook at `RECOVERY-PLAYBOOK.md`.

---

## 5. Dispatch Thread Safety

### The single Looper thread constraint
- `View.dispatchTouchEvent()` is NOT thread-safe
- `RenderNode` recording is NOT thread-safe
- OHOS ART calls from multiple threads (MMI callbacks, JNI attach thread)

**Solution**: ALL dispatch must go through the ONE Looper thread:
```
MMI callback (native thread)
    |
    v
dispatchTouchViaViewRoot() [can run on any thread]
    | JNI
    v
WestlakeTouchPump.post() -> uiHandler.post()
    | (posted to UI Looper)
    v
WestlakeUpscreen.injectTouch() [UI THREAD]
    |
    v
decorView.dispatchTouchEvent() [UI THREAD]
```

---

## 6. mAttachInfo -> onClick Path

### Root cause
Strategy B has NO ViewRootImpl -> mAttachInfo == null.
`View.post(mPerformClick)` in `View.onTouchEvent` queues into RunQueue.
RunQueue is drained ONLY by `dispatchAttachedToWindow()`.
Since Strategy B never dispatches attached-to-window -> RunQueue never drained -> onClick never fires.

### Fix (integrated into WestlakeUpscreen.show())
```java
private static boolean attachForInput(View decor, Handler uiHandler) {
    // Recursively set mAttachInfo on all views in tree
    // mHardwareAccelerated = false -> drawingWithRenderNode still false -> software flatten safe
    // mHandler = uiHandler (so posted Runnables go to UI Looper)
    // No dispatchAttachedToWindow (avoids mViewRootImpl/mSession deref null)
}
```

---

## 7. Bugs Fixed (Offline Analysis 2026-07-09)

### FIX 1: Uninitialized sDownTimeMs (WestlakeUpscreen)
- **File**: WestlakeUpscreen.java line 158-163
- **Problem**: sDownTimeMs starts as 0L; first non-DOWN event produces invalid MotionEvent
- **Fix**: Added sDownTimeInitialized flag + initialization in show()

### FIX 2: Race between DOWN and UP posts (WestlakeTouchPump)
- **File**: WestlakeTouchPump.java lines 76-95
- **Problem**: Multiple tap() calls could interleave downTime latching
- **Fix**: AtomicLong sSharedDownTime + captured downTime in closure

### FIX 3: Hardcoded .so path (InputVerifyStage)
- **File**: InputVerifyStage.java line 79
- **Problem**: Used "wl-input-d/" subdirectory not matching documented board path
- **Fix**: Try both /data/local/tmp/ and /data/local/tmp/wl-input-d/

### FIX 4: Thread.sleep synchronization (InputVerifyStage)
- **File**: InputVerifyStage.java line 71
- **Problem**: 500ms may not be enough on slower boards
- **Fix**: CountDownLatch instead of Thread.sleep

### FIX 5: Text commit race (WestlakeTextPump)
- **File**: WestlakeTextPump.java lines 60-65
- **Problem**: "text + ENTER" sequences could race
- **Fix**: Added commitSync(), searchSync() with CountDownLatch

### FIX 6: No pre-show text buffering (WestlakeTextPump)
- **File**: WestlakeTextPump.java
- **Problem**: Cannot queue text before show() is called
- **Fix**: Added queueText() + flushPending() + auto-flush in show()

---

## 8. Deploy Procedure

### Prerequisites
1. Board 5583f5be connected via hdc
2. Substrate files deployed at /data/local/tmp/westlake-dayu600-substrate/
3. wl-imgboot dalvikvm at /data/local/tmp/wl-imgboot/

### Files to deploy
| File | Source | Board path |
|------|--------|------------|
| libwestlake_input.so | scratchpad-shared/wl-input-d/ | /data/local/tmp/libwestlake_input.so |
| ivs-classes.jar | Compiled from wl-input-d/*.java | /data/local/tmp/ivs-classes.jar |

### Run command
```sh
/data/local/tmp/wl-imgboot/dalvikvm \
  -Ximage:none \
  -Xbootclasspath:/data/local/tmp/westlake-dayu600-substrate/android/framework/framework.jar:/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-oj-fieldfix.jar:/data/local/tmp/westlake-dayu600-substrate/android/framework/core-jars/core-libart.jar \
  -classpath /data/local/tmp/ivs-classes.jar \
  adapter.window.InputVerifyStage
```

### Expected logcat sequence
```
IVS stage begin, ctx=android.app.ContextImpl@...
IVS test view created
IVS looper ready
IVS show ret=2 (2=on panel)
IVS so loaded
IVS tap[0] wrote to westlake_tap
WLTEST touch DOWN (600.0,960.0)
WLTEST touch UP (600.0,960.0)
WLTEST CLICK -> bg=B(orange) [INPUT CHAIN PROVEN: touch reached onClick]
WLTEXT commit "hello westlake"
WLTEXT key ENTER act=DOWN
WLTEXT key ENTER act=UP
```

---

## 9. Build Checklist

### Compile Java files
```sh
cd scratchpad-shared/wl-input-d
javac -cp framework.jar -source 1.8 -target 1.8 \
  -d /tmp/ivs-classes \
  WestlakeUpscreen.java WestlakeTouchPump.java WestlakeTextPump.java \
  WestlakeInputTestView.java WestlakeInputAttach.java InputVerifyStage.java
d8 /tmp/ivs-classes --output /tmp/ivs-classes.jar
```

### Verify .so (ARM64, 36992 bytes)
```sh
file libwestlake_input.so
# Should show: ELF 64-bit LSB shared object, ARM aarch64
md5 libwestlake_input.so
# Should show: 4fdbd3e48aadeb01ba9ae52848f6b67f
```

---

## 10. Remaining Tasks

| Task | Owner | Status |
|------|-------|--------|
| Board recovery (5583f5be offline) | Physical | Waiting |
| WLTEST chain prove | Agent-D3 | Code ready, board offline |
| WlWindowManagerSvc stub | Agent-B | Pending |
| @CriticalNative flag (class_linker) | Agent-B | Pending |
| IME text input verification | Agent-D3 | Code ready, needs board |
| OHOS MMI monitor path verification | Agent-D3 | Code ready, needs board |

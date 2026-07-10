# R-52 · MotionEvent native 桩表 vs A16 smali — host 复核报告

- **卡**：R-52（复核）· **墙**：LEDGER #52（tap → WLTEST CLICK）· **层**：L6 · **原子**：L06.A01 INPUT-CLICK-DISPATCH
- **lane**：三号 · **板**：host（无板，静态差分）· **日期**：2026-07-11
- **oracle**：`oracle/verify/atom-52.sh` → **PASS**

## 结论（TL;DR）

1. **忠实**：`libwestlake_input.so` 对 A16 `MotionEvent` 声明的 **52 个 native 全部名字级覆盖**（52/52，oracle PASS）。VelocityTracker 7/7、KeyEvent 3/3 亦覆盖（.so 共注册 62 = 52+7+3）。
2. **一处故意偏离**：A16 里 MotionEvent getter 多为 `@CriticalNative`，桩表全部注册成 **normal-sig**——是对 imageless ART 落不下 `kAccCriticalNative` 的**有据规避**，非 bug，但意味着桩表不复现 A16 的调用约定。
3. **一处设计性省略**：A16 `InputEventReceiver` 有 7 个 native,桩表未桩——因 #52 走 `dispatchTouchViaViewRoot` **旁路 InputChannel**,故非缺口。
4. **一处 LEDGER 元数据错(交 dispatcher)**：LEDGER #52 记的 `input .so v2 bd6d2a77` **盘上不存在**;在盘且 D3 验过的是 **4fdbd3e4**。
5. **未证伪任何 claimed**;#52 本就 ⏳ PENDING → **不动 LEDGER 状态**,仅提一条 FACT(so md5 指针纠错)。

## 1. 复核对象与判据

| | 路径 | 指纹 |
|---|---|---|
| native 桩表 | `scratchpad-shared/wl-input-d/libwestlake_input.so` | md5 `4fdbd3e48aadeb01ba9ae52848f6b67f`(ELF aarch64,未 strip,带 debug_info) |
| A16 参照 | `scratchpad-shared/agent-h/H-fw-decoded/smali_classes4/android/view/MotionEvent.smali` | `H-framework-5583.jar`(Android 16 / SDK 36,从 5583 板拉) |
| 枚举来源 | `scratchpad-shared/wl-input-d/INPUT-CHAIN-ANALYSIS.md:64-67` | "RegisterNatives 62 = MotionEvent 52 + VT 7 + KeyEvent 3" |

## 2. 差分结果

### 2.1 MotionEvent 52 ↔ 52(核心,忠实)
- A16 `MotionEvent.smali:1708-1947` 声明 **52** 个 `private static native`(独立 `grep -c` = 52)。
- `.so` 注册 **52** 个 normal-sig 桩:`nm` 得 52 个 `oh_adapter::N_*(_JNIEnv*,_jclass*,…)`;`strings` 对 52 个 A16 名字**逐一命中(52/52)**。
- → 数量、命名忠实。

### 2.2 故意偏离:normal-sig vs @CriticalNative
- A16 MotionEvent 多数 getter 标 `@CriticalNative`(fast JNI,无 env/jclass)。
- 桩表全部 `(_JNIEnv*, _jclass*, …)` 即 normal 静态 JNI 约定(符号名 `WestlakeInput_registerAllNormal`)。
- 原因(`INPUT-CHAIN-ANALYSIS.md:106-112`,墙 #10-16):imageless OHOS ART 从不从 dex 注解落 `kAccCriticalNative`,critical 约定调用会把 env/jclass 当参数入栈 → 崩/ULE。故 input 路径避开 critical,注册 normal 桩。
- **判定**:有据的规避,不是缺陷;但如实记:桩表不复现 A16 的 calling convention。

### 2.3 设计性省略:InputEventReceiver 7 未桩
- A16 `InputEventReceiver.smali` 声明 7 个 native(`nativeInit` / `nativeConsumeBatchedInputEvents` / `nativeFinishInputEvent` / …)。
- 桩表 0。
- 但 #52 证过的链是 `westlake_tap → OHInputBridge::dispatchTouchViaViewRoot → OHTouchInjector.dispatchTouchOnMain`,直接把 `MotionEvent` 塞进 focused `ViewRootImpl`(反射),**绕开 InputChannel / InputEventReceiver**。
- → 非缺口,是旁路设计的必然。

### 2.4 旁表(informational)
- **VelocityTracker**:A16=7,桩=7。作用:`View.dispatchTouchEvent` 首触调 `VelocityTracker.nativeInitialize` → 若无桩则 `UnsatisfiedLinkError` 中止派发。
- **KeyEvent**:A16=3,桩=3(`nativeKeyCodeFromString` / `nativeKeyCodeToString` / `nativeNextId`)。

### 2.5 LEDGER 元数据错(FACT · 交 dispatcher)
- `state/LEDGER.md:69` / `archive/…/REAL-WALL-LEDGER.md:66` 记 `input .so v2 bd6d2a77`。
- 盘上无 `bd6d2a77`;`find` 全仓仅 `4fdbd3e4`;`ARTIFACT-INVENTORY.txt` 无该条。
- `bd6d2a77` = 计划中的 v2 重建目标(未产)。
- **建议**:dispatcher 把 #52 的 so 指针改为 `4fdbd3e4`,或标注 "v2 bd6d2a77 未产"。

## 3. 残留 / 诚实边界

- host 名字级覆盖 **≠** 桩语义忠实。本复核证**名字/数量/签名覆盖**,未逐桩证行为(如 `nativeGetAction` 是否真返回 obtain 时存入的 action)。
- 桩语义的证据在 **on-device D3**(`archive/whiteboard-era/AGENT-COORD.md:2025` "源码 wl-input-d(4fdbd3e4)✅ D3 已验证":`WLTEST touch DOWN→UP→CLICK` + 面板 blue→orange)。host 静态无法复现设备行为。
- 真·墙 #52 PASS(设备 tap→CLICK)需:上板跑 `scratchpad-shared/wl-input-d/input-verify.sh` + 产出 v2(`bd6d2a77`)。**源 `ensure_motionevent_stub_normal.cpp` 已丢**,现仅存 `4fdbd3e4` 二进制(带 debug_info,可反汇编复原)。

## 4. LEDGER 影响

- 未证伪任何 claimed;#52 本就 ⏳ PENDING。**不动 #52 状态**。
- 唯一交办:一条 **FACT**(2.5 的 so md5 指针纠错)给 dispatcher 决定是否改 LEDGER 元数据。

## 5. 复现

```
$ oracle/verify/atom-52.sh
== atom-52 (host): MotionEvent native 桩表 vs A16 smali ==
artifact : scratchpad-shared/wl-input-d/libwestlake_input.so
md5      : 4fdbd3e48aadeb01ba9ae52848f6b67f  (expect 4fdbd3e48aadeb01ba9ae52848f6b67f)
md5      : LOCKED ✓
A16 声明 : MotionEvent native = 52
桩表覆盖 : 52 / 52 (名字级)
VelocityTracker    : A16=7  桩(nativeAddMovement present)=1
KeyEvent           : A16=3  桩(nativeNextId present)=1
InputEventReceiver : A16=7  桩=0(设计旁路 InputChannel → dispatchTouchViaViewRoot,非缺口)
calling-conv       : 桩全 normal-sig(nm N_*);A16 getter 多为 @CriticalNative → 故意规避
PASS
```

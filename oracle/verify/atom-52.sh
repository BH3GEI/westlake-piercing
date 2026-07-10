#!/bin/bash
# oracle/verify/atom-52.sh — HOST oracle · 墙 #52 native 桩表复核(R-52 · 三号)
#
# 判据:libwestlake_input.so 是否为 A16 framework.jar 中 android.view.MotionEvent
#       声明的【每一个】native 方法都注册了 normal-sig 桩(名字级覆盖 diff)。
# host-only,无板。末行打印 PASS 或 FAIL。
# 说明:这是"桩表 vs A16 smali 忠实度"的 host 判据,不是墙 #52 的设备判据
#       (设备 tap→WLTEST CLICK 需上板跑 wl-input-d/input-verify.sh)。
set -uo pipefail
REPO="/Users/yao/Desktop/code/westlake-piercing"; cd "$REPO" || exit 1

A16="scratchpad-shared/agent-h/H-fw-decoded/smali_classes4/android/view/MotionEvent.smali"
SO="scratchpad-shared/wl-input-d/libwestlake_input.so"
WANT_MD5="4fdbd3e48aadeb01ba9ae52848f6b67f"

echo "== atom-52 (host): MotionEvent native 桩表 vs A16 smali =="
[ -f "$A16" ] || { echo "MISSING A16 smali: $A16"; echo FAIL; exit 1; }
[ -f "$SO" ]  || { echo "MISSING so: $SO"; echo FAIL; exit 1; }

md5v="$( (md5 -q "$SO" 2>/dev/null) || (md5sum "$SO" 2>/dev/null | awk '{print $1}') )"
echo "artifact : $SO"
echo "md5      : $md5v  (expect $WANT_MD5)"
if [ "$md5v" = "$WANT_MD5" ]; then echo "md5      : LOCKED ✓"
else echo "md5      : ⚠ 非锁定基线(LEDGER 记 bd6d2a77=计划 v2,盘上不存在)"; fi

# A16 声明的 MotionEvent native 方法名(去 signature、取末字段、去重)
names="$(grep -E '\.method .* native ' "$A16" | sed -E 's/\(.*//' | awk '{print $NF}' | sort -u)"
n=$(printf '%s\n' "$names" | grep -c .)
echo "A16 声明 : MotionEvent native = $n"

miss=""; cov=0
for m in $names; do
  if strings "$SO" | grep -qx "$m"; then cov=$((cov+1)); else miss="$miss $m"; fi
done
echo "桩表覆盖 : $cov / $n (名字级)"
[ -n "$miss" ] && echo "缺失桩   :$miss"

echo "-- 旁表(informational) --"
echo "VelocityTracker    : A16=7  桩(nativeAddMovement present)=$(strings "$SO" | grep -cx nativeAddMovement)"
echo "KeyEvent           : A16=3  桩(nativeNextId present)=$(strings "$SO" | grep -cx nativeNextId)"
echo "InputEventReceiver : A16=7  桩=0(设计旁路 InputChannel → dispatchTouchViaViewRoot,非缺口)"
echo "calling-conv       : 桩全 normal-sig(nm N_*);A16 getter 多为 @CriticalNative → 故意规避(imageless ART 落不下 kAccCriticalNative)"

if [ "$n" -eq 52 ] && [ "$cov" -eq "$n" ] && [ -z "$miss" ]; then echo PASS; else echo FAIL; fi

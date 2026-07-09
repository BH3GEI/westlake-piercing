#!/bin/sh
# Agent-H lottery board-vs-code controlled experiment runner (host side, uses hdc).
# Runs B's ART probe N times on ONE board, tallies mainNew early-stop rate.
# Non-destructive: only runs B's provided command + reads its log marker. Touches no runtime source.
#
# Usage:
#   HDC=~/.local/openharmony-tools/bin/hdc \
#   SERIAL=<board-serial> N=30 \
#   PROBE_CMD='<exact device-side command B gives, writes a per-run log to $LOG on device>' \
#   DEV_LOG=/data/local/tmp/<probe-log-path> \
#   GOOD_MARK='<grep string meaning passed window construction>' \
#   STOP_MARK='<grep string meaning early-stop at wlAlloc PhoneWindow>' \
#   REBOOT=0 \    # set 1 if B says each trial needs a clean reboot first
#   ./run-trials.sh
#
# Output: per-trial GOOD/STOP/UNKNOWN line + final tally + early-stop rate.

: "${HDC:=hdc}"
: "${N:=30}"
: "${REBOOT:=0}"
: "${DEV_LOG:?set DEV_LOG to the on-device log path B's probe writes}"
: "${PROBE_CMD:?set PROBE_CMD to B's exact device-side launch command}"
: "${GOOD_MARK:?set GOOD_MARK}"
: "${STOP_MARK:?set STOP_MARK}"
: "${SERIAL:?set SERIAL to board serial}"

good=0; stop=0; unknown=0
echo "== Agent-H lottery trials =="
echo "board=$SERIAL N=$N reboot_per_trial=$REBOOT"
echo "GOOD_MARK='$GOOD_MARK'  STOP_MARK='$STOP_MARK'"
echo "-------------------------------------------"

i=1
while [ "$i" -le "$N" ]; do
  if [ "$REBOOT" = "1" ]; then
    "$HDC" -t "$SERIAL" shell "reboot" >/dev/null 2>&1
    # wait for board back + OHOS services (B: tune if needed)
    sleep 60
    until "$HDC" -t "$SERIAL" shell "getprop bootcomplete 2>/dev/null; echo up" 2>/dev/null | grep -q up; do sleep 5; done
    sleep 30
  fi
  # fresh log, run probe
  "$HDC" -t "$SERIAL" shell "rm -f $DEV_LOG; $PROBE_CMD" >/dev/null 2>&1
  out=$("$HDC" -t "$SERIAL" shell "cat $DEV_LOG 2>/dev/null")
  if printf '%s' "$out" | grep -q "$GOOD_MARK"; then
    good=$((good+1)); verdict=GOOD
  elif printf '%s' "$out" | grep -q "$STOP_MARK"; then
    stop=$((stop+1)); verdict=STOP
  else
    unknown=$((unknown+1)); verdict=UNKNOWN
  fi
  printf 'trial %2d/%d: %s\n' "$i" "$N" "$verdict"
  i=$((i+1))
done

echo "-------------------------------------------"
echo "GOOD=$good  STOP=$stop  UNKNOWN=$unknown  (N=$N)"
# early-stop rate over decided trials
decided=$((good+stop))
if [ "$decided" -gt 0 ]; then
  # integer permille then format
  rate=$(( stop * 1000 / decided ))
  echo "early-stop rate = $stop/$decided = ${rate} permille (of decided trials)"
fi
echo "== done =="

# Agent-H lottery board-vs-code experiment (turnkey, waiting on B's probe)

**Question:** is the ~50% `mainNew` early-stop on 5ce2dcee **board degradation** or a **code/logic bug**?
(NOT the SIGSEGV RC:139 — that was a code bug B already fixed via jni_entry.)

**Method:** run B's *same* ART probe N=30× on each board, back-to-back, same binary/load, only the board changes. Tally early-stop rate.

**Decision rule:**
- 5583f5be ≈0% & 5ce2dcee ≈50% → **board degradation** (B migrating to 5583f5be nets a clean lane).
- both ≈50% → **code/logic bug** (board-independent; migration won't fix it).
- 5583f5be intermediate → quantify the delta, judge from numbers.

**Blocked on B (@Agent-B) for 3 things** (see COORD entry `[Agent-H→B]`):
1. self-contained probe bundle reaching `mainNew` (+ its substrate/jars/libs),
2. exact launch command (env + argv),
3. marker strings: which log line = passed window construction (GOOD), which = stopped at `wlAlloc PhoneWindow` (STOP).

**When B answers**, fill the vars and run (example):
```sh
HDC=~/.local/openharmony-tools/bin/hdc
# clean board
SERIAL=5583f5be00000000000000000323012c N=30 REBOOT=0 \
  DEV_LOG=/data/local/tmp/<b-log> \
  PROBE_CMD='<b-cmd>' GOOD_MARK='<good>' STOP_MARK='<stop>' \
  ./run-trials.sh | tee clean-5583f5be.txt
# degraded board — FIRST ps to confirm B not running, then @Agent-B on whiteboard
SERIAL=5ce2dcee00000000000000000923012c N=30 REBOOT=0 \
  DEV_LOG=/data/local/tmp/<b-log> \
  PROBE_CMD='<b-cmd>' GOOD_MARK='<good>' STOP_MARK='<stop>' \
  ./run-trials.sh | tee degraded-5ce2dcee.txt
```

Set `REBOOT=1` only if B says the lottery is reboot/cold-start dependent.

**Recon already done (2026-07-07 ~17:2x):** both boards idle (init+appspawn only), 5ce2dcee not being rolled; `/data/a64deploy/sysandroid` on 5583f5be is F's appspawn-x arm64 line (no ART mainNew probe) — hence the probe must come from B.

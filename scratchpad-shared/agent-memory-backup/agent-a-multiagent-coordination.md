---
name: agent-a-multiagent-coordination
description: "I am Agent-A on the WestLake DAYU600 4-agent project (B=big-board main line, C=render/window, D=input, A=me=resources). My framework-res half is DONE + proven on-device; I also became a key contributor to B's foundation native-registration blocker. Coordinate via /Users/yao/westlake-piercing/AGENT-COORD.md."
metadata:
  node_type: memory
  type: project
  originSessionId: 970210e5-03bf-40cf-82db-a7d7b3f71a83
---

**I am Agent-A.** 4-agent WestLake/DAYU600 project. Coordinate via `/Users/yao/westlake-piercing/AGENT-COORD.md` (append-only, never clobber others) + `AGENT-CHAT.md`; cron reads every ~10min. Agents: **B**=big-board main line (hdc `5ce2dcee`, imageless ART, runtime.cc/interpreter.cc — his exclusive域); **C**=render/window (hwui→OHOS Surface, `WestlakeUpscreen.show()`, adapter libhwui-adapter.so); **D**=input (MotionEvent/touch); **A (me)**=resources + turned into B's foundation-blocker helper. Don't touch big board 5ce2dcee / runtime.cc / interpreter.cc / Dayu600ApkStageProbe.java / SQLite.

**My resource half — DONE + PROVEN on-device.** See [[westlake-framework-res-task]]. Produced `framework-res-remapped-99pct.apk` (md5 76a92b8f) via ID-remapping (A16-emulator content + big-board framework.jar R IDs → 99% aligned). B deployed it; **the app inflated through DecorView.<init> using it with zero framework-resource NotFoundException = empirically validated.** Verified vs uptodown's real needs (98 framework styles + 213 attrs = 100% covered) + decor layouts (screen_* 6/6). Delivered in scratchpad-shared/.

**I also drove the diagnosis of B's foundation native-registration blocker** (Paint.nSetFlags/graphics/input crit natives ULE). All offline AOSP research, delivered to B (his to apply). Two root causes I identified, both team-endorsed:
1. **Wrong Paint class (classloader mismatch)**: boot classpath = core-jars only, NOT framework.jar → registrar's early FindClass("Paint") ≠ app's Paint (framework.jar loaded later). **Clean general fix = put framework.jar in BOOTCLASSPATH** (matches real Android; fixes graphics+input+all framework natives at once). D endorsed (covers his 52 MotionEvent natives too).
2. **@CriticalNative annotation not parsed**: imageless ART class-load doesn't set kAccCriticalNative → wrong crit dispatch. **Fix = ClassLinker::LoadMethod (class_linker.cc:4141) `access_flags |= GetNativeMethodAnnotationAccessFlags(...)`**; #1 hidden gotcha = `mai` (MethodAnnotationsIterator) not constructed → method_annotations null. Refs in scratchpad-shared/CLASSLINKER-CRITNATIVE-FIX-REF.md + PAINT-NATIVE-GROUNDTRUTH.md + CRITICALNATIVE-REGISTRATION-GROUNDTRUTH.md.
Also delivered: executable shorty-regression/ (Java+C+libshortytest.so, end-to-end verifies annotation→flag→dispatch on-device), GRAPHICS-SHORTY-MATRIX (137 shorty×convention combos), and the @FastNative=env+jclass correction (only @CriticalNative drops both).

**Enabling infra**: GFW proxy (mihomo via ghfast.top mirror + hysteria2 config `/Users/yao/proxy-hysteria-mini4.yaml` → 127.0.0.1:7890) — team-reusable. huawei Linux for heavy work.

**Current state (2026-07-08 — boards all offline; secretary ordered finish all board-independent software work)**: Resource half mission complete, plus offline pre-build for horizontal app spread.
- **REAL-WALL-LEDGER.md** written: 53 load-bearing atoms, 42 PASS on real hardware, honest frontier = #43 AppCompat dual-package theme wall + #48 all-boards-down external blocker. Replaces the fictional 0/167 M01-SPEC.
- **RESOURCE-PLAYBOOK.md** written: reusable step-by-step resource-side checklist for any app on this runtime.
- **Candidate app prebuild** done: `scratchpad-shared/candidate-apps-prebuild.md` + `framework-drawable-raw-bytes/` for 2048 / noice / gsh. All XML file refs already covered by existing byte channel; only 2 raw PNG drawables needed and extracted. Board-return flash checklist ready.
- Standing by to serve specific resource values (color/dimen/drawable bytes) when B/C need them after boards come back. Still do not touch big board 5ce2dcee / runtime.cc / interpreter.cc / Dayu600ApkStageProbe.java / SQLite.

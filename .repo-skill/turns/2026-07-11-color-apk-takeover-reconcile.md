# Turn · 2026-07-11 · color APK takeover reconciliation

## User request

Inspect current commits and on-disk state, read `state/HANDOFF-2026-07-11-color-apk-onscreen.md` carefully, then continue the previous developer's work.

## Observed

- Canonical started at `1512336c`; an older active session later committed the handoff and corrected W-003 card as `68bc6d65`.
- `worker/W-003` remained at the old base with a large dirty prototype. Its recorded `atom-49 PASS` used ART `128ba1e7…`, but later files and board deployment used ART `958117a4…`, dex `d7c420a8…`, and sidecar `e5a38c85…`; the old PASS is therefore not evidence for the current tree.
- The inherited prototype still wired GenericJni fallthrough instead of implementing the corrected ClassLinker publication/lookup fix. Its latest `inflate51` run stopped at `AssetManager.nativeGetResourceName` with SIGBUS before inflate.
- A-01 host archaeology oracle and R-52 host native-table oracle both returned PASS.
- W-002 showed the old wall-46 `~50%` claim lacked measurements and its referenced location was dead; four boards share one USB hub, so crash/reboot trials are unsafe.

## Actions

- Compressed `state/FRONTIER.md` to the bounded current frontier and aligned LEDGER/QUEUE/BOARDS with W-003 and the blocked wall-46 experiment.
- Moved A-01 and R-52 to done; moved W-002 to blocked and released 5ce2dcee.
- Preserved the corrected W-003 task definition and made its board field machine-parseable.
- Made the color APK ZIP timestamp and input ordering deterministic; locked the resulting host artifact hash in `REPO_LOCK.toml`.

## Verification

- `oracle/verify/a2oh-archaeology.sh`: PASS.
- `oracle/verify/atom-52.sh`: PASS (MotionEvent 52/52 name coverage).
- `build-color-apk.sh` twice: 2/2 same sha256 `082559aeb0e87bb9076a707e3f014938e78534fdbb6ec172c3211830275ae9c4`, 1075 bytes.
- No panel-rendering success is claimed. Correct W-003 implementation and board oracle remain next.

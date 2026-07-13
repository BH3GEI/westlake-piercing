# 2026-07-13 · OpenStrike PocketJS / OpenHarmony interactive demo

- User outcome: run the official PocketJS/OpenStrike core inside a native OpenHarmony HAP on the DAYU600 board, with real map rendering and touch controls.
- Source: pinned official `pocket-stack/open-strike` and `pocket-stack/pocket-figma` checkouts under `upstream/pocket-stack/`.
- Durable host: `upstream/pocket-stack/open-strike-ohos-hap/` contains the ArkUI XComponent host, native EGL/input bridge, Rust rasterizer, BSP collision/spawn logic, and reproducible build scripts.
- Observed on board 5ce: signed HAP installs and launches; EGL reports a 24-bit depth buffer; drag look and FIRE/movement/JUMP button events reach the runtime; de_dust2_largo renders with BSP collision.
- Latest signed local HAP before publication: SHA-256 `469b6dd55439e2305738afd9531c915e687ed73d25d4cb7196ecb83792de6255` (generated artifact, intentionally excluded from git).
- Remaining user-visible issue: official Soldier.glb geometry is present, but the current cooked NPC mesh omits material texture and locomotion animation. Fix this after the publication checkpoint.

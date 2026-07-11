# Turn · 2026-07-12 · atom-49 binding failure

- Ran the active W-003 critbind49 oracle on 5583 with ART ff2e6e15… and dex ee9954c2….
- First used current clean-branch sidecar a311b0ad…; then restored the previously deployed/#51 sidecar 20206332… for an A/B. Both runs failed at Paint.<init> to nSetFlags with UnsatisfiedLinkError.
- Disassembled the board framework dex (version 040): Paint.nSetFlags(JI)V and nGetFlags(J)I carry @CriticalNative.
- The publication/resolver patch is therefore not yet an accepted wall-49 fix. Do not update REPO_LOCK, atom-43 hash, or LEDGER to PASS.
- Next investigation: capture why the graphics registrar does not bind Paint (registrar ABI/signature or classloader timing), with a value oracle still required.

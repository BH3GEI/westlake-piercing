# Turn · 2026-07-12 · W-003 atom-49 clean relink PASS

- Audited HEAD: §2 (A)(B) already in committed patches (9bd1693b+); prior RESULT PASS was not hash-locked.
- Stashed unrelated GenericJni/#51 dirt; rebuilt three patched objs + `link-libart` from clean HEAD.
- Deployed ART `0742f1c4…` to 5583; aligned critbind49 launcher with fontsmoke/w001 APEX env.
- `oracle/verify/atom-49.sh` → `crit-bind nGetFlags=5 expected=5 ok normal=ok` then atom-43 PASS.
- Synced `atom-43`/`atom-49` KNOWN_ART_SHA + REPO_LOCK `w001_substrate_art` / `w001_oracle_pass`.
- Removed accidental `build-ohos-arm64` binary/trace from tracking; gitignore that tree.

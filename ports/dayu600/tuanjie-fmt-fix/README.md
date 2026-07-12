# tuanjie-fmt-fix — OH pixel-format shim that un-blacks the Tuanjie il2cpp hap

Fixes the DAYU600 5ce black screen for the OH-native Tuanjie/Unity `.hap`
(`com.tuanjie.ohmin`). Root cause + full evidence:
`evidence/tuanjie-oh-hap-fmtfix-2026-07-13/EVIDENCE.md`.

One line: the engine passes Android `RGBA_8888 = 1` to OH `SET_FORMAT`, but OH `1 = CLUT1`
(unusable) and OH `RGBA_8888 = 12`; the allocator rejects it → no buffer → black. This shim
remaps it.

## Files
- `wl_fmt_shim.c`   — the interposer (2 hooks: SET_FORMAT remap + eglCreateWindowSurface force).
- `build.sh`        — compile with the OH NDK clang → `libwlfmtshim.so` (aarch64).
- `patch_rename.py` — rename `libtuanjie.so`'s two UND imports in `.dynstr` (same length) so it
                      binds to the shim deterministically.
- `zipalign_hap.py` — re-pad all STORED hap entries to 4096 after repack (mmap requirement).
- `libwlfmtshim.so` — prebuilt shim (12 KB).

## Reproduce (host = this Mac; tools under ~/command-line-tools/sdk/default)
```
# 1. build shim
bash build.sh
# 2. unpack colleague hap, inject
java -jar $OH/toolchains/lib/app_unpacking_tool.jar --mode hap --hap-path IN.hap --out-path U --force true
cp libwlfmtshim.so U/libs/arm64-v8a/
patchelf --add-needed libwlfmtshim.so U/libs/arm64-v8a/libtuanjie.so
python3 patch_rename.py U/libs/arm64-v8a/libtuanjie.so
# 3. repack + page-align + resign for 5ce
java -jar $OH/toolchains/lib/app_packing_tool.jar --mode hap --json-path U/module.json \
    --lib-path U/libs --ets-path U/ets --resources-path U/resources --index-path U/resources.index \
    --pack-info-path U/pack.info --rpcid-path U/rpcid.sc --pkg-context-path U/pkgContextInfo.json \
    --out-path out.hap --force true
python3 zipalign_hap.py out.hap out-aligned.hap
bash ../oh-xcomponent-hap/resign-oh-hap.sh out-aligned.hap fixed-5ce.hap
# 4. deploy (uninstall first: colleague profile type differs from ours)
hdc -t 5ce uninstall com.tuanjie.ohmin ; hdc -t 5ce install fixed-5ce.hap
hdc -t 5ce shell aa start -a TuanjiePlayerAbility -b com.tuanjie.ohmin
```

Note: a 3rd hook (`GetDefaultDisplayRotation` → 0) was tried for the 180° orientation but the
board already reports rotation 0 — orientation is a Unity-PlayerSettings/ArkTS matter, not this
shim's concern. See EVIDENCE.md "Known remaining".

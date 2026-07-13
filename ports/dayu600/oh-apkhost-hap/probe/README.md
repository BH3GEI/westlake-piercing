# Installed HAP render probe checkpoint

This directory captures the small, reviewable source delta from the external
`~/wl-artboot-probe-hvigor` project. Large runtime libraries, framework jars,
DEX files and generated HAPs stay outside Git per `ARTIFACT-INVENTORY.txt`.

`artboot.c` is no longer the earlier VM-only gate. It extracts the substrate
data into the HAP files directory, points executable-library paths back to the
HAP's native library directory, sets the same `WESTLAKE_*` environment used by
the proven shell lane, preloads the compatibility stubs, and loads the embedded
probe with `WESTLAKE_CREATE_VM=1` / `WESTLAKE_SUBSTAGE=triangleApk`.

The captured interface files show how the ArkTS page passes `filesDir` and the
resource manager to the NAPI entry. They are a source checkpoint, not a
standalone clone-and-build package: the ignored runtime inputs must first be
staged from the hash-locked inventory.

Host checkpoint (2026-07-13, W-004 extension):

- clean hvigor build: PASS, unsigned HAP `d7fab292...` (111,220,074 bytes)
- signed HAP: `aa818e7b...` (111,530,071 bytes), codesign verification PASS
- 5ce install: PASS according to the captured device session
- Android render inside the installed HAP: not promoted here; requires a fresh
  run oracle and panel/XComponent evidence

The current glue uses the renderer's RSSurfaceNode path. It does not prove that
the Android buffer is attached to the HAP's XComponent surface.

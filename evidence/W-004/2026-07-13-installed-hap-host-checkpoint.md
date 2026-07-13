# W-004 installed HAP host checkpoint

Date: 2026-07-13. Target: DAYU600 5ce.

## Tested locally

- `hvigorw clean assembleHap`: BUILD SUCCESSFUL.
- unsigned HAP: `d7fab292a778e6ea9c00562ba31c4d69de3c6d80565f7e2d1c7d33804d968e6e`,
  111,220,074 bytes.
- signed HAP: `aa818e7bbae5b0d44734bd85eba6e755714d5c1c5a0ca0da0fbfc00552807fb2`,
  111,530,071 bytes; `verify codesign success`.
- package contents include the stripped renderer `577d5099...`, libhwui
  `c9ed61d0...`, triangle APK `d9865cdf...`, probe dex `eea33dcb...`, framework
  jar and the remaining boot-classpath jars.

## Observed in the inherited device session

- `hdc install` reported `install bundle successfully` for
  `com.westlake.artboot` on 5ce.
- The earlier, smaller VM-only HAP logged `JNI_CreateJavaVM rc=0` inside the HAP
  sandbox. That is a sandbox gate, not Android-render proof.

## Not yet verified

- The newly built probe-driven HAP has not produced a fresh oracle result that
  binds its launch to a new Android frame.
- Its current glue uses the renderer's RSSurfaceNode overlay rather than proving
  that `RenderProxy::setSurface` receives the HAP XComponent window.
- Therefore this checkpoint must not advance LEDGER #53 or claim a launcher-
  hosted Android UI.

Source checkpoint: `ports/dayu600/oh-apkhost-hap/probe/`.

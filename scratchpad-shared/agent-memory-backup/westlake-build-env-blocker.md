---
name: westlake-build-env-blocker
description: "The one thing blocking the uptodown fix — patching framework.jar requires regenerating the dex2oat boot image, which needs a Linux OHOS build host ($HOME/openharmony + $HOME/tools/dex2oat64). This Mac has the OHOS clang but NOT the boot-regen toolchain. Big-board arm64 port = separate hard stop."
metadata: 
  node_type: memory
  type: project
  originSessionId: 970210e5-03bf-40cf-82db-a7d7b3f71a83
---

**Boot-image rebuild is the gate.** Any framework.jar smali fix (e.g. the uptodown [[westlake-uptodown-firstframe-status]] ActivityThread guard) must be recompiled into the dex2oat boot image (30 segments: boot.{art,oat,vdex} + 9× boot-<jar>.*). The repo's boot-regen (`REPRODUCE.md §5C` / `docs/reference_boot_regen_cycle`) drives host **`$HOME/tools/dex2oat64`** (`--instruction-set=arm --base=0x70000000 --compiler-filter=speed`) over the 10 BCP jars, from a Linux `$HOME/openharmony` OHOS source tree.

**What this Mac (Darwin arm64) HAS:** OHOS SDK clang at `/Users/yao/a2oh-source-audit/ohos-sdk/native/llvm/bin/clang` (can target arm-linux-ohos — used it to build libhwui). So native shims / the C++ bridge (`liboh_adapter_bridge.so`) are in principle buildable here (though the bridge build_adapter.sh expects OHOS internal headers under $HOME/openharmony).

**What this Mac LACKS (the blocker):** no `$HOME/openharmony` OHOS source tree; no runnable `dex2oat64` (the only dex2oat on disk, `westlake-local-build/art-latest/build-bionic-arm64/bin/dex2oat`, is a **Linux ARM64 ELF — cannot run on Darwin**). So **the boot image cannot be regenerated on this Mac.**

**Options to unblock (asked user 2026-07-06, no answer yet):** (1) a Linux machine / the project's original build host — cleanest; (2) run the Linux-arm64 dex2oat in a Linux-arm64 Docker container on the Mac with pulled BCP jars — plausible, multi-hour, uncertain; (3) bridge-only JNI hack from child_main.cpp (buildable but fragile, crash is inside the Java bind flow); (4) pause.

**Big board (DAYU600, arm64) = separate HARD STOP:** the core `liboh_android_runtime.so` is a hand-binary-patched 32-bit blob (ce319431→f82d8cdc→16e08711, literal ARM-opcode edits to a stripped ELF) with no complete source and no way to cross 32→64-bit. Every other component is retargetable but they all plug INTO that runtime, which cannot be produced for arm64. **Shelve the arm64 port.** See [[westlake-small-board-real-deployment]].

---
name: westlake-small-board-real-deployment
description: "The \"small board\" (hdc dd011a41...) is the REAL WestLake deployment — DAYU200/RK3568 32-bit ARM running stock Android apps (noice + Material Catalog) end-to-end via appspawn-x. Official repo = github.com/A2OH/westlake-piercing (REPRODUCE.md). My earlier DAYU600 Java-Proxy/wireframe work was a detour."
metadata: 
  node_type: memory
  type: project
  originSessionId: 970210e5-03bf-40cf-82db-a7d7b3f71a83
---

Discovered 2026-07-06: the user has TWO boards. The **small board** (hdc serial `dd011a41...`, 720x1280) is a pre-built **WestLake reference deployment** the user received — NOT their own setup. It is **DAYU200 / RK3568, 32-bit ARM** and runs **stock Android APKs end-to-end** (noice `com.github.ashutoshgngwr.noice`, Material Catalog `io.material.catalog`) with real UI rendering (hundreds of hwui RenderNodes, real frames swapped to the OHOS Surface). The **big board = DAYU600 = arm64** (different arch).

**Official source of truth: `github.com/A2OH/westlake-piercing`** (clone it; read `STATUS.md` → `REPRODUCE.md` → `docs/`). Follow it directly instead of reverse-engineering the board.

**The correct architecture** (confirmed, and it means my whole DAYU600 session was a detour):
- appspawn-x (OHOS AOSP-app spawner) + `liboh_android_runtime.so` (ART+JNI+framework natives, **un-rebuildable fixed 32-bit blob md5 16e08711 — do NOT rebuild**) + `liboh_adapter_bridge.so` (C++ JNI bridge, locally buildable, md5 2967c30c) + `libhwui.so` (md5 8b8f84ec) + patched `framework.jar` (md5 15396933) recompiled into a dex2oat boot image.
- ServiceManager is done via a REAL concrete Stub subclass **`com.android.internal.os.OHServiceManagerRuntimeShim`** wired by native vtable fixups (`[FIXA-DIAG-OVR]`), **NOT** Java dynamic Proxy. My reconstructed OHServiceManager.java / Java-Proxy adapter path on DAYU600 was the wrong approach — the broken ART dynamic Proxy is irrelevant here.

**Bring-up (after every reboot) — the single-instance rule is critical:** kill ALL appspawn-x first, then `start_asx.sh` (specific LD_PRELOAD chain: libsetgidhook:libw14supp:libdnshook:libjdnshook:libnetlog:libv4force), sleep ~16, `chmod 0666`+`chcon u:object_r:appspawn_socket:s0 /dev/unix/socket/AppSpawnX`, wake screen, `bpfgrant <uid> oh_sock_permission_map`. **"Two appspawn-x = socket conflict = all apps fail"** — verify exactly ONE via `grep -l setgidhook /proc/*/maps`. My repeated launches left 3 instances → that was why apps "crashed"; the clean single-instance bring-up (script `repro_noice.sh`/`repro_uptodown.sh` in scratchpad) fixed it. Launch: `aa start -a <MainActivity> -b <bundle>` (cold launch after force-stop; unlock screen with `uitest uiInput swipe 360 1200 360 150 1000`). See [[westlake-uptodown-firstframe-status]] and [[westlake-build-env-blocker]].

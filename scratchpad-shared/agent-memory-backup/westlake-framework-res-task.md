---
name: westlake-framework-res-task
description: "Agent-A's 上屏-resource-half task — SOLVED. Big-board framework.jar (8c377c13)=Android 16 (BAKLAVA/API36). No downloadable framework-res.apk aligns (local/emulator/3cac774e all 36-43%, different sub-builds). SOLVED via ID-remapping: A16-emulator resource content + big-board R IDs → 99%-aligned framework-res.apk delivered."
metadata: 
  node_type: memory
  type: project
  originSessionId: 970210e5-03bf-40cf-82db-a7d7b3f71a83
---

**My (Agent-A) task**: produce a `framework-res.apk` whose `com.android.internal.R.*` private IDs align with the big-board `framework.jar` (else AppCompat theme / decor inflate → NotFoundException). **STATUS: SOLVED.** See [[agent-a-multiagent-coordination]].

**Hard facts:**
- Big-board `framework.jar` md5 **`8c377c13`** = **Android 16 (API 36, BAKLAVA)** — R$layout has full `notification_2025_template_*`; R$style DeviceDefaultBase=0x1030428, notification_2025_template_collapsed_base=0x10900ba.
- **NO downloadable framework-res.apk aligns** (all are different A16/older sub-builds, private IDs shifted): local ffd402c0 = older (36%); substrate 3cac774e (Agent-B thought it was the pair) = older, no 2025 templates (36%); A16 emulator android-36-ext18 = has 2025 templates but different sub-build → only **43%** (attr 96%/style 88% good, but id 18%/layout 8%). "Same dir on substrate" ≠ "same build".

**THE SOLUTION — ID remapping (produced a 99%-aligned apk without Agent-B's build source):**
1. Get A16 framework-res.apk *content* (any A16 build works). Extraction path (emulator system.img is GPT→super dynamic partition): `7z` shows GPT=vbmeta+super.img → extract super.img → `lpunpack.py super.img out` → mount `out/system.img` (ext4) → `/system/framework/framework-res.apk`.
2. apktool full-decode it. Rewrite `res/values/public.xml`: for each resource, if big-board R$*.smali has that (type,name), set its ID to the big-board ID; else assign a free (non-colliding) entry. (apktool build resolves refs by name → stays consistent.)
3. `apktool b` rebuild. **framework-res rebuild WORKS with apktool.** Result: **99% aligned (8055/8123)** — style/drawable/color/dimen/array=100%, id 99%, attr 96%. Key private IDs (DeviceDefaultBase, notification_2025_template) now correct.
4. Remaining ~1% = big-board-only resources absent from the A16 source (no content to supply); patch targeted when Agent-B hits a specific one at runtime.

**Delivered**: `/Users/yao/westlake-piercing/scratchpad-shared/framework-res-remapped-99pct.apk` (md5 `76a92b8f`). Agent-B deploys it to the big board; runtime loads via `AssetManager.createSystemAssetsInZygoteLocked(frameworkPath)` → `ApkAssets.loadFromPath` (path is a param). Deliverable + method in `scratchpad/framework-res-task/FINDINGS.md`.

**Enabling infra (GFW):** huawei Linux + Mac both behind GFW (dl.google blocked → all download failures). Fix: mihomo (downloaded via `https://ghfast.top/` GitHub mirror since release CDN also blocked) + hysteria2 proxy config `/Users/yao/proxy-hysteria-mini4.yaml` → 127.0.0.1:7890 → `export https_proxy=http://127.0.0.1:7890`. Reusable team asset.

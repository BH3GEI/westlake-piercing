# framework-shim variants (shim-strip experiment)

The runtime BCP loads dayu600-framework-shim.dex BEFORE framework.jar, so the shim's stub
classes SHADOW framework.jar's real ones. To run a real Android UI app we must let framework.jar
provide the real Context/View/widget hierarchy, while keeping the bootstrap stubs the runtime
needs (the *ServiceManager / *FrameworkInitializer / Flags classes — SystemServiceRegistry boot
references them and OHOS lacks the real services).

Device path of the active shim: `$R/apks/dayu600-framework-shim.dex` (R=/data/local/tmp/westlake-dayu600-substrate).
Original (all ~51 classes, WORKS for bootstrap) backed up on device: `dayu600-framework-shim.dex.bak` (46088 bytes).

Variants (build via extract of the shim classes + d8, see below):
- `dayu600-framework-shim-stripped.dex` (3784 B, 16 classes): bootstrap ONLY
  (ServiceManager/Initializer/Flags). TOO AGGRESSIVE — deploying it took the runtime bootstrap
  down (device went offline). Do NOT use as-is.
- `dayu600-framework-shim-conservative.dex` (27132 B, 31 classes): keeps bootstrap + os leaf
  utils (Bundle/Looper/Handler/MessageQueue/Environment/Trace) + media + servertransaction;
  strips only the Context/View/widget/app-Activity/graphics shadow layer (40 classes). TRY THIS
  NEXT (after restoring the backup and confirming the working baseline).

## Recovery (device came back)
1. Restore working baseline: `hdc shell "cp $R/apks/dayu600-framework-shim.dex.bak $R/apks/dayu600-framework-shim.dex"`
2. Confirm: run deploy-dayu600.sh, read $R/apks/probe-logs/asset-probe.txt — expect the
   `getOpPackageName` NoSuchMethodError (the known shim-strip wall) = working baseline.
3. Try conservative strip: send `dayu600-framework-shim-conservative.dex` -> the shim path, run,
   read. If bootstrap breaks (no probe output / offline), restore .bak and keep MORE classes.

## Rebuild a variant
javac all shim src+compile-stubs -> classes (cp android.jar[:framework.jar]); pick the keep .class
files into a clean dir preserving package structure; d8 --lib android.jar --min-api 23 that dir.

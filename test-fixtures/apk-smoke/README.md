# DAYU600 APK smoke fixtures

This fixture builds small, signed APK files that can also be used as
`classes.dex` containers for the DAYU600 standalone ART smoke path.

The APKs intentionally avoid Android framework APIs. They are the first gate:
prove that the DAYU600 OpenHarmony target can load and execute dex bytecode
from APK containers before moving up to Activity/UI adaptation.

Build on Windows:

```powershell
.\test-fixtures\apk-smoke\build-apks.ps1
```

Expected outputs:

- `out\hello-smoke.apk`
- `out\thread-smoke.apk`
- `out\urlzip-smoke.apk`

The programs intentionally stay quiet on success because the current DAYU600
standalone ART path does not fully initialize `PrintStream` charset plumbing.
Use the process exit code as the smoke result: `0` means pass.

They also avoid native-heavy library calls that are still known gaps in this
standalone path, including `Object.wait(long, int)` and `Deflater.init()`.

Expected DAYU600 runner:

```sh
cd /data/local/tmp/westlake-dayu600
./art/dalvikvm-pristine-plus-classfix-threadjni-pathloader-charurl2 \
  -Xbootclasspath:./core-jars/core-oj-fieldfix.jar:./core-jars/core-libart.jar:./core-jars/core-icu4j.jar:./core-jars/bouncycastle.jar:./core-jars/apache-xml.jar:./core-jars/okhttp.jar \
  -Xverify:none \
  -classpath ./apks/hello-smoke.apk \
  com.westlake.apk.HelloApkMain
```

# DAYU600 APK smoke result, 2026-07-02

Target:

- Board: HH-SCDAYU600 / DAYU600
- Hardware: `uis7885`
- OS: OpenHarmony 6.1.0.31
- HDC target: `5ce2dcee00000000000000000923012c`

Runtime:

- `/data/local/tmp/westlake-dayu600/art/dalvikvm-pristine-plus-classfix-threadjni-pathloader-charurl2`
- Boot class path:
  - `core-oj-fieldfix.jar`
  - `core-libart.jar`
  - `core-icu4j.jar`
  - `bouncycastle.jar`
  - `apache-xml.jar`
  - `okhttp.jar`

Fixture:

- `test-fixtures/apk-smoke`
- Build script: `build-apks.ps1`
- Device runner: `run-dayu600-apks.ps1`

APKs run from `/data/local/tmp/westlake-dayu600/apks`:

| APK | Main class | Result |
| --- | --- | --- |
| `hello-smoke.apk` | `com.westlake.apk.HelloApkMain` | `rc:0` |
| `thread-smoke.apk` | `com.westlake.apk.ThreadApkMain` | `rc:0` |
| `urlzip-smoke.apk` | `com.westlake.apk.UrlZipApkMain` | `rc:0` |

Observed successful markers:

```text
[dalvikvm] Native classpath open: ./apks/hello-smoke.apk (1 dex)
[dalvikvm] Calling main()...
[dalvikvm] main() returned (elapsed: 0 ms)

[dalvikvm] Native classpath open: ./apks/thread-smoke.apk (1 dex)
[dalvikvm] Calling main()...
[dalvikvm] main() returned (elapsed: 0 ms)

[dalvikvm] Native classpath open: ./apks/urlzip-smoke.apk (1 dex)
[dalvikvm] Calling main()...
[dalvikvm] main() returned (elapsed: 7 ms)
```

Meaning:

The DAYU600 OpenHarmony target can load and execute `classes.dex` from signed
APK containers through the current standalone ART runtime. This proves APK
container loading, class lookup, `main(String[])` invocation, basic threading,
and URL/URI construction.

Current limits discovered while making the fixture:

- `System.out.println()` fails through incomplete `PrintStream` charset setup.
- `Object.wait(long, int)` is still not handled in the interpreter JNI bridge.
- `java.util.zip.Deflater.init()` is not registered/loaded in this runtime path.

Next work:

- Fix the remaining core-library native gaps above.
- Port the APK runner from `main(String[])` execution toward an Activity/UI
  adapter path.

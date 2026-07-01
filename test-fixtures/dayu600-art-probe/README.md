# DAYU600 ART Probe

`ProbeMain.java` is the next step after the tiny `DynTest` smoke. It stays
small enough to run from `/data/local/tmp`, but exercises features real Android
apps need very early:

- `java.util.Properties`
- reflection and `Field.isSynthetic()`
- basic thread start/join
- class lookup through the current class loader

Known-good runtime path on the board:

```sh
cd /data/local/tmp/westlake-dayu600
timeout 25 ./art/dalvikvm-pristine-plus-classfix \
  -Xbootclasspath:./core-jars/core-oj-fieldfix.jar:./core-jars/core-libart.jar:./core-jars/core-icu4j.jar:./core-jars/bouncycastle.jar:./core-jars/apache-xml.jar:./core-jars/okhttp.jar:./art/probe.dex \
  -Xverify:none \
  ProbeMain
```

On failure, the probe exits with a bitmask:

```text
1  properties
2  reflection-methods
4  unused; older probe revisions treated a missing compiler synthetic field as failure
8  thread ran but did not update value
16 classloader-basic
32 field-isSynthetic threw
64 Thread.start threw
128 Thread.join threw InterruptedException
256 Thread.sleep threw
512 Thread.join threw IllegalMonitorStateException
1024 Thread.join threw another Throwable
```

The normal `-classpath ./art/probe.dex ProbeMain` mode should also be tested
separately. If it fails while bootclasspath mode passes, the next runtime gap is
standalone app class loader creation rather than core Java execution.

Current probe revisions only call `Field.isSynthetic()` on fields that the
compiler actually emits. They do not require a specific synthetic field name,
because that depends on the Java compiler and D8 output.

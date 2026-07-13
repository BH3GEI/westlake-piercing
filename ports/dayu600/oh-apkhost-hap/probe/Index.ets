// Index.ets — ART-boot sandbox probe page. On appear it hands the app's writable
// filesDir + resourceManager to the native module (libentry.so), which extracts the
// bundled ART runtime, sets the env, dlopens the embedded ART and calls
// JNI_CreateJavaVM — writing verdict=PASS|FAIL to filesDir/artboot-verdict.txt and
// hilog (tag ARTBOOT). No rendering; the on-screen text is just a convenience echo.
import entry from 'libentry.so';
import common from '@ohos.app.ability.common';

@Entry
@Component
struct Index {
  @State verdict: string = 'ARTBOOT: launching probe…';

  aboutToAppear(): void {
    try {
      const ctx = getContext(this) as common.UIAbilityContext;
      const filesDir: string = ctx.filesDir;
      const resMgr = ctx.resourceManager;
      this.verdict = entry.runProbe(filesDir, resMgr);
    } catch (e) {
      this.verdict = 'ARTBOOT launch error: ' + JSON.stringify(e);
    }
  }

  build() {
    Column() {
      Text('ART-boot sandbox probe')
        .fontSize(20).fontWeight(FontWeight.Bold).margin(12)
      Text(this.verdict)
        .fontSize(13).margin(12).textAlign(TextAlign.Start)
    }
    .width('100%')
    .height('100%')
  }
}

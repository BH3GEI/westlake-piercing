import entry from 'libentry.so';
import common from '@ohos.app.ability.common';
import { startOpenStrike, pulseOpenStrike } from '../pocket/openstrike.js';

@Entry
@Component
struct Index {
  @State status: string = 'Loading official OpenStrike PocketJS bundle…';
  private timer: number = -1;

  aboutToAppear(): void {
    const context = getContext(this) as common.UIAbilityContext;
    context.resourceManager.getRawFileContent('openstrike.pak').then((pak: Uint8Array): void => {
      const uiHost: Object = entry.boot();
      startOpenStrike(uiHost, entry, pak);
      this.status = '';
      this.timer = setInterval((): void => pulseOpenStrike(entry.pulse()), 16);
    }).catch((error: Object): void => {
      this.status = 'OpenStrike boot failed: ' + JSON.stringify(error);
    });
  }

  aboutToDisappear(): void { if (this.timer >= 0) clearInterval(this.timer); entry.hold(-1, false); }

  @Builder
  controlKey(label: string, mask: number) {
    Button(label).height(48).width(82).fontSize(14).fontWeight(FontWeight.Bold)
      .fontColor('#E8F0F2').backgroundColor('#B004070A').border({ width: 1, color: '#B8F34A' })
      .onTouch((event: TouchEvent): void => {
        entry.hold(mask, event.type === TouchType.Down || event.type === TouchType.Move);
      })
  }

  build() {
    Stack() {
      XComponent({ id: 'openstrike', type: XComponentType.SURFACE, libraryname: 'entry' })
        .width('100%').height('100%')
      Row() {
        Column({ space: 6 }) {
          this.controlKey('↑', 0x0010)
          Row({ space: 6 }) {
            this.controlKey('←', 0x0080); this.controlKey('↓', 0x0040); this.controlKey('→', 0x0020)
          }
        }
        Blank().width(300)
        Column({ space: 10 }) {
          this.controlKey('FIRE', 0x0200)
          this.controlKey('JUMP', 0x4000)
          this.controlKey('RELOAD', 0x8000)
        }
      }
      .width('100%').height('100%').padding({ left: 18, right: 18 })
      .alignItems(VerticalAlign.Center)
      .translate({ y: 20 })
      .hitTestBehavior(HitTestMode.Transparent)
      if (this.status !== '') {
        Text(this.status).fontSize(18).fontColor(Color.White).backgroundColor('#E004070A').padding(16)
      }
    }.width('100%').height('100%').backgroundColor('#020407')
  }
}

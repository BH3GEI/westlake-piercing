// EntryAbility.ets — minimal UIAbility that loads the XComponent page.
// @ohos.* import form (not @kit.*) so a hvigor-less ets-loader run resolves it.
import UIAbility from '@ohos.app.ability.UIAbility';
import window from '@ohos.window';
import hilog from '@ohos.hilog';

export default class EntryAbility extends UIAbility {
  onWindowStageCreate(windowStage: window.WindowStage): void {
    hilog.info(0xD00D, 'wl-glxc', 'onWindowStageCreate -> loadContent pages/Index');
    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(0xD00D, 'wl-glxc', 'loadContent failed: %{public}s', JSON.stringify(err));
      }
    });
  }
}

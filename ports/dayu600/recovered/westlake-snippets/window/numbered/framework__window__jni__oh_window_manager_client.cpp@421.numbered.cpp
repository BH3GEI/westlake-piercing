// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\16.12\framework__window__jni__oh_window_manager_client.cpp@421.html
// title: 16.12 framework/window/jni/oh_window_manager_client.cpp:421
// summary: OHWindowManagerClient::createSession</span><br><span>Create/AddWindow ?????? NEED_AVOID ??WMS ????????leash bounds??ddWindow ?????? FLAGS ?????? rect d

  409:     //           ??UpdateWindowNode(UPDATE_FLAGS) ??WindowLayoutPolicyCascade
  410:     //           computes winRect = full-display [0,0,720,1280]
  411:     //           preRect = node.windowRect = safe-area ??winRect != preRect ??diff
  412:     //           ??leashWinSurfaceNode_->SetBounds(0,0,720,1280) ??/td></tr><tr><td class=ln>413</td><td class=cd>    //           ??node.SetWindowRect(fullscreen)
  414:     //   Result: helloworld layer rendered at display [0,0,720,1280], black band
  415:     //   at Y=72..155 gone, AOSP DecorView's status-bar-inset slot now aligns
  416:     //   with display top as it expects.
  417:     //
  418:     // See also: pre-CreateWindow SetWindowFlags(NEED_AVOID) block above for
  419:     // the matching half of this two-call sequence.
  420:     {
  421:         property->SetWindowFlags(0);
  422:         auto retFs = wmsInterface->UpdateProperty(
  423:             property, OHOS::Rosen::PropertyChangeAction::ACTION_UPDATE_FLAGS);
  424:         if (retFs == OHOS::Rosen::WMError::WM_OK) {
  425:             LOGI("createSession: cleared NEED_AVOID -> fullscreen layout (UpdateProperty FLAGS OK)");
  426:         } else {
  427:             LOGW("createSession: clear NEED_AVOID failed rc=%{public}d (window may stay in safe-area)",
  428:                  static_cast<int>(retFs));
  429:         }
  430:     }
  431:  
  432:     int64_t surfaceNodeId = static_cast<int64_t>(surfaceNode->GetId());
  433:     int32_t persistentId = static_cast<int32_t>(windowId);

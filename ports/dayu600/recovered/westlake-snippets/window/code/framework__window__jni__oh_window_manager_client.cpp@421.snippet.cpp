    //           ??UpdateWindowNode(UPDATE_FLAGS) ??WindowLayoutPolicyCascade
    //           computes winRect = full-display [0,0,720,1280]
    //           preRect = node.windowRect = safe-area ??winRect != preRect ??diff
    //           ??leashWinSurfaceNode_->SetBounds(0,0,720,1280) ??/td></tr><tr><td class=ln>413</td><td class=cd>    //           ??node.SetWindowRect(fullscreen)
    //   Result: helloworld layer rendered at display [0,0,720,1280], black band
    //   at Y=72..155 gone, AOSP DecorView's status-bar-inset slot now aligns
    //   with display top as it expects.
    //
    // See also: pre-CreateWindow SetWindowFlags(NEED_AVOID) block above for
    // the matching half of this two-call sequence.
    {
        property->SetWindowFlags(0);
        auto retFs = wmsInterface->UpdateProperty(
            property, OHOS::Rosen::PropertyChangeAction::ACTION_UPDATE_FLAGS);
        if (retFs == OHOS::Rosen::WMError::WM_OK) {
            LOGI("createSession: cleared NEED_AVOID -> fullscreen layout (UpdateProperty FLAGS OK)");
        } else {
            LOGW("createSession: clear NEED_AVOID failed rc=%{public}d (window may stay in safe-area)",
                 static_cast<int>(retFs));
        }
    }
 
    int64_t surfaceNodeId = static_cast<int64_t>(surfaceNode->GetId());
    int32_t persistentId = static_cast<int32_t>(windowId);

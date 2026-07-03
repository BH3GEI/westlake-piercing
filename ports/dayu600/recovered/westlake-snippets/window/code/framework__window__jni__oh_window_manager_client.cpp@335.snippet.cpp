    // property.tokenState_=false (default) ??WMS server side reads token=nullptr
    // ??node->abilityToken_=nullptr ??FindWindowNodeWithToken(token) returns null
    // both for (a) WindowController::CreateWindow's "replace starting window
    // with main window" replacement path (line 268), and (b) CancelStartingWindow
    // on ability death (window_controller.cpp:117). Net effect: every cold start
    // creates an orphan leashWindow+startingWindow pair that force-stop never
    // cleans up ??the "white block covers desktop" leak.
    //
    // OH native WindowImpl::Create (~wm/src/window_impl.cpp:1554-1557) sets
    // tokenState_=true whenever context_->GetToken() returns non-null. We mirror
    // that. The earlier "?3.1.4.6.6 keep TokenState=false matrix" comment was
    // based on an assumption empirically invalidated by hilog evidence.
    if (token != nullptr) {
        property->SetTokenState(true);
    }
 
    // 2026-05-19: Pre-set NEED_AVOID flag so adapter's property matches the OH
    // starting window state for API<10 apps (foundation/window/window_manager/
    // wmserver/src/starting_window.cpp:262 ChangePropertyByApiVersion adds
    // WINDOW_FLAG_NEED_AVOID by default).  When AddWindow's CopyFrom copies
    // adapter property into node, the layout policy first computes safe-area
    // winRect [0,72,720,1136] (matching the inherited leash bounds), so
    // node.windowRect aligns with leash from the start ??no divergence.  Then
    // a single post-AddWindow UpdateProperty(FLAGS=0) cleanly transitions
    // safe-area ??fullscreen with a real diff that drives leash SetBounds.

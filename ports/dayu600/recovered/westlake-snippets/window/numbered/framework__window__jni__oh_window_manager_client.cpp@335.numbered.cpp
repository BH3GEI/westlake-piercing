// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__window__jni__oh_window_manager_client.cpp@335.html
// title: p1612 framework/window/jni/oh_window_manager_client.cpp:335
// summary: OHWindowManagerClient::createSession</span><br><span>?????ability token ??????????????property->SetTokenState(true)??? WMS stub ?????????????????remote ob

  323:     // property.tokenState_=false (default) ??WMS server side reads token=nullptr
  324:     // ??node->abilityToken_=nullptr ??FindWindowNodeWithToken(token) returns null
  325:     // both for (a) WindowController::CreateWindow's "replace starting window
  326:     // with main window" replacement path (line 268), and (b) CancelStartingWindow
  327:     // on ability death (window_controller.cpp:117). Net effect: every cold start
  328:     // creates an orphan leashWindow+startingWindow pair that force-stop never
  329:     // cleans up ??the "white block covers desktop" leak.
  330:     //
  331:     // OH native WindowImpl::Create (~wm/src/window_impl.cpp:1554-1557) sets
  332:     // tokenState_=true whenever context_->GetToken() returns non-null. We mirror
  333:     // that. The earlier "?3.1.4.6.6 keep TokenState=false matrix" comment was
  334:     // based on an assumption empirically invalidated by hilog evidence.
  335:     if (token != nullptr) {
  336:         property->SetTokenState(true);
  337:     }
  338:  
  339:     // 2026-05-19: Pre-set NEED_AVOID flag so adapter's property matches the OH
  340:     // starting window state for API<10 apps (foundation/window/window_manager/
  341:     // wmserver/src/starting_window.cpp:262 ChangePropertyByApiVersion adds
  342:     // WINDOW_FLAG_NEED_AVOID by default).  When AddWindow's CopyFrom copies
  343:     // adapter property into node, the layout policy first computes safe-area
  344:     // winRect [0,72,720,1136] (matching the inherited leash bounds), so
  345:     // node.windowRect aligns with leash from the start ??no divergence.  Then
  346:     // a single post-AddWindow UpdateProperty(FLAGS=0) cleanly transitions
  347:     // safe-area ??fullscreen with a real diff that drives leash SetBounds.

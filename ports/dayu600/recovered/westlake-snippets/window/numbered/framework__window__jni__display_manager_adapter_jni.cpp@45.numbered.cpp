// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__window__jni__display_manager_adapter_jni.cpp@45.html
// title: p1612 framework/window/jni/display_manager_adapter_jni.cpp:45
// summary: getDisplayInfo</span><br><span>??????????????OH Display::GetDisplayInfoWithCache()?????setContentView/Choreographer ????????Bind

   33: constexpr int kDefaultRefreshRate  = 60;
   34: constexpr int kDefaultDpi          = 320;
   35: constexpr float kDefaultDensity    = 2.0f;
   36:  
   37: OHOS::sptr<OHOS::Rosen::Display> getDisplay() {
   38:     auto display = OHOS::Rosen::DisplayManager::GetInstance().GetDefaultDisplay();
   39:     if (!display) {
   40:         LOGW("OH GetDefaultDisplay() returned null");
   41:     }
   42:     return display;
   43: }
   44:  
   45: // Resolve OH DisplayInfo via cache to avoid Binder churn on the hot
   46: // setContentView/Choreographer path.  Returns null on transient failure.
   47: OHOS::sptr<OHOS::Rosen::DisplayInfo> getDisplayInfo() {
   48:     auto d = getDisplay();
   49:     if (!d) return nullptr;
   50:     auto info = d->GetDisplayInfoWithCache();
   51:     if (!info) {
   52:         LOGW("OH Display::GetDisplayInfoWithCache() returned null");
   53:     }
   54:     return info;
   55: }
   56: }  // namespace
   57:  

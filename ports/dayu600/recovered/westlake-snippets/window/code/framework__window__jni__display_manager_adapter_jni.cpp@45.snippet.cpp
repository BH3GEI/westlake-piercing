constexpr int kDefaultRefreshRate  = 60;
constexpr int kDefaultDpi          = 320;
constexpr float kDefaultDensity    = 2.0f;
 
OHOS::sptr<OHOS::Rosen::Display> getDisplay() {
    auto display = OHOS::Rosen::DisplayManager::GetInstance().GetDefaultDisplay();
    if (!display) {
        LOGW("OH GetDefaultDisplay() returned null");
    }
    return display;
}
 
// Resolve OH DisplayInfo via cache to avoid Binder churn on the hot
// setContentView/Choreographer path.  Returns null on transient failure.
OHOS::sptr<OHOS::Rosen::DisplayInfo> getDisplayInfo() {
    auto d = getDisplay();
    if (!d) return nullptr;
    auto info = d->GetDisplayInfoWithCache();
    if (!info) {
        LOGW("OH Display::GetDisplayInfoWithCache() returned null");
    }
    return info;
}
}  // namespace
 

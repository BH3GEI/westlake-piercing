#pragma once

#include <jni.h>

#include <memory>
#include <string>
#include <vector>

#include "iremote_stub.h"
#include "zidl/window_interface.h"

class WindowCallbackAdapter : public OHOS::IRemoteStub<OHOS::Rosen::IWindow> {
public:
    WindowCallbackAdapter(JavaVM*, jobject) {}

    OHOS::Rosen::WMError UpdateWindowRect(
        const OHOS::Rosen::Rect&,
        bool,
        OHOS::Rosen::WindowSizeChangeReason,
        const std::shared_ptr<OHOS::Rosen::RSTransaction>& = nullptr) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError UpdateWindowMode(OHOS::Rosen::WindowMode) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError UpdateWindowModeSupportType(uint32_t) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError UpdateFocusStatus(bool) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError UpdateAvoidArea(
        const OHOS::sptr<OHOS::Rosen::AvoidArea>&,
        OHOS::Rosen::AvoidAreaType) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError UpdateWindowState(OHOS::Rosen::WindowState) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError UpdateWindowDragInfo(
        const OHOS::Rosen::PointInfo&,
        OHOS::Rosen::DragEvent) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError UpdateDisplayId(OHOS::Rosen::DisplayId, OHOS::Rosen::DisplayId) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError UpdateOccupiedAreaChangeInfo(
        const OHOS::sptr<OHOS::Rosen::OccupiedAreaChangeInfo>&,
        const std::shared_ptr<OHOS::Rosen::RSTransaction>& = nullptr) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError UpdateActiveStatus(bool) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::sptr<OHOS::Rosen::WindowProperty> GetWindowProperty() override
    {
        return nullptr;
    }

    OHOS::Rosen::WMError NotifyTouchOutside() override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError NotifyScreenshot() override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError NotifyScreenshotAppEvent(OHOS::Rosen::ScreenshotEventType) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError DumpInfo(const std::vector<std::string>&) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError NotifyDestroy() override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError NotifyForeground() override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError NotifyBackground() override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError NotifyWindowClientPointUp(
        const std::shared_ptr<OHOS::MMI::PointerEvent>&) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError UpdateZoomTransform(const OHOS::Rosen::Transform&, bool) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    OHOS::Rosen::WMError RestoreSplitWindowMode(uint32_t) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    void ConsumeKeyEvent(std::shared_ptr<OHOS::MMI::KeyEvent>) override {}

    OHOS::Rosen::WMError UpdateOccupiedAreaAndRect(
        const OHOS::sptr<OHOS::Rosen::OccupiedAreaChangeInfo>&,
        const OHOS::Rosen::Rect&,
        const std::shared_ptr<OHOS::Rosen::RSTransaction>& = nullptr) override
    {
        return OHOS::Rosen::WMError::WM_OK;
    }

    void NotifyForegroundInteractiveStatus(bool) override {}
    void NotifyMMIServiceOnline(uint32_t) override {}
};

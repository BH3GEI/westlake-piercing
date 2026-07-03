#pragma once

#include <cstdint>
#include <map>
#include <memory>
#include <mutex>
#include <string>

#include <jni.h>
#include "refbase.h"

namespace OHOS {
class IRemoteObject;
class Surface;

namespace Rosen {
class RSSurfaceNode;
class WindowProperty;
}  // namespace Rosen
}  // namespace OHOS

namespace oh_adapter {

struct OHWindowSession {
    int32_t sessionId = -1;
    int32_t surfaceNodeId = -1;
    int32_t displayId = 0;
    int32_t width = 0;
    int32_t height = 0;
    bool valid = false;
    int32_t wsErr = 0;
};

struct SessionEntry {
    int32_t sessionId = -1;
    int64_t surfaceNodeId = -1;
    OHOS::sptr<OHOS::IRemoteObject> sessionProxy;
    OHOS::sptr<OHOS::IRemoteObject> stageAdapter;
    OHOS::sptr<OHOS::IRemoteObject> eventChannel;
    std::shared_ptr<OHOS::Rosen::RSSurfaceNode> surfaceNode;
    OHOS::sptr<OHOS::Surface> producerSurface;
    void* ohNativeWindow = nullptr;
    uint32_t windowId = 0;
    OHOS::sptr<OHOS::Rosen::WindowProperty> windowProperty;
    bool wmsShown = false;
    bool isMainWindow = true;
    uint32_t parentWindowId = 0;
};

class OHWindowManagerClient {
public:
    static OHWindowManagerClient& getInstance();

    bool connect();
    void disconnect();

    OHWindowSession createSession(
        JavaVM* jvm,
        jobject androidWindow,
        const std::string& bundleName,
        const std::string& abilityName,
        const std::string& moduleName,
        const std::string& windowName,
        int32_t androidWindowType,
        int32_t displayId,
        int32_t requestedWidth,
        int32_t requestedHeight,
        uint64_t ohTokenAddr);

    int updateSessionRect(int32_t sessionId, int32_t x, int32_t y,
                          int32_t width, int32_t height);
    int notifyDrawingCompleted(int32_t sessionId);
    void destroySession(int32_t sessionId);
    int32_t hideWindow(int32_t sessionId);
    int32_t showWindow(int32_t sessionId);
    int64_t getSurfaceNodeId(int32_t sessionId) const;
    std::shared_ptr<OHOS::Rosen::RSSurfaceNode> getRSSurfaceNode(int32_t sessionId);
    void* getOhNativeWindow(int32_t sessionId);

private:
    OHWindowManagerClient() = default;

    bool connected_ = false;
    OHOS::sptr<OHOS::IRemoteObject> ssmProxy_;
    std::map<int32_t, SessionEntry> sessions_;
    mutable std::mutex sessionMutex_;
    int32_t nextSessionId_ = 1;
};

}  // namespace oh_adapter

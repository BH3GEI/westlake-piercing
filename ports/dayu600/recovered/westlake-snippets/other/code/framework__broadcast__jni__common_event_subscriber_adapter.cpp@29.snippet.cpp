#include "want.h"
 
#define LOG_TAG "OH_CESubscriberAdapter"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)
 
namespace oh_adapter {
 
// Cached JNI references for the callback method
static jclass g_receiverBridgeClass = nullptr;
static jmethodID g_onEventReceivedMethod = nullptr;
 
bool initCommonEventJNI(JNIEnv* env) {
    // Class moved from adapter.bridge.callback to adapter.broadcast.  Failing
    // FindClass would leak a JNI exception (NoClassDefFoundError), which the
    // call_once lambda in Java_adapter_*_OHEnvironment_nativeInitialize then
    // propagates to the Java caller as bare NCDFE with no cause.  Try the
    // current location first; clear pending exception on the legacy fallback.
    jclass clazz = env->FindClass("adapter/broadcast/CommonEventReceiverBridge");
    if (clazz == nullptr) {
        if (env->ExceptionCheck()) env->ExceptionClear();
        clazz = env->FindClass("adapter/bridge/callback/CommonEventReceiverBridge");
    }
    if (clazz == nullptr) {
        if (env->ExceptionCheck()) env->ExceptionClear();

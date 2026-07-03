// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__broadcast__jni__common_event_subscriber_adapter.cpp@29.html
// title: p1612 framework/broadcast/jni/common_event_subscriber_adapter.cpp:29

   17: #include "want.h"
   18:  
   19: #define LOG_TAG "OH_CESubscriberAdapter"
   20: #define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
   21: #define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)
   22:  
   23: namespace oh_adapter {
   24:  
   25: // Cached JNI references for the callback method
   26: static jclass g_receiverBridgeClass = nullptr;
   27: static jmethodID g_onEventReceivedMethod = nullptr;
   28:  
   29: bool initCommonEventJNI(JNIEnv* env) {
   30:     // Class moved from adapter.bridge.callback to adapter.broadcast.  Failing
   31:     // FindClass would leak a JNI exception (NoClassDefFoundError), which the
   32:     // call_once lambda in Java_adapter_*_OHEnvironment_nativeInitialize then
   33:     // propagates to the Java caller as bare NCDFE with no cause.  Try the
   34:     // current location first; clear pending exception on the legacy fallback.
   35:     jclass clazz = env->FindClass("adapter/broadcast/CommonEventReceiverBridge");
   36:     if (clazz == nullptr) {
   37:         if (env->ExceptionCheck()) env->ExceptionClear();
   38:         clazz = env->FindClass("adapter/bridge/callback/CommonEventReceiverBridge");
   39:     }
   40:     if (clazz == nullptr) {
   41:         if (env->ExceptionCheck()) env->ExceptionClear();

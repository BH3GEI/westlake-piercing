// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__android-runtime__src__android_os_MessageQueue.cpp@44.html
// title: p1612 framework/android-runtime/src/android_os_MessageQueue.cpp:44
// summary: NativeMQ</span><br><span>??epoll_create1 ??? eventfd??ativePollOnce ?????Looper??ativeWake ??? eventfd ????????drain cou

   32: #include <errno.h>
   33: #include <stdint.h>
   34: #include <stdlib.h>
   35: #include <string.h>
   36: #include <unistd.h>
   37: #include <sys/epoll.h>
   38: #include <sys/eventfd.h>
   39:  
   40: namespace android {
   41:  
   42: namespace {
   43:  
   44: struct NativeMQ {
   45:     int epfd;
   46:     int wakefd;
   47:     std::atomic<bool> polling{false};
   48: };
   49:  
   50: jlong MQ_nativeInit(JNIEnv* env, jclass /*clazz*/) {
   51:     NativeMQ* mq = new (std::nothrow) NativeMQ();
   52:     if (!mq) {
   53:         return 0;
   54:     }
   55:     mq->wakefd = eventfd(0, EFD_NONBLOCK | EFD_CLOEXEC);
   56:     if (mq->wakefd < 0) {

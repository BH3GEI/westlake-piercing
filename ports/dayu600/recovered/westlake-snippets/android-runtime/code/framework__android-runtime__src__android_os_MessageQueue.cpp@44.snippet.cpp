#include <errno.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/epoll.h>
#include <sys/eventfd.h>
 
namespace android {
 
namespace {
 
struct NativeMQ {
    int epfd;
    int wakefd;
    std::atomic<bool> polling{false};
};
 
jlong MQ_nativeInit(JNIEnv* env, jclass /*clazz*/) {
    NativeMQ* mq = new (std::nothrow) NativeMQ();
    if (!mq) {
        return 0;
    }
    mq->wakefd = eventfd(0, EFD_NONBLOCK | EFD_CLOEXEC);
    if (mq->wakefd < 0) {

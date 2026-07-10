// [DAYU600] no-op CallStack (debug stack traces; unwinding not wired on OHOS).
#include <utils/CallStack.h>
namespace android {
CallStack::CallStack() {}
CallStack::~CallStack() {}
void CallStack::update(int, int) {}
CallStack::CallStackUPtr CallStack::getCurrentInternal(int) { return CallStackUPtr(); }
void CallStack::logStackInternal(const char*, const CallStack*, android_LogPriority) {}
void CallStack::deleteStack(CallStack* s) { delete s; }
void CallStack::print(Printer&) const {}
}

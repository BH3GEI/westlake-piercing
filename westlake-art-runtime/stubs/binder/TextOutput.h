#pragma once
#include <utils/Errors.h>
#include <string_view>
namespace android {
// [DAYU600] minimal TextOutput stub — androidfw only uses it for debug ResTable dumps.
class TextOutput {
public:
  TextOutput() {} virtual ~TextOutput() {}
  virtual status_t print(const char*, size_t) { return 0; }
  virtual void moveIndent(int) {}
  virtual void pushBundle() {} virtual void popBundle() {}
  class Bundle { public: Bundle(TextOutput&) {} };
};
inline TextOutput& operator<<(TextOutput& to, const char*) { return to; }
inline TextOutput& operator<<(TextOutput& to, char) { return to; }
inline TextOutput& operator<<(TextOutput& to, int) { return to; }
extern TextOutput& aout; extern TextOutput& aerr;
}

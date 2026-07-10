// [DAYU600] Stub create_disassembler so libwestlake_art.so (dlopen RTLD_NOW) resolves the symbol.
// The runtime only needs a real disassembler for -verbose:disassembly / oatdump, not the normal
// app path, so returning nullptr is safe for launching apps.
#include "disassembler.h"
namespace art {
Disassembler* create_disassembler(InstructionSet instruction_set, DisassemblerOptions* options) {
  (void)instruction_set; (void)options;
  return nullptr;
}
}  // namespace art

// [DAYU600] Stub android::base FD-passing (cmsg.cpp is excluded from the OHOS build; the runtime
// references these but the standalone app path doesn't do SCM_RIGHTS FD passing).
#include <sys/types.h>
#include <cerrno>
#include "android-base/cmsg.h"
namespace android {
namespace base {
ssize_t SendFileDescriptorVector(borrowed_fd sockfd, const void* data, size_t len,
                                 const std::vector<int>& fds) {
  (void)sockfd; (void)data; (void)len; (void)fds; errno = ENOSYS; return -1;
}
ssize_t ReceiveFileDescriptorVector(borrowed_fd sockfd, void* data, size_t len, size_t max_fds,
                                    std::vector<unique_fd>* fds) {
  (void)sockfd; (void)data; (void)len; (void)max_fds; (void)fds; errno = ENOSYS; return -1;
}
}  // namespace base
}  // namespace android

// [DAYU600] zlib's arm64 static lib leaks an UNDEFINED reference to the x86-only SIMD CRC helper.
// It's never called on arm64; define a no-op so dlopen (RTLD_NOW) resolves it.
extern "C" void x86_cpu_enable_simd(void) {}

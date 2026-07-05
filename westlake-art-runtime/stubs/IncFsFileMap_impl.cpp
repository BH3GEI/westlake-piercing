// [DAYU600] minimal IncFsFileMap — plain mmap via android::FileMap (no incremental-fs verify).
#include "util/map_ptr.h"
#include <utils/FileMap.h>
namespace android { namespace incfs {
IncFsFileMap::IncFsFileMap() noexcept = default;
IncFsFileMap::IncFsFileMap(IncFsFileMap&&) noexcept = default;
IncFsFileMap& IncFsFileMap::operator=(IncFsFileMap&&) noexcept = default;
IncFsFileMap::~IncFsFileMap() noexcept = default;
bool IncFsFileMap::Create(int fd, off64_t offset, size_t length, const char* file_name) {
  return Create(fd, offset, length, file_name, false);
}
bool IncFsFileMap::Create(int fd, off64_t offset, size_t length, const char* file_name, bool verify) {
  (void)verify; fd_ = fd; start_block_offset_ = offset;
  map_.reset(new android::FileMap());
  if (!map_->create(file_name, fd, offset, length, true)) { map_.reset(); return false; }
  start_block_ptr_ = reinterpret_cast<const uint8_t*>(map_->getDataPtr());
  return true;
}
bool IncFsFileMap::CreateForceVerification(int fd, off64_t o, size_t l, const char* n, bool v) {
  return Create(fd, o, l, n, v);
}
const void* IncFsFileMap::unsafe_data() const { return start_block_ptr_; }
size_t IncFsFileMap::length() const { return map_ ? map_->getDataLength() : 0; }
off64_t IncFsFileMap::offset() const { return start_block_offset_; }
const char* IncFsFileMap::file_name() const { return map_ ? map_->getFileName() : ""; }
bool IncFsFileMap::Verify(const uint8_t* const&, const uint8_t* const&, const uint8_t**) const { return true; }
}}
extern "C" void add_sysprop_change_callback(void (*)(void), int) {}
namespace android { void add_sysprop_change_callback(void (*)(void), int) {} }

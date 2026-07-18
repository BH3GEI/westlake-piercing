/*
 * xz_stubs.cc — inert art::XzCompress / art::XzDecompress for the westlake
 * OHOS relink.
 *
 * WHY THESE ARE SAFE AS EMPTY BODIES
 * ----------------------------------
 * The real definitions live in libelffile/elf/xz_utils.cc, which this build
 * excludes: it #includes the 7-Zip / LZMA SDK C sources from AOSP
 * external/lzma/C (7zCrc.c, Xz.c, XzEnc.c, ...) and that tree is not part of
 * the westlake source set. Excluding it left art::XzCompress/XzDecompress as
 * undefined relocations in libwestlake_art.so, which is enough on its own to
 * fail an RTLD_NOW dlopen — even though nothing we run ever calls them.
 *
 * Both symbols are reachable only from the dex2oat / debug-info side of ART:
 *
 *   XzCompress   — called by the ELF debug-info writer to produce the
 *                  xz-compressed .gnu_debugdata (mini-debug-info) section when
 *                  *generating* an OAT/ELF file.
 *   XzDecompress — called when *reading* that section back, i.e. by the
 *                  symbolizing/unwinding path over an OAT built with
 *                  mini-debug-info.
 *
 * libwestlake_art.so is loaded as an in-process runtime (interpreter + JNI);
 * it does not run dex2oat and does not symbolize mini-debug-info, so neither
 * function is on any executed path. Should that ever change, the failure mode
 * is visible rather than silent: XzCompress leaves `dst` empty, so the writer
 * emits a zero-length section instead of a corrupt one, and XzDecompress
 * likewise yields no symbols rather than garbage. Both are strictly better
 * than the link-time failure they replace.
 *
 * The declarations come from the real xz_utils.h so that the emitted symbols
 * match the callers byte-for-byte, including the OHOS libc++ std::__n1 inline
 * namespace in the std::vector parameter.
 */

#include "elf/xz_utils.h"

namespace art {

void XzCompress([[maybe_unused]] ArrayRef<const uint8_t> src,
                [[maybe_unused]] std::vector<uint8_t>* dst,
                [[maybe_unused]] int level,
                [[maybe_unused]] size_t block_size) {
  // Intentionally empty — see file header. Leaves *dst untouched (empty).
}

void XzDecompress([[maybe_unused]] ArrayRef<const uint8_t> src,
                  [[maybe_unused]] std::vector<uint8_t>* dst) {
  // Intentionally empty — see file header. Leaves *dst untouched (empty).
}

}  // namespace art

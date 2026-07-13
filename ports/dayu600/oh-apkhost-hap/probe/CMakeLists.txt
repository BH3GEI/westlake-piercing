# CMakeLists.txt — builds libentry.so, the ART-boot sandbox probe napi module.
# Target name MUST be 'entry' → libentry.so, matching nm_modname="entry" in
# artboot.c and `import entry from 'libentry.so'` in pages/Index.ets.
cmake_minimum_required(VERSION 3.5.0)
project(artboot)

set(NATIVERENDER_ROOT_PATH ${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${NATIVERENDER_ROOT_PATH})

add_library(entry SHARED artboot.c)

find_library(hilog-lib   hilog_ndk.z)
find_library(napi-lib    ace_napi.z)
find_library(rawfile-lib rawfile.z)

# dlopen/dlsym/dlerror + pthread come from OHOS libc (linked implicitly).
target_link_libraries(entry PUBLIC
  ${hilog-lib}
  ${napi-lib}
  ${rawfile-lib})

# CMakeLists.txt — builds libentry.so (the XComponent napi module) for the hap.
# hvigor invokes this via build-profile.json5 externalNativeOptions.
# Library target name MUST be 'entry' so the output is libentry.so, matching
# the napi nm_modname="entry" and XComponent(libraryname:'entry') in Index.ets.
cmake_minimum_required(VERSION 3.5.0)
project(glxc)

set(NATIVERENDER_ROOT_PATH ${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${NATIVERENDER_ROOT_PATH})

add_library(entry SHARED gl_xcomponent.cpp)

find_library(EGL-lib EGL)
find_library(GLES-lib GLESv3)
find_library(hilog-lib hilog_ndk.z)
find_library(libace-lib ace_ndk.z)
find_library(libnapi-lib ace_napi.z)
find_library(libuv-lib uv)
find_library(libnative_window-lib native_window)

target_link_libraries(entry PUBLIC
  ${EGL-lib}
  ${GLES-lib}
  ${hilog-lib}
  ${libace-lib}
  ${libnapi-lib}
  ${libuv-lib}
  ${libnative_window-lib})

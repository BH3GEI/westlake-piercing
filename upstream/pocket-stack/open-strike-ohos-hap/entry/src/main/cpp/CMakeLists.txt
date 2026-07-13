cmake_minimum_required(VERSION 3.5.0)
project(openstrike_ohos)

add_library(entry SHARED openstrike_host.cpp)

set(RUST_LIB "${CMAKE_CURRENT_SOURCE_DIR}/../rust/target/aarch64-unknown-linux-ohos/release/libopenstrike_ohos_core.a")
add_library(openstrike_core STATIC IMPORTED)
set_target_properties(openstrike_core PROPERTIES IMPORTED_LOCATION "${RUST_LIB}")

find_library(EGL-lib EGL)
find_library(GLES-lib GLESv3)
find_library(hilog-lib hilog_ndk.z)
find_library(libace-lib ace_ndk.z)
find_library(libnapi-lib ace_napi.z)
find_library(libuv-lib uv)
find_library(libnative_window-lib native_window)
find_library(libdl-lib dl)

target_link_libraries(entry PUBLIC openstrike_core
  ${EGL-lib} ${GLES-lib} ${hilog-lib} ${libace-lib} ${libnapi-lib}
  ${libuv-lib} ${libnative_window-lib} ${libdl-lib})

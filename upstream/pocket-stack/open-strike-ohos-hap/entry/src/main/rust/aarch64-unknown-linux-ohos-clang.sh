#!/bin/sh
exec /Users/yao/command-line-tools/sdk/default/openharmony/native/llvm/bin/clang \
  -target aarch64-linux-ohos \
  --sysroot=/Users/yao/command-line-tools/sdk/default/openharmony/native/sysroot \
  -D__MUSL__ "$@"

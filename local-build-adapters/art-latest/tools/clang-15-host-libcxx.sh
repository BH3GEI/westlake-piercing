#!/usr/bin/env bash
exec /mnt/c/Users/ufop/ohos-sdk-6.0.0.47/linux/native/llvm/bin/clang-15 \
  -isystem /mnt/c/Users/ufop/ohos-sdk-6.0.0.47/linux/native/llvm/include/x86_64-unknown-linux-gnu/c++/v1 \
  "$@"

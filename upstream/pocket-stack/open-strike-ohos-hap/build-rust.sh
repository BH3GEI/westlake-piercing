#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
export CARGO_TARGET_AARCH64_UNKNOWN_LINUX_OHOS_LINKER="$ROOT/entry/src/main/rust/aarch64-unknown-linux-ohos-clang.sh"
cargo build --manifest-path "$ROOT/entry/src/main/rust/Cargo.toml" \
  --target aarch64-unknown-linux-ohos --release

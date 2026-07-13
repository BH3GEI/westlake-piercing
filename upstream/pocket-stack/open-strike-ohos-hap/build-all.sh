#!/bin/sh
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
JAVA_HOME=${JAVA_HOME:-/Users/yao/jdk17/jdk-17.0.19+10/Contents/Home}
export JAVA_HOME

OPENSTRIKE_ROOT=${OPENSTRIKE_ROOT:-$ROOT/../open-strike}
test "$(git -C "$OPENSTRIKE_ROOT" rev-parse HEAD)" = "c14b267891a781327d097ace6dad0652f330e5f4"
(cd "$OPENSTRIKE_ROOT" && bun run build:ui)
cp "$OPENSTRIKE_ROOT/dist/openstrike.pak" "$ROOT/entry/src/main/resources/rawfile/openstrike.pak"
bun "$ROOT/scripts/wrap-openstrike.ts" "$OPENSTRIKE_ROOT/dist/openstrike.js" \
  "$ROOT/entry/src/main/ets/pocket/openstrike.js"
bun "$ROOT/scripts/cook-soldier.ts" "$OPENSTRIKE_ROOT/assets/models/Soldier.glb" \
  "$ROOT/entry/src/main/rust/assets/soldier.mesh"

"$ROOT/build-rust.sh"
/Users/yao/command-line-tools/bin/hvigorw clean assembleHap --no-daemon --no-parallel
bash /Users/yao/Desktop/code/westlake-piercing/ports/dayu600/oh-xcomponent-hap/resign-oh-hap.sh \
  "$ROOT/entry/build/default/outputs/default/entry-default-unsigned.hap" \
  "$ROOT/openstrike-0.1.0-signed.hap"

shasum -a 256 "$ROOT/openstrike-0.1.0-signed.hap"

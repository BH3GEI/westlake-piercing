#!/system/bin/sh
# =============================================================================
# fix-art-libcore-mismatch.sh — DAYU600 ART/boot-image consistency repair
#
# Root cause addressed:
#   ART validates every boot-image .oat against the .jar on the runtime
#   BOOTCLASSPATH by checksum. If the jar changed without regenerating the
#   boot image, ART falls back to imageless boot, then aborts with
#   "Class mismatch for Ljava/lang/String; (objectSize X vs Y)" because the
#   boot-class classes (String, etc.) were compiled with a different field
#   layout than the runtime jar provides.
#
# Two independent runtime trees exist on 5583f5be:
#   /data/a64deploy/sysandroid        (02A / bind-mount / appspawn-x path)
#   /data/local/tmp/westlake-dayu600-substrate  (app_process64 / probe path)
#
# This script diagnoses both and offers two repair modes:
#   MODE=substrate   (default)   copy the proven substrate jars+images to sysandroid
#   MODE=regen                    run dex2oat64 on-device to rebuild images
#
# Usage:
#   hdc file send fix-art-libcore-mismatch.sh /data/local/tmp/
#   hdc shell "sh /data/local/tmp/fix-art-libcore-mismatch.sh [diagnose|repair] [substrate|regen]"
# =============================================================================
set -eu

ACTION="${1:-diagnose}"
MODE="${2:-substrate}"

SYS="/data/a64deploy/sysandroid"
SUB="/data/local/tmp/westlake-dayu600-substrate"
WORK="/data/local/tmp/westlake-boot-workdir"
LOG="/data/local/tmp/fix-art-libcore-mismatch.log"

log() { echo "[$1] $2" | tee -a "$LOG"; }
fail() { log "FAIL" "$1"; exit 1; }

checksum_file() { md5sum "$1" 2>/dev/null | awk '{print $1}'; }

# ---------------------------------------------------------------------------
# DIAGNOSE
# ---------------------------------------------------------------------------
if [ "$ACTION" = "diagnose" ]; then
    echo "=== ART/libcore mismatch diagnosis ===" | tee "$LOG"
    echo "date: $(date)" >> "$LOG"

    echo ""
    echo "--- /data/a64deploy/sysandroid (02A path) ---"
    if [ -d "$SYS/framework" ]; then
        for j in "$SYS"/framework/*.jar "$SYS"/framework/*.apk; do
            [ -f "$j" ] || continue
            echo "JAR $(basename "$j") $(checksum_file "$j")"
        done
        for b in "$SYS"/framework/arm64/boot*.oat "$SYS"/framework/arm64/boot*.art "$SYS"/framework/arm64/boot*.vdex; do
            [ -f "$b" ] || continue
            echo "BOOT $(basename "$b") $(checksum_file "$b")"
        done
        echo "libart.so $(checksum_file "$SYS/lib64/libart.so")"
    else
        echo "MISSING $SYS/framework"
    fi

    echo ""
    echo "--- substrate (proven app_process64 path) ---"
    if [ -d "$SUB/android/framework" ]; then
        for j in "$SUB/android/framework"/*.jar "$SUB/android/framework"/*.apk "$SUB/android/framework/core-jars"/*.jar; do
            [ -f "$j" ] || continue
            echo "JAR $(basename "$j") $(checksum_file "$j")"
        done
        for b in "$SUB/android/framework/arm64"/boot*.oat "$SUB/android/framework/arm64"/boot*.art "$SUB/android/framework/arm64"/boot*.vdex; do
            [ -f "$b" ] || continue
            echo "BOOT $(basename "$b") $(checksum_file "$b")"
        done
        echo "libwestlake_art.so $(checksum_file "$SUB/art/libwestlake_art.so")"
    else
        echo "MISSING $SUB"
    fi

    echo ""
    echo "--- boot image / jar consistency check (sysandroid) ---"
    # ART stores the source jar checksum inside the oat header. We cannot parse
    # it without oatdump, but we can detect obvious size/content mismatches by
    # comparing the staged jars with what the boot image was built against.
    # A robust signal: if framework.jar changed since the boot image was
    # generated, the .oat file timestamp/size will not correlate. Better:
    # compare sysandroid jars to substrate jars; if they differ, the two trees
    # are inconsistent and one must be regenerated or aligned.
    if [ -f "$SYS/framework/framework.jar" ] && [ -f "$SUB/android/framework/framework.jar" ]; then
        sys_fw="$(checksum_file "$SYS/framework/framework.jar")"
        sub_fw="$(checksum_file "$SUB/android/framework/framework.jar")"
        if [ "$sys_fw" != "$sub_fw" ]; then
            echo "MISMATCH framework.jar sys=$sys_fw sub=$sub_fw"
            echo "  => sysandroid boot images were NOT built from the current substrate framework.jar"
        else
            echo "OK framework.jar matches substrate"
        fi
    fi
    if [ -f "$SYS/framework/core-oj.jar" ] && [ -f "$SUB/android/framework/core-jars/core-oj-fieldfix.jar" ]; then
        sys_coj="$(checksum_file "$SYS/framework/core-oj.jar")"
        sub_coj="$(checksum_file "$SUB/android/framework/core-jars/core-oj-fieldfix.jar")"
        if [ "$sys_coj" != "$sub_coj" ]; then
            echo "MISMATCH core-oj sys=$sys_coj sub(core-oj-fieldfix)=$sub_coj"
        else
            echo "OK core-oj matches substrate"
        fi
    fi

    echo ""
    echo "--- runtime binary check ---"
    if [ -f "$SYS/lib64/libart.so" ]; then
        file "$SYS/lib64/libart.so" 2>/dev/null || true
    fi
    if [ -f "$SUB/art/libwestlake_art.so" ]; then
        file "$SUB/art/libwestlake_art.so" 2>/dev/null || true
    fi

    echo ""
    echo "=== diagnosis complete ==="
    echo "log: $LOG"
    exit 0
fi

# ---------------------------------------------------------------------------
# REPAIR
# ---------------------------------------------------------------------------
if [ "$ACTION" != "repair" ]; then
    echo "usage: $0 [diagnose|repair] [substrate|regen]"
    exit 1
fi

log "REPAIR" "mode=$MODE"

if [ "$MODE" = "substrate" ]; then
    log "INFO" "Aligning /data/a64deploy/sysandroid with proven substrate tree"

    # Safety: only operate on the writable /data copy, never /system.
    [ -d "$SYS" ] || fail "$SYS does not exist"
    [ -d "$SUB/android/framework" ] || fail "$SUB not deployed"

    BACKUP="/data/local/tmp/sysandroid-backup-$(date +%Y%m%d-%H%M%S)"
    mkdir -p "$BACKUP"
    cp -a "$SYS/framework" "$BACKUP/" || true
    cp -a "$SYS/lib64/libart.so" "$BACKUP/" || true
    log "INFO" "backup at $BACKUP"

    # Replace framework jars with substrate ones (matching boot images).
    # core-oj is renamed to core-oj.jar because appspawn-x kBootClasspath expects that name.
    cp -f "$SUB/android/framework/core-jars/core-oj-fieldfix.jar" "$SYS/framework/core-oj.jar"
    cp -f "$SUB/android/framework/core-jars/core-libart.jar"      "$SYS/framework/core-libart.jar"
    cp -f "$SUB/android/framework/core-jars/core-icu4j.jar"       "$SYS/framework/core-icu4j.jar"
    cp -f "$SUB/android/framework/core-jars/okhttp.jar"           "$SYS/framework/okhttp.jar"
    cp -f "$SUB/android/framework/core-jars/bouncycastle.jar"     "$SYS/framework/bouncycastle.jar"
    cp -f "$SUB/android/framework/core-jars/apache-xml.jar"       "$SYS/framework/apache-xml.jar"
    cp -f "$SUB/android/framework/adapter-mainline-stubs.jar"     "$SYS/framework/adapter-mainline-stubs.jar"
    cp -f "$SUB/android/framework/framework.jar"                  "$SYS/framework/framework.jar"
    cp -f "$SUB/android/framework/oh-adapter-framework.jar"       "$SYS/framework/oh-adapter-framework.jar"
    # adapter-runtime-bcp.jar is in substrate BCP but not in sysandroid; skip unless start_asx64.sh is updated.

    # Replace boot images with the ones generated from these exact jars.
    rm -f "$SYS/framework/arm64"/boot*.oat "$SYS/framework/arm64"/boot*.art "$SYS/framework/arm64"/boot*.vdex
    cp -f "$SUB/android/framework/arm64"/boot*.oat "$SYS/framework/arm64/"
    cp -f "$SUB/android/framework/arm64"/boot*.art "$SYS/framework/arm64/"
    cp -f "$SUB/android/framework/arm64"/boot*.vdex "$SYS/framework/arm64/"

    # Replace libart.so with the substrate ART (it exports JNI_CreateJavaVM).
    cp -f "$SUB/art/libwestlake_art.so" "$SYS/lib64/libart.so"

    # Re-bind mount so /system/android sees the updated tree.
    if mount | grep -q "/data/a64deploy/sysandroid on /system/android"; then
        umount /system/android 2>/dev/null || true
    fi
    mount -o bind "$SYS" /system/android || fail "bind mount failed"

    log "INFO" "substrate alignment done; next: run start_asx64.sh or appspawn-x"

elif [ "$MODE" = "regen" ]; then
    log "INFO" "Regenerating boot images from current /data/a64deploy/sysandroid jars"

    [ -d "$WORK" ] || fail "$WORK missing; run prepare-boot-workdir.ps1 / push it first"
    [ -x "$WORK/bin/dex2oat64" ] || fail "$WORK/bin/dex2oat64 not executable"

    rm -rf "$WORK/arm64"
    mkdir -p "$WORK/arm64"

    sh "$WORK/regen_boot_arm64.on-device.sh" "$WORK" || fail "dex2oat64 failed"

    [ -s "$WORK/arm64/boot.art" ] || fail "boot.art not generated"
    [ -s "$WORK/arm64/boot.oat" ] || fail "boot.oat not generated"

    # Deploy generated images back to sysandroid.
    rm -f "$SYS/framework/arm64"/boot*.oat "$SYS/framework/arm64"/boot*.art "$SYS/framework/arm64"/boot*.vdex
    cp -f "$WORK/arm64"/boot*.oat "$SYS/framework/arm64/"
    cp -f "$WORK/arm64"/boot*.art "$SYS/framework/arm64/"
    cp -f "$WORK/arm64"/boot*.vdex "$SYS/framework/arm64/"

    # Re-bind mount.
    if mount | grep -q "/data/a64deploy/sysandroid on /system/android"; then
        umount /system/android 2>/dev/null || true
    fi
    mount -o bind "$SYS" /system/android || fail "bind mount failed"

    log "INFO" "boot image regeneration done"
else
    fail "unknown mode: $MODE (use substrate or regen)"
fi

log "INFO" "repair complete; run '$0 diagnose' to verify"

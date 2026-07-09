.class public final Landroid/security/keystore2/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/security/keystore2/FeatureFlags; = null

.field public static final blacklist FLAG_ATTEST_MODULES:Ljava/lang/String; = "android.security.keystore2.attest_modules"

.field public static final blacklist FLAG_DISABLE_LEGACY_KEYSTORE_GET:Ljava/lang/String; = "android.security.keystore2.disable_legacy_keystore_get"

.field public static final blacklist FLAG_DISABLE_LEGACY_KEYSTORE_PUT_V2:Ljava/lang/String; = "android.security.keystore2.disable_legacy_keystore_put_v2"

.field public static final blacklist FLAG_ENABLE_DUMP:Ljava/lang/String; = "android.security.keystore2.enable_dump"

.field public static final blacklist FLAG_IMPORT_PREVIOUSLY_EMULATED_KEYS:Ljava/lang/String; = "android.security.keystore2.import_previously_emulated_keys"

.field public static final blacklist FLAG_USE_BLOB_STATE_COLUMN:Ljava/lang/String; = "android.security.keystore2.use_blob_state_column"

.field public static final blacklist FLAG_WAL_DB_JOURNALMODE_V3:Ljava/lang/String; = "android.security.keystore2.wal_db_journalmode_v3"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Landroid/security/keystore2/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/security/keystore2/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/security/keystore2/Flags;->FEATURE_FLAGS:Landroid/security/keystore2/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist attestModules()Z
    .locals 1

    .line 24
    sget-object v0, Landroid/security/keystore2/Flags;->FEATURE_FLAGS:Landroid/security/keystore2/FeatureFlags;

    invoke-interface {v0}, Landroid/security/keystore2/FeatureFlags;->attestModules()Z

    move-result v0

    return v0
.end method

.method public static greylist disableLegacyKeystoreGet()Z
    .locals 1

    .line 30
    sget-object v0, Landroid/security/keystore2/Flags;->FEATURE_FLAGS:Landroid/security/keystore2/FeatureFlags;

    invoke-interface {v0}, Landroid/security/keystore2/FeatureFlags;->disableLegacyKeystoreGet()Z

    move-result v0

    return v0
.end method

.method public static greylist disableLegacyKeystorePutV2()Z
    .locals 1

    .line 36
    sget-object v0, Landroid/security/keystore2/Flags;->FEATURE_FLAGS:Landroid/security/keystore2/FeatureFlags;

    invoke-interface {v0}, Landroid/security/keystore2/FeatureFlags;->disableLegacyKeystorePutV2()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDump()Z
    .locals 1

    .line 42
    sget-object v0, Landroid/security/keystore2/Flags;->FEATURE_FLAGS:Landroid/security/keystore2/FeatureFlags;

    invoke-interface {v0}, Landroid/security/keystore2/FeatureFlags;->enableDump()Z

    move-result v0

    return v0
.end method

.method public static greylist importPreviouslyEmulatedKeys()Z
    .locals 1

    .line 48
    sget-object v0, Landroid/security/keystore2/Flags;->FEATURE_FLAGS:Landroid/security/keystore2/FeatureFlags;

    invoke-interface {v0}, Landroid/security/keystore2/FeatureFlags;->importPreviouslyEmulatedKeys()Z

    move-result v0

    return v0
.end method

.method public static greylist useBlobStateColumn()Z
    .locals 1

    .line 54
    sget-object v0, Landroid/security/keystore2/Flags;->FEATURE_FLAGS:Landroid/security/keystore2/FeatureFlags;

    invoke-interface {v0}, Landroid/security/keystore2/FeatureFlags;->useBlobStateColumn()Z

    move-result v0

    return v0
.end method

.method public static greylist walDbJournalmodeV3()Z
    .locals 1

    .line 60
    sget-object v0, Landroid/security/keystore2/Flags;->FEATURE_FLAGS:Landroid/security/keystore2/FeatureFlags;

    invoke-interface {v0}, Landroid/security/keystore2/FeatureFlags;->walDbJournalmodeV3()Z

    move-result v0

    return v0
.end method

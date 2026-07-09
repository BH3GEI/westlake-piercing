.class public final Landroid/security/advancedprotection/AdvancedProtectionManager;
.super Ljava/lang/Object;
.source "AdvancedProtectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;,
        Landroid/security/advancedprotection/AdvancedProtectionManager$SupportDialogType;,
        Landroid/security/advancedprotection/AdvancedProtectionManager$FeatureId;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG:Ljava/lang/String; = "android.security.advancedprotection.action.SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG"

.field public static final blacklist ADVANCED_PROTECTION_SYSTEM_ENTITY:Ljava/lang/String; = "android.security.advancedprotection"

.field private static final blacklist ALL_FEATURE_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_SUPPORT_DIALOG_FEATURE:Ljava/lang/String; = "android.security.advancedprotection.extra.SUPPORT_DIALOG_FEATURE"

.field public static final blacklist EXTRA_SUPPORT_DIALOG_TYPE:Ljava/lang/String; = "android.security.advancedprotection.extra.SUPPORT_DIALOG_TYPE"

.field public static final whitelist FEATURE_ID_DISALLOW_CELLULAR_2G:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_INSTALL_UNKNOWN_SOURCES:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_USB:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_WEP:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_ENABLE_MTE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SUPPORT_DIALOG_TYPE_BLOCKED_INTERACTION:I = 0x1

.field public static final blacklist SUPPORT_DIALOG_TYPE_DISABLED_SETTING:I = 0x2

.field public static final blacklist SUPPORT_DIALOG_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AdvancedProtectionMgr"


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;",
            "Landroid/security/advancedprotection/IAdvancedProtectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/security/advancedprotection/IAdvancedProtectionService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 123
    nop

    .line 124
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 125
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 127
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 128
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 123
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_FEATURE_IDS:Ljava/util/Set;

    .line 193
    nop

    .line 194
    nop

    .line 195
    nop

    .line 196
    nop

    .line 193
    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/advancedprotection/IAdvancedProtectionService;)V
    .locals 1
    .param p1, "service"    # Landroid/security/advancedprotection/IAdvancedProtectionService;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 206
    iput-object p1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    .line 207
    return-void
.end method

.method public static blacklist createSupportIntent(II)Landroid/content/Intent;
    .locals 3
    .param p0, "featureId"    # I
    .param p1, "type"    # I

    .line 333
    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_FEATURE_IDS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.advancedprotection.action.SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 344
    const-string v1, "android.security.advancedprotection.extra.SUPPORT_DIALOG_FEATURE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string v1, "android.security.advancedprotection.extra.SUPPORT_DIALOG_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    return-object v0

    .line 338
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid type. See SUPPORT_DIALOG_TYPE_* APIs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid feature ID. See FEATURE_ID_* APIs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createSupportIntentForPolicyIdentifierOrRestriction(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 352
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    const-string/jumbo v0, "no_install_unknown_sources_globally"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    .local v0, "featureId":I
    goto :goto_0

    .line 360
    .end local v0    # "featureId":I
    :cond_0
    const-string/jumbo v0, "no_cellular_2g"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const/4 v0, 0x0

    .restart local v0    # "featureId":I
    goto :goto_0

    .line 362
    .end local v0    # "featureId":I
    :cond_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/Flags;->setMtePolicyCoexistence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    const-string/jumbo v0, "memoryTagging"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    const/4 v0, 0x4

    .line 368
    .restart local v0    # "featureId":I
    :goto_0
    invoke-static {v0, p1}, Landroid/security/advancedprotection/AdvancedProtectionManager;->createSupportIntent(II)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 366
    .end local v0    # "featureId":I
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid type. See SUPPORT_DIALOG_TYPE_* APIs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getAdvancedProtectionFeatures()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/advancedprotection/AdvancedProtectionFeature;",
            ">;"
        }
    .end annotation

    .line 310
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->getAdvancedProtectionFeatures()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAdvancedProtectionEnabled()Z
    .locals 2

    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->isAdvancedProtectionEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerAdvancedProtectionCallback(Ljava/util/concurrent/Executor;Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;

    .line 236
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "AdvancedProtectionMgr"

    const-string/jumbo v1, "registerAdvancedProtectionCallback callback already present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 241
    :cond_0
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/advancedprotection/AdvancedProtectionManager$1;-><init>(Landroid/security/advancedprotection/AdvancedProtectionManager;Ljava/util/concurrent/Executor;Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V

    .line 254
    .local v0, "delegate":Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    :try_start_0
    iget-object v1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v1, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->registerAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    nop

    .line 259
    iget-object v1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setAdvancedProtectionEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 294
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0, p1}, Landroid/security/advancedprotection/IAdvancedProtectionService;->setAdvancedProtectionEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    nop

    .line 298
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;

    .line 269
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    .line 270
    .local v0, "delegate":Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    if-nez v0, :cond_0

    .line 271
    const-string v1, "AdvancedProtectionMgr"

    const-string/jumbo v2, "unregisterAdvancedProtectionCallback callback not present"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 276
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v1, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    nop

    .line 281
    iget-object v1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

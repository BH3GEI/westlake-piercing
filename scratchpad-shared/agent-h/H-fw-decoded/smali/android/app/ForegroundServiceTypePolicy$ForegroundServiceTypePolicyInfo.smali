.class public final Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
.super Ljava/lang/Object;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForegroundServiceTypePolicyInfo"
.end annotation


# static fields
.field private static final INVALID_CHANGE_ID:J


# instance fields
.field final mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

.field final mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

.field mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

.field final mDeprecationChangeId:J

.field final mDisabledChangeId:J

.field final mForegroundOnlyPermission:Z

.field final mPermissionEnforcementFlag:Ljava/lang/String;

.field final mPermissionEnforcementFlagDefaultValue:Z

.field volatile mPermissionEnforcementFlagValue:Z

.field final mType:I


# direct methods
.method static bridge synthetic -$$Nest$mupdatePermissionEnforcementFlagIfNecessary(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "deprecationChangeId"    # J
    .param p4, "disabledChangeId"    # J
    .param p6, "allOfPermissions"    # Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;
    .param p7, "anyOfPermissions"    # Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;
    .param p8, "permissionEnforcementFlag"    # Ljava/lang/String;
    .param p9, "permissionEnforcementFlagDefaultValue"    # Z
    .param p10, "foregroundOnlyPermission"    # Z

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    .line 870
    iput-wide p2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    .line 871
    iput-wide p4, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    .line 872
    iput-object p6, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    .line 873
    iput-object p7, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    .line 874
    iput-object p8, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    .line 875
    iput-boolean p9, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagDefaultValue:Z

    .line 876
    iput-boolean p9, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    .line 877
    iput-boolean p10, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mForegroundOnlyPermission:Z

    .line 878
    return-void
.end method

.method private clearOverrideForTest(JLjava/lang/String;)V
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1033
    nop

    .line 1034
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1033
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 1035
    .local v0, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->clearOverrideForTest(JLjava/lang/String;)Z

    .line 1036
    return-void
.end method

.method private static isValidChangeId(J)Z
    .locals 2
    .param p0, "changeId"    # J

    .line 854
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private overrideChangeIdForTest(JZLjava/lang/String;)V
    .locals 4
    .param p1, "changeId"    # J
    .param p3, "enable"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1014
    invoke-static {p1, p2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    return-void

    .line 1017
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1018
    .local v0, "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1019
    .local v1, "disabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    .line 1020
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1022
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1024
    :goto_0
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v3, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v3, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v3}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 1026
    .local v2, "overrides":Lcom/android/internal/compat/CompatibilityChangeConfig;
    nop

    .line 1027
    const-string/jumbo v3, "platform_compat"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1026
    invoke-static {v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v3

    .line 1028
    .local v3, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    invoke-interface {v3, v2, p4}, Lcom/android/internal/compat/IPlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method private toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 910
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    .line 911
    const-string v0, "all of the permissions "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 915
    :cond_0
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-eqz v0, :cond_1

    .line 916
    const-string v0, "any of the permissions "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 920
    :cond_1
    return-object p1
.end method

.method private updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V
    .locals 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 924
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    .line 925
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagDefaultValue:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    .line 932
    return-void

    .line 926
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearTypeDisabledForTest(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1003
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-direct {p0, v0, v1, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->clearOverrideForTest(JLjava/lang/String;)V

    .line 1004
    return-void
.end method

.method public getForegroundServiceType()I
    .locals 1

    .line 885
    iget v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    return v0
.end method

.method public getPermissionEnforcementFlagForTest()Ljava/lang/String;
    .locals 1

    .line 1044
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredAllOfPermissionsForTest(Landroid/content/Context;)Ljava/util/Optional;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 950
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-nez v0, :cond_0

    .line 951
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 953
    :cond_0
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredAnyOfPermissionsForTest(Landroid/content/Context;)Ljava/util/Optional;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 964
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-nez v0, :cond_0

    .line 965
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 967
    :cond_0
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hasForegroundOnlyPermission()Z
    .locals 1

    .line 984
    iget-boolean v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mForegroundOnlyPermission:Z

    return v0
.end method

.method isTypeDeprecated(I)Z
    .locals 2
    .param p1, "callerUid"    # I

    .line 1008
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    invoke-static {v0, v1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    .line 1009
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1008
    :goto_0
    return v0
.end method

.method public isTypeDisabled(I)Z
    .locals 2
    .param p1, "callerUid"    # I

    .line 975
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-static {v0, v1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    .line 976
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 975
    :goto_0
    return v0
.end method

.method public setCustomPermission(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;)V
    .locals 0
    .param p1, "customPermission"    # Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    .line 939
    iput-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    .line 940
    return-void
.end method

.method public setTypeDisabledForTest(ZLjava/lang/String;)V
    .locals 2
    .param p1, "disabled"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->overrideChangeIdForTest(JZLjava/lang/String;)V

    .line 995
    return-void
.end method

.method public toPermissionString()Ljava/lang/String;
    .locals 1

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 891
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    iget v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const-string v1, " deprecationChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    iget-wide v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 895
    const-string v1, " disabledChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    iget-wide v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 897
    const-string v1, " customPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

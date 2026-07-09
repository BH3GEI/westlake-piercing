.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final PERMISSIONS_registerCallNotificationEventListener:[Ljava/lang/String;

.field static final PERMISSIONS_unregisterCallNotificationEventListener:[Ljava/lang/String;

.field static final TRANSACTION_addAutomaticZenRule:I = 0x89

.field static final TRANSACTION_allowAssistantAdjustment:I = 0x18

.field static final TRANSACTION_appCanBePromoted:I = 0xa2

.field static final TRANSACTION_applyAdjustmentFromAssistant:I = 0x65

.field static final TRANSACTION_applyAdjustmentsFromAssistant:I = 0x66

.field static final TRANSACTION_applyEnqueuedAdjustmentFromAssistant:I = 0x64

.field static final TRANSACTION_applyRestore:I = 0x92

.field static final TRANSACTION_areBubblesAllowed:I = 0x1d

.field static final TRANSACTION_areBubblesEnabled:I = 0x1e

.field static final TRANSACTION_areChannelsBypassingDnd:I = 0x3c

.field static final TRANSACTION_areNotificationsEnabled:I = 0x14

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0x13

.field static final TRANSACTION_canBePromoted:I = 0xa3

.field static final TRANSACTION_canNotifyAsPackage:I = 0x96

.field static final TRANSACTION_canShowBadge:I = 0xb

.field static final TRANSACTION_canUseFullScreenIntent:I = 0x97

.field static final TRANSACTION_cancelAllNotifications:I = 0x1

.field static final TRANSACTION_cancelNotificationFromListener:I = 0x4b

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x8

.field static final TRANSACTION_cancelNotificationsFromListener:I = 0x4c

.field static final TRANSACTION_cancelToast:I = 0x5

.field static final TRANSACTION_cleanUpCallersAfter:I = 0x6b

.field static final TRANSACTION_clearData:I = 0x2

.field static final TRANSACTION_clearRequestedListenerHints:I = 0x57

.field static final TRANSACTION_createConversationNotificationChannelForPackage:I = 0x2f

.field static final TRANSACTION_createConversationNotificationChannelForPackageFromPrivilegedListener:I = 0x5f

.field static final TRANSACTION_createNotificationChannelGroups:I = 0x20

.field static final TRANSACTION_createNotificationChannels:I = 0x21

.field static final TRANSACTION_createNotificationChannelsForPackage:I = 0x22

.field static final TRANSACTION_deleteNotificationChannel:I = 0x31

.field static final TRANSACTION_deleteNotificationChannelGroup:I = 0x37

.field static final TRANSACTION_deleteNotificationHistoryItem:I = 0x41

.field static final TRANSACTION_disallowAssistantAdjustment:I = 0x19

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x7

.field static final TRANSACTION_enqueueTextToast:I = 0x3

.field static final TRANSACTION_enqueueToast:I = 0x4

.field static final TRANSACTION_finishToken:I = 0x6

.field static final TRANSACTION_getActiveNotifications:I = 0x44

.field static final TRANSACTION_getActiveNotificationsFromListener:I = 0x55

.field static final TRANSACTION_getActiveNotificationsWithAttribution:I = 0x45

.field static final TRANSACTION_getAdjustmentDeniedPackages:I = 0xa8

.field static final TRANSACTION_getAllowedAdjustmentKeyTypes:I = 0xa6

.field static final TRANSACTION_getAllowedAssistantAdjustments:I = 0x17

.field static final TRANSACTION_getAllowedNotificationAssistant:I = 0x77

.field static final TRANSACTION_getAllowedNotificationAssistantForUser:I = 0x76

.field static final TRANSACTION_getAppActiveNotifications:I = 0x93

.field static final TRANSACTION_getAutomaticZenRule:I = 0x87

.field static final TRANSACTION_getAutomaticZenRuleState:I = 0x8e

.field static final TRANSACTION_getAutomaticZenRules:I = 0x88

.field static final TRANSACTION_getBackupPayload:I = 0x91

.field static final TRANSACTION_getBlockedChannelCount:I = 0x36

.field static final TRANSACTION_getBubblePreferenceForPackage:I = 0x1f

.field static final TRANSACTION_getConsolidatedNotificationPolicy:I = 0x7d

.field static final TRANSACTION_getConversationNotificationChannel:I = 0x2e

.field static final TRANSACTION_getConversations:I = 0x23

.field static final TRANSACTION_getConversationsForPackage:I = 0x24

.field static final TRANSACTION_getDefaultNotificationAssistant:I = 0x78

.field static final TRANSACTION_getDefaultZenPolicy:I = 0x86

.field static final TRANSACTION_getDeletedChannelCount:I = 0x35

.field static final TRANSACTION_getEffectsSuppressor:I = 0x69

.field static final TRANSACTION_getEnabledNotificationListenerPackages:I = 0x74

.field static final TRANSACTION_getEnabledNotificationListeners:I = 0x75

.field static final TRANSACTION_getHintsFromListener:I = 0x59

.field static final TRANSACTION_getHintsFromListenerNoToken:I = 0x5a

.field static final TRANSACTION_getHistoricalNotifications:I = 0x46

.field static final TRANSACTION_getHistoricalNotificationsWithAttribution:I = 0x47

.field static final TRANSACTION_getInterruptionFilterFromListener:I = 0x5c

.field static final TRANSACTION_getListenerFilter:I = 0x9b

.field static final TRANSACTION_getNotificationChannel:I = 0x2d

.field static final TRANSACTION_getNotificationChannelForPackage:I = 0x30

.field static final TRANSACTION_getNotificationChannelGroup:I = 0x38

.field static final TRANSACTION_getNotificationChannelGroupForPackage:I = 0x26

.field static final TRANSACTION_getNotificationChannelGroups:I = 0x39

.field static final TRANSACTION_getNotificationChannelGroupsForPackage:I = 0x25

.field static final TRANSACTION_getNotificationChannelGroupsFromPrivilegedListener:I = 0x63

.field static final TRANSACTION_getNotificationChannelGroupsWithoutChannels:I = 0x3a

.field static final TRANSACTION_getNotificationChannels:I = 0x32

.field static final TRANSACTION_getNotificationChannelsBypassingDnd:I = 0x3d

.field static final TRANSACTION_getNotificationChannelsForPackage:I = 0x33

.field static final TRANSACTION_getNotificationChannelsFromPrivilegedListener:I = 0x62

.field static final TRANSACTION_getNotificationDelegate:I = 0x95

.field static final TRANSACTION_getNotificationHistory:I = 0x48

.field static final TRANSACTION_getNotificationPolicy:I = 0x81

.field static final TRANSACTION_getNumNotificationChannelsForPackage:I = 0x34

.field static final TRANSACTION_getPackageImportance:I = 0x15

.field static final TRANSACTION_getPackagesBypassingDnd:I = 0x3e

.field static final TRANSACTION_getPackagesWithAnyChannels:I = 0x3f

.field static final TRANSACTION_getPopulatedNotificationChannelGroupForPackage:I = 0x27

.field static final TRANSACTION_getPrivateNotificationsAllowed:I = 0x99

.field static final TRANSACTION_getRecentBlockedNotificationChannelGroupsForPackage:I = 0x28

.field static final TRANSACTION_getRuleInstanceCount:I = 0x8d

.field static final TRANSACTION_getSnoozedNotificationsFromListener:I = 0x56

.field static final TRANSACTION_getUnsupportedAdjustmentTypes:I = 0xa5

.field static final TRANSACTION_getZenMode:I = 0x7b

.field static final TRANSACTION_getZenModeConfig:I = 0x7c

.field static final TRANSACTION_hasEnabledNotificationListener:I = 0x7a

.field static final TRANSACTION_hasSentValidBubble:I = 0x10

.field static final TRANSACTION_hasSentValidMsg:I = 0xc

.field static final TRANSACTION_hasUserDemotedInvalidMsgApp:I = 0xe

.field static final TRANSACTION_incrementCounter:I = 0xab

.field static final TRANSACTION_isAdjustmentSupportedForPackage:I = 0xa9

.field static final TRANSACTION_isImportanceLocked:I = 0x16

.field static final TRANSACTION_isInCall:I = 0x9

.field static final TRANSACTION_isInInvalidMsgState:I = 0xd

.field static final TRANSACTION_isNotificationAssistantAccessGranted:I = 0x6f

.field static final TRANSACTION_isNotificationListenerAccessGranted:I = 0x6d

.field static final TRANSACTION_isNotificationListenerAccessGrantedForUser:I = 0x6e

.field static final TRANSACTION_isNotificationPolicyAccessGranted:I = 0x80

.field static final TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x83

.field static final TRANSACTION_isPackagePaused:I = 0x40

.field static final TRANSACTION_isPermissionFixed:I = 0x42

.field static final TRANSACTION_isSystemConditionProviderEnabled:I = 0x6c

.field static final TRANSACTION_matchesCallFilter:I = 0x6a

.field static final TRANSACTION_migrateNotificationFilter:I = 0x9d

.field static final TRANSACTION_notifyConditions:I = 0x7f

.field static final TRANSACTION_onlyHasDefaultChannel:I = 0x3b

.field static final TRANSACTION_pullStats:I = 0x9a

.field static final TRANSACTION_registerCallNotificationEventListener:I = 0x9f

.field static final TRANSACTION_registerListener:I = 0x49

.field static final TRANSACTION_removeAutomaticZenRule:I = 0x8b

.field static final TRANSACTION_removeAutomaticZenRules:I = 0x8c

.field static final TRANSACTION_requestBindListener:I = 0x4f

.field static final TRANSACTION_requestBindProvider:I = 0x52

.field static final TRANSACTION_requestHintsFromListener:I = 0x58

.field static final TRANSACTION_requestInterruptionFilterFromListener:I = 0x5b

.field static final TRANSACTION_requestUnbindListener:I = 0x50

.field static final TRANSACTION_requestUnbindListenerComponent:I = 0x51

.field static final TRANSACTION_requestUnbindProvider:I = 0x53

.field static final TRANSACTION_setAdjustmentSupportedForPackage:I = 0xaa

.field static final TRANSACTION_setAdjustmentTypeSupportedState:I = 0xa4

.field static final TRANSACTION_setAssistantAdjustmentKeyTypeState:I = 0xa7

.field static final TRANSACTION_setAutomaticZenRuleState:I = 0x8f

.field static final TRANSACTION_setBubblesAllowed:I = 0x1c

.field static final TRANSACTION_setCanBePromoted:I = 0xa1

.field static final TRANSACTION_setHideSilentStatusIcons:I = 0x1b

.field static final TRANSACTION_setInterruptionFilter:I = 0x5e

.field static final TRANSACTION_setInvalidMsgAppDemoted:I = 0xf

.field static final TRANSACTION_setListenerFilter:I = 0x9c

.field static final TRANSACTION_setManualZenRuleDeviceEffects:I = 0x90

.field static final TRANSACTION_setNASMigrationDoneAndResetDefault:I = 0x79

.field static final TRANSACTION_setNotificationAssistantAccessGranted:I = 0x71

.field static final TRANSACTION_setNotificationAssistantAccessGrantedForUser:I = 0x73

.field static final TRANSACTION_setNotificationDelegate:I = 0x94

.field static final TRANSACTION_setNotificationListenerAccessGranted:I = 0x70

.field static final TRANSACTION_setNotificationListenerAccessGrantedForUser:I = 0x72

.field static final TRANSACTION_setNotificationPolicy:I = 0x82

.field static final TRANSACTION_setNotificationPolicyAccessGranted:I = 0x84

.field static final TRANSACTION_setNotificationPolicyAccessGrantedForUser:I = 0x85

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x11

.field static final TRANSACTION_setNotificationsEnabledWithImportanceLockForPackage:I = 0x12

.field static final TRANSACTION_setNotificationsShownFromListener:I = 0x54

.field static final TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x5d

.field static final TRANSACTION_setPrivateNotificationsAllowed:I = 0x98

.field static final TRANSACTION_setShowBadge:I = 0xa

.field static final TRANSACTION_setToastRateLimitingEnabled:I = 0x9e

.field static final TRANSACTION_setZenMode:I = 0x7e

.field static final TRANSACTION_shouldHideSilentStatusIcons:I = 0x1a

.field static final TRANSACTION_silenceNotificationSound:I = 0x43

.field static final TRANSACTION_snoozeNotificationUntilContextFromListener:I = 0x4d

.field static final TRANSACTION_snoozeNotificationUntilFromListener:I = 0x4e

.field static final TRANSACTION_unlockAllNotificationChannels:I = 0x2c

.field static final TRANSACTION_unlockNotificationChannel:I = 0x2b

.field static final TRANSACTION_unregisterCallNotificationEventListener:I = 0xa0

.field static final TRANSACTION_unregisterListener:I = 0x4a

.field static final TRANSACTION_unsnoozeNotificationFromAssistant:I = 0x67

.field static final TRANSACTION_unsnoozeNotificationFromSystemListener:I = 0x68

.field static final TRANSACTION_updateAutomaticZenRule:I = 0x8a

.field static final TRANSACTION_updateNotificationChannelForPackage:I = 0x2a

.field static final TRANSACTION_updateNotificationChannelFromPrivilegedListener:I = 0x61

.field static final TRANSACTION_updateNotificationChannelGroupForPackage:I = 0x29

.field static final TRANSACTION_updateNotificationChannelGroupFromPrivilegedListener:I = 0x60


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6616
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/app/INotificationManager$Stub;->PERMISSIONS_registerCallNotificationEventListener:[Ljava/lang/String;

    .line 6622
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/INotificationManager$Stub;->PERMISSIONS_unregisterCallNotificationEventListener:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    nop

    .line 654
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 653
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/INotificationManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 655
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 643
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 644
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 645
    if-eqz p1, :cond_0

    .line 648
    iput-object p1, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 649
    return-void

    .line 646
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 662
    if-nez p0, :cond_0

    .line 663
    const/4 v0, 0x0

    return-object v0

    .line 665
    :cond_0
    const-string v0, "android.app.INotificationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 666
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_1

    .line 667
    move-object v1, v0

    check-cast v1, Landroid/app/INotificationManager;

    return-object v1

    .line 669
    :cond_1
    new-instance v1, Landroid/app/INotificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 678
    packed-switch p0, :pswitch_data_0

    .line 1366
    const/4 v0, 0x0

    return-object v0

    .line 1362
    :pswitch_0
    const-string/jumbo v0, "incrementCounter"

    return-object v0

    .line 1358
    :pswitch_1
    const-string/jumbo v0, "setAdjustmentSupportedForPackage"

    return-object v0

    .line 1354
    :pswitch_2
    const-string/jumbo v0, "isAdjustmentSupportedForPackage"

    return-object v0

    .line 1350
    :pswitch_3
    const-string v0, "getAdjustmentDeniedPackages"

    return-object v0

    .line 1346
    :pswitch_4
    const-string/jumbo v0, "setAssistantAdjustmentKeyTypeState"

    return-object v0

    .line 1342
    :pswitch_5
    const-string v0, "getAllowedAdjustmentKeyTypes"

    return-object v0

    .line 1338
    :pswitch_6
    const-string/jumbo v0, "getUnsupportedAdjustmentTypes"

    return-object v0

    .line 1334
    :pswitch_7
    const-string/jumbo v0, "setAdjustmentTypeSupportedState"

    return-object v0

    .line 1330
    :pswitch_8
    const-string v0, "canBePromoted"

    return-object v0

    .line 1326
    :pswitch_9
    const-string v0, "appCanBePromoted"

    return-object v0

    .line 1322
    :pswitch_a
    const-string/jumbo v0, "setCanBePromoted"

    return-object v0

    .line 1318
    :pswitch_b
    const-string/jumbo v0, "unregisterCallNotificationEventListener"

    return-object v0

    .line 1314
    :pswitch_c
    const-string/jumbo v0, "registerCallNotificationEventListener"

    return-object v0

    .line 1310
    :pswitch_d
    const-string/jumbo v0, "setToastRateLimitingEnabled"

    return-object v0

    .line 1306
    :pswitch_e
    const-string/jumbo v0, "migrateNotificationFilter"

    return-object v0

    .line 1302
    :pswitch_f
    const-string/jumbo v0, "setListenerFilter"

    return-object v0

    .line 1298
    :pswitch_10
    const-string v0, "getListenerFilter"

    return-object v0

    .line 1294
    :pswitch_11
    const-string/jumbo v0, "pullStats"

    return-object v0

    .line 1290
    :pswitch_12
    const-string v0, "getPrivateNotificationsAllowed"

    return-object v0

    .line 1286
    :pswitch_13
    const-string/jumbo v0, "setPrivateNotificationsAllowed"

    return-object v0

    .line 1282
    :pswitch_14
    const-string v0, "canUseFullScreenIntent"

    return-object v0

    .line 1278
    :pswitch_15
    const-string v0, "canNotifyAsPackage"

    return-object v0

    .line 1274
    :pswitch_16
    const-string v0, "getNotificationDelegate"

    return-object v0

    .line 1270
    :pswitch_17
    const-string/jumbo v0, "setNotificationDelegate"

    return-object v0

    .line 1266
    :pswitch_18
    const-string v0, "getAppActiveNotifications"

    return-object v0

    .line 1262
    :pswitch_19
    const-string v0, "applyRestore"

    return-object v0

    .line 1258
    :pswitch_1a
    const-string v0, "getBackupPayload"

    return-object v0

    .line 1254
    :pswitch_1b
    const-string/jumbo v0, "setManualZenRuleDeviceEffects"

    return-object v0

    .line 1250
    :pswitch_1c
    const-string/jumbo v0, "setAutomaticZenRuleState"

    return-object v0

    .line 1246
    :pswitch_1d
    const-string v0, "getAutomaticZenRuleState"

    return-object v0

    .line 1242
    :pswitch_1e
    const-string v0, "getRuleInstanceCount"

    return-object v0

    .line 1238
    :pswitch_1f
    const-string/jumbo v0, "removeAutomaticZenRules"

    return-object v0

    .line 1234
    :pswitch_20
    const-string/jumbo v0, "removeAutomaticZenRule"

    return-object v0

    .line 1230
    :pswitch_21
    const-string/jumbo v0, "updateAutomaticZenRule"

    return-object v0

    .line 1226
    :pswitch_22
    const-string v0, "addAutomaticZenRule"

    return-object v0

    .line 1222
    :pswitch_23
    const-string v0, "getAutomaticZenRules"

    return-object v0

    .line 1218
    :pswitch_24
    const-string v0, "getAutomaticZenRule"

    return-object v0

    .line 1214
    :pswitch_25
    const-string v0, "getDefaultZenPolicy"

    return-object v0

    .line 1210
    :pswitch_26
    const-string/jumbo v0, "setNotificationPolicyAccessGrantedForUser"

    return-object v0

    .line 1206
    :pswitch_27
    const-string/jumbo v0, "setNotificationPolicyAccessGranted"

    return-object v0

    .line 1202
    :pswitch_28
    const-string/jumbo v0, "isNotificationPolicyAccessGrantedForPackage"

    return-object v0

    .line 1198
    :pswitch_29
    const-string/jumbo v0, "setNotificationPolicy"

    return-object v0

    .line 1194
    :pswitch_2a
    const-string v0, "getNotificationPolicy"

    return-object v0

    .line 1190
    :pswitch_2b
    const-string/jumbo v0, "isNotificationPolicyAccessGranted"

    return-object v0

    .line 1186
    :pswitch_2c
    const-string/jumbo v0, "notifyConditions"

    return-object v0

    .line 1182
    :pswitch_2d
    const-string/jumbo v0, "setZenMode"

    return-object v0

    .line 1178
    :pswitch_2e
    const-string v0, "getConsolidatedNotificationPolicy"

    return-object v0

    .line 1174
    :pswitch_2f
    const-string/jumbo v0, "getZenModeConfig"

    return-object v0

    .line 1170
    :pswitch_30
    const-string/jumbo v0, "getZenMode"

    return-object v0

    .line 1166
    :pswitch_31
    const-string/jumbo v0, "hasEnabledNotificationListener"

    return-object v0

    .line 1162
    :pswitch_32
    const-string/jumbo v0, "setNASMigrationDoneAndResetDefault"

    return-object v0

    .line 1158
    :pswitch_33
    const-string v0, "getDefaultNotificationAssistant"

    return-object v0

    .line 1154
    :pswitch_34
    const-string v0, "getAllowedNotificationAssistant"

    return-object v0

    .line 1150
    :pswitch_35
    const-string v0, "getAllowedNotificationAssistantForUser"

    return-object v0

    .line 1146
    :pswitch_36
    const-string v0, "getEnabledNotificationListeners"

    return-object v0

    .line 1142
    :pswitch_37
    const-string v0, "getEnabledNotificationListenerPackages"

    return-object v0

    .line 1138
    :pswitch_38
    const-string/jumbo v0, "setNotificationAssistantAccessGrantedForUser"

    return-object v0

    .line 1134
    :pswitch_39
    const-string/jumbo v0, "setNotificationListenerAccessGrantedForUser"

    return-object v0

    .line 1130
    :pswitch_3a
    const-string/jumbo v0, "setNotificationAssistantAccessGranted"

    return-object v0

    .line 1126
    :pswitch_3b
    const-string/jumbo v0, "setNotificationListenerAccessGranted"

    return-object v0

    .line 1122
    :pswitch_3c
    const-string/jumbo v0, "isNotificationAssistantAccessGranted"

    return-object v0

    .line 1118
    :pswitch_3d
    const-string/jumbo v0, "isNotificationListenerAccessGrantedForUser"

    return-object v0

    .line 1114
    :pswitch_3e
    const-string/jumbo v0, "isNotificationListenerAccessGranted"

    return-object v0

    .line 1110
    :pswitch_3f
    const-string/jumbo v0, "isSystemConditionProviderEnabled"

    return-object v0

    .line 1106
    :pswitch_40
    const-string v0, "cleanUpCallersAfter"

    return-object v0

    .line 1102
    :pswitch_41
    const-string/jumbo v0, "matchesCallFilter"

    return-object v0

    .line 1098
    :pswitch_42
    const-string v0, "getEffectsSuppressor"

    return-object v0

    .line 1094
    :pswitch_43
    const-string/jumbo v0, "unsnoozeNotificationFromSystemListener"

    return-object v0

    .line 1090
    :pswitch_44
    const-string/jumbo v0, "unsnoozeNotificationFromAssistant"

    return-object v0

    .line 1086
    :pswitch_45
    const-string v0, "applyAdjustmentsFromAssistant"

    return-object v0

    .line 1082
    :pswitch_46
    const-string v0, "applyAdjustmentFromAssistant"

    return-object v0

    .line 1078
    :pswitch_47
    const-string v0, "applyEnqueuedAdjustmentFromAssistant"

    return-object v0

    .line 1074
    :pswitch_48
    const-string v0, "getNotificationChannelGroupsFromPrivilegedListener"

    return-object v0

    .line 1070
    :pswitch_49
    const-string v0, "getNotificationChannelsFromPrivilegedListener"

    return-object v0

    .line 1066
    :pswitch_4a
    const-string/jumbo v0, "updateNotificationChannelFromPrivilegedListener"

    return-object v0

    .line 1062
    :pswitch_4b
    const-string/jumbo v0, "updateNotificationChannelGroupFromPrivilegedListener"

    return-object v0

    .line 1058
    :pswitch_4c
    const-string v0, "createConversationNotificationChannelForPackageFromPrivilegedListener"

    return-object v0

    .line 1054
    :pswitch_4d
    const-string/jumbo v0, "setInterruptionFilter"

    return-object v0

    .line 1050
    :pswitch_4e
    const-string/jumbo v0, "setOnNotificationPostedTrimFromListener"

    return-object v0

    .line 1046
    :pswitch_4f
    const-string v0, "getInterruptionFilterFromListener"

    return-object v0

    .line 1042
    :pswitch_50
    const-string/jumbo v0, "requestInterruptionFilterFromListener"

    return-object v0

    .line 1038
    :pswitch_51
    const-string v0, "getHintsFromListenerNoToken"

    return-object v0

    .line 1034
    :pswitch_52
    const-string v0, "getHintsFromListener"

    return-object v0

    .line 1030
    :pswitch_53
    const-string/jumbo v0, "requestHintsFromListener"

    return-object v0

    .line 1026
    :pswitch_54
    const-string v0, "clearRequestedListenerHints"

    return-object v0

    .line 1022
    :pswitch_55
    const-string v0, "getSnoozedNotificationsFromListener"

    return-object v0

    .line 1018
    :pswitch_56
    const-string v0, "getActiveNotificationsFromListener"

    return-object v0

    .line 1014
    :pswitch_57
    const-string/jumbo v0, "setNotificationsShownFromListener"

    return-object v0

    .line 1010
    :pswitch_58
    const-string/jumbo v0, "requestUnbindProvider"

    return-object v0

    .line 1006
    :pswitch_59
    const-string/jumbo v0, "requestBindProvider"

    return-object v0

    .line 1002
    :pswitch_5a
    const-string/jumbo v0, "requestUnbindListenerComponent"

    return-object v0

    .line 998
    :pswitch_5b
    const-string/jumbo v0, "requestUnbindListener"

    return-object v0

    .line 994
    :pswitch_5c
    const-string/jumbo v0, "requestBindListener"

    return-object v0

    .line 990
    :pswitch_5d
    const-string/jumbo v0, "snoozeNotificationUntilFromListener"

    return-object v0

    .line 986
    :pswitch_5e
    const-string/jumbo v0, "snoozeNotificationUntilContextFromListener"

    return-object v0

    .line 982
    :pswitch_5f
    const-string v0, "cancelNotificationsFromListener"

    return-object v0

    .line 978
    :pswitch_60
    const-string v0, "cancelNotificationFromListener"

    return-object v0

    .line 974
    :pswitch_61
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 970
    :pswitch_62
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 966
    :pswitch_63
    const-string v0, "getNotificationHistory"

    return-object v0

    .line 962
    :pswitch_64
    const-string v0, "getHistoricalNotificationsWithAttribution"

    return-object v0

    .line 958
    :pswitch_65
    const-string v0, "getHistoricalNotifications"

    return-object v0

    .line 954
    :pswitch_66
    const-string v0, "getActiveNotificationsWithAttribution"

    return-object v0

    .line 950
    :pswitch_67
    const-string v0, "getActiveNotifications"

    return-object v0

    .line 946
    :pswitch_68
    const-string/jumbo v0, "silenceNotificationSound"

    return-object v0

    .line 942
    :pswitch_69
    const-string/jumbo v0, "isPermissionFixed"

    return-object v0

    .line 938
    :pswitch_6a
    const-string v0, "deleteNotificationHistoryItem"

    return-object v0

    .line 934
    :pswitch_6b
    const-string/jumbo v0, "isPackagePaused"

    return-object v0

    .line 930
    :pswitch_6c
    const-string v0, "getPackagesWithAnyChannels"

    return-object v0

    .line 926
    :pswitch_6d
    const-string v0, "getPackagesBypassingDnd"

    return-object v0

    .line 922
    :pswitch_6e
    const-string v0, "getNotificationChannelsBypassingDnd"

    return-object v0

    .line 918
    :pswitch_6f
    const-string v0, "areChannelsBypassingDnd"

    return-object v0

    .line 914
    :pswitch_70
    const-string/jumbo v0, "onlyHasDefaultChannel"

    return-object v0

    .line 910
    :pswitch_71
    const-string v0, "getNotificationChannelGroupsWithoutChannels"

    return-object v0

    .line 906
    :pswitch_72
    const-string v0, "getNotificationChannelGroups"

    return-object v0

    .line 902
    :pswitch_73
    const-string v0, "getNotificationChannelGroup"

    return-object v0

    .line 898
    :pswitch_74
    const-string v0, "deleteNotificationChannelGroup"

    return-object v0

    .line 894
    :pswitch_75
    const-string v0, "getBlockedChannelCount"

    return-object v0

    .line 890
    :pswitch_76
    const-string v0, "getDeletedChannelCount"

    return-object v0

    .line 886
    :pswitch_77
    const-string v0, "getNumNotificationChannelsForPackage"

    return-object v0

    .line 882
    :pswitch_78
    const-string v0, "getNotificationChannelsForPackage"

    return-object v0

    .line 878
    :pswitch_79
    const-string v0, "getNotificationChannels"

    return-object v0

    .line 874
    :pswitch_7a
    const-string v0, "deleteNotificationChannel"

    return-object v0

    .line 870
    :pswitch_7b
    const-string v0, "getNotificationChannelForPackage"

    return-object v0

    .line 866
    :pswitch_7c
    const-string v0, "createConversationNotificationChannelForPackage"

    return-object v0

    .line 862
    :pswitch_7d
    const-string v0, "getConversationNotificationChannel"

    return-object v0

    .line 858
    :pswitch_7e
    const-string v0, "getNotificationChannel"

    return-object v0

    .line 854
    :pswitch_7f
    const-string/jumbo v0, "unlockAllNotificationChannels"

    return-object v0

    .line 850
    :pswitch_80
    const-string/jumbo v0, "unlockNotificationChannel"

    return-object v0

    .line 846
    :pswitch_81
    const-string/jumbo v0, "updateNotificationChannelForPackage"

    return-object v0

    .line 842
    :pswitch_82
    const-string/jumbo v0, "updateNotificationChannelGroupForPackage"

    return-object v0

    .line 838
    :pswitch_83
    const-string v0, "getRecentBlockedNotificationChannelGroupsForPackage"

    return-object v0

    .line 834
    :pswitch_84
    const-string v0, "getPopulatedNotificationChannelGroupForPackage"

    return-object v0

    .line 830
    :pswitch_85
    const-string v0, "getNotificationChannelGroupForPackage"

    return-object v0

    .line 826
    :pswitch_86
    const-string v0, "getNotificationChannelGroupsForPackage"

    return-object v0

    .line 822
    :pswitch_87
    const-string v0, "getConversationsForPackage"

    return-object v0

    .line 818
    :pswitch_88
    const-string v0, "getConversations"

    return-object v0

    .line 814
    :pswitch_89
    const-string v0, "createNotificationChannelsForPackage"

    return-object v0

    .line 810
    :pswitch_8a
    const-string v0, "createNotificationChannels"

    return-object v0

    .line 806
    :pswitch_8b
    const-string v0, "createNotificationChannelGroups"

    return-object v0

    .line 802
    :pswitch_8c
    const-string v0, "getBubblePreferenceForPackage"

    return-object v0

    .line 798
    :pswitch_8d
    const-string v0, "areBubblesEnabled"

    return-object v0

    .line 794
    :pswitch_8e
    const-string v0, "areBubblesAllowed"

    return-object v0

    .line 790
    :pswitch_8f
    const-string/jumbo v0, "setBubblesAllowed"

    return-object v0

    .line 786
    :pswitch_90
    const-string/jumbo v0, "setHideSilentStatusIcons"

    return-object v0

    .line 782
    :pswitch_91
    const-string/jumbo v0, "shouldHideSilentStatusIcons"

    return-object v0

    .line 778
    :pswitch_92
    const-string v0, "disallowAssistantAdjustment"

    return-object v0

    .line 774
    :pswitch_93
    const-string v0, "allowAssistantAdjustment"

    return-object v0

    .line 770
    :pswitch_94
    const-string v0, "getAllowedAssistantAdjustments"

    return-object v0

    .line 766
    :pswitch_95
    const-string/jumbo v0, "isImportanceLocked"

    return-object v0

    .line 762
    :pswitch_96
    const-string v0, "getPackageImportance"

    return-object v0

    .line 758
    :pswitch_97
    const-string v0, "areNotificationsEnabled"

    return-object v0

    .line 754
    :pswitch_98
    const-string v0, "areNotificationsEnabledForPackage"

    return-object v0

    .line 750
    :pswitch_99
    const-string/jumbo v0, "setNotificationsEnabledWithImportanceLockForPackage"

    return-object v0

    .line 746
    :pswitch_9a
    const-string/jumbo v0, "setNotificationsEnabledForPackage"

    return-object v0

    .line 742
    :pswitch_9b
    const-string/jumbo v0, "hasSentValidBubble"

    return-object v0

    .line 738
    :pswitch_9c
    const-string/jumbo v0, "setInvalidMsgAppDemoted"

    return-object v0

    .line 734
    :pswitch_9d
    const-string/jumbo v0, "hasUserDemotedInvalidMsgApp"

    return-object v0

    .line 730
    :pswitch_9e
    const-string/jumbo v0, "isInInvalidMsgState"

    return-object v0

    .line 726
    :pswitch_9f
    const-string/jumbo v0, "hasSentValidMsg"

    return-object v0

    .line 722
    :pswitch_a0
    const-string v0, "canShowBadge"

    return-object v0

    .line 718
    :pswitch_a1
    const-string/jumbo v0, "setShowBadge"

    return-object v0

    .line 714
    :pswitch_a2
    const-string/jumbo v0, "isInCall"

    return-object v0

    .line 710
    :pswitch_a3
    const-string v0, "cancelNotificationWithTag"

    return-object v0

    .line 706
    :pswitch_a4
    const-string v0, "enqueueNotificationWithTag"

    return-object v0

    .line 702
    :pswitch_a5
    const-string v0, "finishToken"

    return-object v0

    .line 698
    :pswitch_a6
    const-string v0, "cancelToast"

    return-object v0

    .line 694
    :pswitch_a7
    const-string v0, "enqueueToast"

    return-object v0

    .line 690
    :pswitch_a8
    const-string v0, "enqueueTextToast"

    return-object v0

    .line 686
    :pswitch_a9
    const-string v0, "clearData"

    return-object v0

    .line 682
    :pswitch_aa
    const-string v0, "cancelAllNotifications"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/app/AutomaticZenRule;)V
    .locals 1
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/app/AutomaticZenRule;

    .line 2969
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2970
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2971
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 673
    return-object p0
.end method

.method protected getActiveNotificationsWithAttribution_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6512
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6513
    return-void
.end method

.method protected getHistoricalNotificationsWithAttribution_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6518
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6519
    return-void
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 6641
    const/16 v0, 0xaa

    return v0
.end method

.method protected getNotificationHistory_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6523
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6524
    return-void
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1373
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1377
    move-object v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.app.INotificationManager"

    .line 1378
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 1379
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    :cond_0
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_1

    .line 1382
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1383
    return v11

    .line 1385
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 3372
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 3364
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3365
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3366
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->incrementCounter(Ljava/lang/String;)V

    .line 3367
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3368
    goto/16 :goto_0

    .line 3351
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3353
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3355
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3356
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3357
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setAdjustmentSupportedForPackage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3358
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3359
    goto/16 :goto_0

    .line 3339
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3341
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3342
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3343
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isAdjustmentSupportedForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 3344
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3345
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3346
    goto/16 :goto_0

    .line 3329
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3330
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3331
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAdjustmentDeniedPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3332
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3333
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3334
    goto/16 :goto_0

    .line 3318
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3320
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3321
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3322
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setAssistantAdjustmentKeyTypeState(IZ)V

    .line 3323
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3324
    goto/16 :goto_0

    .line 3310
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getAllowedAdjustmentKeyTypes()[I

    move-result-object v1

    .line 3311
    .local v1, "_result":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3312
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3313
    goto/16 :goto_0

    .line 3303
    .end local v1    # "_result":[I
    :pswitch_6
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getUnsupportedAdjustmentTypes()Ljava/util/List;

    move-result-object v1

    .line 3304
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3305
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3306
    goto/16 :goto_0

    .line 3291
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 3293
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3295
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3296
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3297
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setAdjustmentTypeSupportedState(Landroid/service/notification/INotificationListener;Ljava/lang/String;Z)V

    .line 3298
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3299
    goto/16 :goto_0

    .line 3281
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3282
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3283
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->canBePromoted(Ljava/lang/String;)Z

    move-result v2

    .line 3284
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3285
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3286
    goto/16 :goto_0

    .line 3269
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3271
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3272
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3273
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->appCanBePromoted(Ljava/lang/String;I)Z

    move-result v3

    .line 3274
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3275
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3276
    goto/16 :goto_0

    .line 3254
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3256
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3258
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3260
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3261
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3262
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->setCanBePromoted(Ljava/lang/String;IZZ)V

    .line 3263
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3264
    goto/16 :goto_0

    .line 3241
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3243
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3245
    .local v2, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ICallNotificationEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICallNotificationEventCallback;

    move-result-object v3

    .line 3246
    .local v3, "_arg2":Landroid/app/ICallNotificationEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3247
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->unregisterCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    .line 3248
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3249
    goto/16 :goto_0

    .line 3228
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    .end local v3    # "_arg2":Landroid/app/ICallNotificationEventCallback;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3230
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3232
    .restart local v2    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ICallNotificationEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICallNotificationEventCallback;

    move-result-object v3

    .line 3233
    .restart local v3    # "_arg2":Landroid/app/ICallNotificationEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3234
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V

    .line 3235
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3236
    goto/16 :goto_0

    .line 3219
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    .end local v3    # "_arg2":Landroid/app/ICallNotificationEventCallback;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3220
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3221
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setToastRateLimitingEnabled(Z)V

    .line 3222
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3223
    goto/16 :goto_0

    .line 3206
    .end local v1    # "_arg0":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 3208
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3210
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 3211
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3212
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V

    .line 3213
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3214
    goto/16 :goto_0

    .line 3193
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3195
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3197
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/service/notification/NotificationListenerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationListenerFilter;

    .line 3198
    .local v3, "_arg2":Landroid/service/notification/NotificationListenerFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3199
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V

    .line 3200
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3201
    goto/16 :goto_0

    .line 3181
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/service/notification/NotificationListenerFilter;
    :pswitch_10
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3183
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3184
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3185
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v3

    .line 3186
    .local v3, "_result":Landroid/service/notification/NotificationListenerFilter;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3187
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3188
    goto/16 :goto_0

    .line 3164
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/service/notification/NotificationListenerFilter;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 3166
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3168
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3170
    .local v4, "_arg2":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3171
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3172
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->pullStats(JIZLjava/util/List;)J

    move-result-wide v6

    .line 3173
    .local v6, "_result":J
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3174
    invoke-virtual {v9, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 3175
    invoke-virtual {v9, v5, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3176
    goto/16 :goto_0

    .line 3156
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v6    # "_result":J
    :pswitch_12
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getPrivateNotificationsAllowed()Z

    move-result v1

    .line 3157
    .local v1, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3158
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3159
    goto/16 :goto_0

    .line 3148
    .end local v1    # "_result":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3149
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3150
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setPrivateNotificationsAllowed(Z)V

    .line 3151
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3152
    goto/16 :goto_0

    .line 3138
    .end local v1    # "_arg0":Z
    :pswitch_14
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 3139
    .local v1, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3140
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->canUseFullScreenIntent(Landroid/content/AttributionSource;)Z

    move-result v2

    .line 3141
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3142
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3143
    goto/16 :goto_0

    .line 3124
    .end local v1    # "_arg0":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3126
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3128
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3129
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3130
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 3131
    .local v4, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3132
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3133
    goto/16 :goto_0

    .line 3114
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3115
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3116
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3117
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3118
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3119
    goto/16 :goto_0

    .line 3103
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3105
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3106
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3107
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3109
    goto/16 :goto_0

    .line 3091
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3093
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3094
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3095
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 3096
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3097
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3098
    goto/16 :goto_0

    .line 3080
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3082
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3083
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3084
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    .line 3085
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3086
    goto/16 :goto_0

    .line 3070
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3071
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3072
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    move-result-object v2

    .line 3073
    .local v2, "_result":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3074
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3075
    goto/16 :goto_0

    .line 3061
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[B
    :pswitch_1b
    sget-object v1, Landroid/service/notification/ZenDeviceEffects;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenDeviceEffects;

    .line 3062
    .local v1, "_arg0":Landroid/service/notification/ZenDeviceEffects;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3063
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V

    .line 3064
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3065
    goto/16 :goto_0

    .line 3050
    .end local v1    # "_arg0":Landroid/service/notification/ZenDeviceEffects;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3052
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Condition;

    .line 3053
    .local v2, "_arg1":Landroid/service/notification/Condition;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3054
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    .line 3055
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3056
    goto/16 :goto_0

    .line 3040
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/service/notification/Condition;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3041
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3042
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRuleState(Ljava/lang/String;)I

    move-result v2

    .line 3043
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3044
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3045
    goto/16 :goto_0

    .line 3030
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_1e
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3031
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3032
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v2

    .line 3033
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3034
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3035
    goto/16 :goto_0

    .line 3018
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":I
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3020
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3021
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3022
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRules(Ljava/lang/String;Z)Z

    move-result v3

    .line 3023
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3024
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3025
    goto/16 :goto_0

    .line 3006
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3008
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3009
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3010
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRule(Ljava/lang/String;Z)Z

    move-result v3

    .line 3011
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3012
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3013
    goto/16 :goto_0

    .line 2992
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2994
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 2996
    .local v2, "_arg1":Landroid/app/AutomaticZenRule;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2997
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2998
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    move-result v4

    .line 2999
    .restart local v4    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 3000
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3001
    goto/16 :goto_0

    .line 2978
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/AutomaticZenRule;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Z
    :pswitch_22
    sget-object v1, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    .line 2980
    .local v1, "_arg0":Landroid/app/AutomaticZenRule;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2982
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2983
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2984
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 2985
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2986
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2987
    goto/16 :goto_0

    .line 2962
    .end local v1    # "_arg0":Landroid/app/AutomaticZenRule;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v1

    .line 2963
    .local v1, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2964
    if-nez v1, :cond_2

    .line 2965
    const/4 v2, -0x1

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 2967
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2968
    new-instance v2, Landroid/app/INotificationManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9}, Landroid/app/INotificationManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2973
    goto/16 :goto_0

    .line 2953
    .end local v1    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2954
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2955
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    .line 2956
    .local v2, "_result":Landroid/app/AutomaticZenRule;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2957
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2958
    goto/16 :goto_0

    .line 2945
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/app/AutomaticZenRule;
    :pswitch_25
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    .line 2946
    .local v1, "_result":Landroid/service/notification/ZenPolicy;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2947
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2948
    goto/16 :goto_0

    .line 2933
    .end local v1    # "_result":Landroid/service/notification/ZenPolicy;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2935
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2937
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2938
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2939
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 2940
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    goto/16 :goto_0

    .line 2922
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2924
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2925
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2926
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 2927
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2928
    goto/16 :goto_0

    .line 2912
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2913
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2914
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v2

    .line 2915
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2916
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2917
    goto/16 :goto_0

    .line 2899
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2901
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager$Policy;

    .line 2903
    .local v2, "_arg1":Landroid/app/NotificationManager$Policy;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2904
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2905
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;Z)V

    .line 2906
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2907
    goto/16 :goto_0

    .line 2889
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/NotificationManager$Policy;
    .end local v3    # "_arg2":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2890
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2891
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 2892
    .local v2, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2893
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2894
    goto/16 :goto_0

    .line 2879
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/app/NotificationManager$Policy;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2880
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2881
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v2

    .line 2882
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2883
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2884
    goto/16 :goto_0

    .line 2867
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2869
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v2

    .line 2871
    .local v2, "_arg1":Landroid/service/notification/IConditionProvider;
    sget-object v3, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/notification/Condition;

    .line 2872
    .local v3, "_arg2":[Landroid/service/notification/Condition;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2873
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    .line 2874
    goto/16 :goto_0

    .line 2853
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/service/notification/IConditionProvider;
    .end local v3    # "_arg2":[Landroid/service/notification/Condition;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2855
    .local v1, "_arg0":I
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2857
    .local v2, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2859
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2860
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2861
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 2862
    goto/16 :goto_0

    .line 2845
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/Uri;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    :pswitch_2e
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 2846
    .local v1, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2847
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2848
    goto/16 :goto_0

    .line 2838
    .end local v1    # "_result":Landroid/app/NotificationManager$Policy;
    :pswitch_2f
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 2839
    .local v1, "_result":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2840
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2841
    goto/16 :goto_0

    .line 2831
    .end local v1    # "_result":Landroid/service/notification/ZenModeConfig;
    :pswitch_30
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    move-result v1

    .line 2832
    .local v1, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2833
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2834
    goto/16 :goto_0

    .line 2820
    .end local v1    # "_result":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2822
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2823
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2824
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasEnabledNotificationListener(Ljava/lang/String;I)Z

    move-result v3

    .line 2825
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2826
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2827
    goto/16 :goto_0

    .line 2809
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2811
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2812
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2813
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNASMigrationDoneAndResetDefault(IZ)V

    .line 2814
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2815
    goto/16 :goto_0

    .line 2801
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_33
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getDefaultNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v1

    .line 2802
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2803
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2804
    goto/16 :goto_0

    .line 2794
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_34
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v1

    .line 2795
    .restart local v1    # "_result":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2796
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2797
    goto/16 :goto_0

    .line 2785
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2786
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2787
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 2788
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2789
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2790
    goto/16 :goto_0

    .line 2775
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2776
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2777
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v2

    .line 2778
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2779
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2780
    goto/16 :goto_0

    .line 2767
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_37
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v1

    .line 2768
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2769
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2770
    goto/16 :goto_0

    .line 2755
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_38
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2757
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2759
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2760
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2761
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 2762
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2763
    goto/16 :goto_0

    .line 2740
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_39
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2742
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2744
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2746
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2747
    .restart local v4    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2748
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    .line 2749
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2750
    goto/16 :goto_0

    .line 2729
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    :pswitch_3a
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2731
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2732
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2733
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    .line 2734
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2735
    goto/16 :goto_0

    .line 2716
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Z
    :pswitch_3b
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2718
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2720
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2721
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2722
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V

    .line 2723
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2724
    goto/16 :goto_0

    .line 2706
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :pswitch_3c
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2707
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2708
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    move-result v2

    .line 2709
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2710
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2711
    goto/16 :goto_0

    .line 2694
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :pswitch_3d
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2696
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2697
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2698
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result v3

    .line 2699
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2700
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2701
    goto/16 :goto_0

    .line 2684
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_3e
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2685
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2686
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v2

    .line 2687
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2689
    goto/16 :goto_0

    .line 2674
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Z
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2675
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2676
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 2677
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2678
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2679
    goto/16 :goto_0

    .line 2665
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2666
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2667
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cleanUpCallersAfter(J)V

    .line 2668
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2669
    goto/16 :goto_0

    .line 2655
    .end local v1    # "_arg0":J
    :pswitch_41
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2656
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2657
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v2

    .line 2658
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2659
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2660
    goto/16 :goto_0

    .line 2647
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_42
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v1

    .line 2648
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2650
    goto/16 :goto_0

    .line 2637
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2639
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2640
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2641
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromSystemListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 2642
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2643
    goto/16 :goto_0

    .line 2626
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2628
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2629
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2630
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    .line 2631
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2632
    goto/16 :goto_0

    .line 2615
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2617
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v2, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2618
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2619
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    .line 2620
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2621
    goto/16 :goto_0

    .line 2604
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2606
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v2, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Adjustment;

    .line 2607
    .local v2, "_arg1":Landroid/service/notification/Adjustment;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2608
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 2609
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2610
    goto/16 :goto_0

    .line 2593
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Landroid/service/notification/Adjustment;
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2595
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v2, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Adjustment;

    .line 2596
    .restart local v2    # "_arg1":Landroid/service/notification/Adjustment;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2597
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 2598
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2599
    goto/16 :goto_0

    .line 2579
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Landroid/service/notification/Adjustment;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2581
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2583
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2584
    .local v3, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2585
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2586
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2587
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2588
    goto/16 :goto_0

    .line 2565
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2567
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2569
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2570
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2571
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2572
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2573
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2574
    goto/16 :goto_0

    .line 2550
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2552
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2554
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2556
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    sget-object v4, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 2557
    .local v4, "_arg3":Landroid/app/NotificationChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2558
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V

    .line 2559
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2560
    goto/16 :goto_0

    .line 2535
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_arg3":Landroid/app/NotificationChannel;
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2537
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2539
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2541
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    sget-object v4, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 2542
    .local v4, "_arg3":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2543
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelGroupFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;)V

    .line 2544
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2545
    goto/16 :goto_0

    .line 2517
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_arg3":Landroid/app/NotificationChannelGroup;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2519
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2521
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 2523
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2525
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2526
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2527
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->createConversationNotificationChannelForPackageFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 2528
    .local v6, "_result":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2529
    invoke-virtual {v9, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2530
    goto/16 :goto_0

    .line 2504
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_result":Landroid/app/NotificationChannel;
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2506
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2508
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2509
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2510
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;IZ)V

    .line 2511
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2512
    goto/16 :goto_0

    .line 2493
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2495
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2496
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2497
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2498
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2499
    goto/16 :goto_0

    .line 2483
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2484
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2485
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v2

    .line 2486
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2487
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2488
    goto/16 :goto_0

    .line 2472
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_result":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2474
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2475
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2476
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2477
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    goto/16 :goto_0

    .line 2464
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    :pswitch_51
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getHintsFromListenerNoToken()I

    move-result v1

    .line 2465
    .local v1, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2466
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2467
    goto/16 :goto_0

    .line 2455
    .end local v1    # "_result":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2456
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2457
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v2

    .line 2458
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2459
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2460
    goto/16 :goto_0

    .line 2444
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_result":I
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2446
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2447
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2448
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 2449
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2450
    goto/16 :goto_0

    .line 2435
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2436
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2437
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V

    .line 2438
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2439
    goto/16 :goto_0

    .line 2423
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2425
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2426
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2427
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2428
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2429
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2430
    goto/16 :goto_0

    .line 2409
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2411
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2413
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2414
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2415
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2416
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2417
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2418
    goto/16 :goto_0

    .line 2398
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2400
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2401
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2402
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 2403
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2404
    goto/16 :goto_0

    .line 2389
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 2390
    .local v1, "_arg0":Landroid/service/notification/IConditionProvider;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2391
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V

    .line 2392
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    goto/16 :goto_0

    .line 2380
    .end local v1    # "_arg0":Landroid/service/notification/IConditionProvider;
    :pswitch_59
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2381
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2382
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestBindProvider(Landroid/content/ComponentName;)V

    .line 2383
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2384
    goto/16 :goto_0

    .line 2371
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_5a
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2372
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2373
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindListenerComponent(Landroid/content/ComponentName;)V

    .line 2374
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    goto/16 :goto_0

    .line 2362
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2363
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2364
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    .line 2365
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2366
    goto/16 :goto_0

    .line 2353
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    :pswitch_5c
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2354
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2355
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->requestBindListener(Landroid/content/ComponentName;)V

    .line 2356
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2357
    goto/16 :goto_0

    .line 2340
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2342
    .local v1, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2344
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2345
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2346
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V

    .line 2347
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2348
    goto/16 :goto_0

    .line 2327
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2329
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2331
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2332
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2333
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    goto/16 :goto_0

    .line 2316
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2318
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 2319
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2320
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 2321
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2322
    goto/16 :goto_0

    .line 2301
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2303
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2305
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2307
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2308
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2309
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2310
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2311
    goto/16 :goto_0

    .line 2290
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2292
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2293
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2294
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 2295
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2296
    goto/16 :goto_0

    .line 2277
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":I
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    .line 2279
    .restart local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2281
    .local v2, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2282
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2283
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 2284
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2285
    goto/16 :goto_0

    .line 2265
    .end local v1    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":I
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2267
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2268
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2269
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;

    move-result-object v3

    .line 2270
    .local v3, "_result":Landroid/app/NotificationHistory;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2271
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2272
    goto/16 :goto_0

    .line 2249
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/NotificationHistory;
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2251
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2253
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2255
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2256
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2257
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 2258
    .local v5, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2259
    invoke-virtual {v9, v5, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2260
    goto/16 :goto_0

    .line 2235
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2237
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2239
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2240
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2241
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 2242
    .local v4, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2243
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2244
    goto/16 :goto_0

    .line 2223
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2225
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2226
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2227
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 2228
    .local v3, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2229
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2230
    goto/16 :goto_0

    .line 2213
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2214
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2215
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 2216
    .local v2, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2217
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2218
    goto/16 :goto_0

    .line 2206
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[Landroid/service/notification/StatusBarNotification;
    :pswitch_68
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->silenceNotificationSound()V

    .line 2207
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2208
    goto/16 :goto_0

    .line 2195
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2197
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2198
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2199
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v3

    .line 2200
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2202
    goto/16 :goto_0

    .line 2182
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2184
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2186
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2187
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2188
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->deleteNotificationHistoryItem(Ljava/lang/String;IJ)V

    .line 2189
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2190
    goto/16 :goto_0

    .line 2172
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2173
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2174
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->isPackagePaused(Ljava/lang/String;)Z

    move-result v2

    .line 2175
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2176
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2177
    goto/16 :goto_0

    .line 2162
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2163
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2164
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getPackagesWithAnyChannels(I)Ljava/util/List;

    move-result-object v2

    .line 2165
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2166
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2167
    goto/16 :goto_0

    .line 2152
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2153
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2154
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getPackagesBypassingDnd(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2155
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2156
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2157
    goto/16 :goto_0

    .line 2140
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2142
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2143
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2144
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2145
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2146
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2147
    goto/16 :goto_0

    .line 2132
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_6f
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->areChannelsBypassingDnd()Z

    move-result v1

    .line 2133
    .local v1, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2134
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2135
    goto/16 :goto_0

    .line 2121
    .end local v1    # "_result":Z
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2123
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2124
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2125
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v3

    .line 2126
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2127
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2128
    goto/16 :goto_0

    .line 2111
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2112
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2113
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2114
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2116
    goto/16 :goto_0

    .line 2101
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2102
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2103
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2104
    .restart local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2105
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2106
    goto/16 :goto_0

    .line 2089
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2091
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2092
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2093
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v3

    .line 2094
    .local v3, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2096
    goto/16 :goto_0

    .line 2078
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/NotificationChannelGroup;
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2080
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2081
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2082
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2084
    goto/16 :goto_0

    .line 2066
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2068
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2069
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2070
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result v3

    .line 2071
    .local v3, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2072
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2073
    goto/16 :goto_0

    .line 2054
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2056
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2057
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2058
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v3

    .line 2059
    .restart local v3    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2060
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    goto/16 :goto_0

    .line 2040
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2042
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2044
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2045
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2046
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v4

    .line 2047
    .local v4, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2048
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    goto/16 :goto_0

    .line 2026
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":I
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2028
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2030
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2031
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2032
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2033
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2034
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2035
    goto/16 :goto_0

    .line 2012
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2014
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2016
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2017
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2018
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2019
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2020
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2021
    goto/16 :goto_0

    .line 2001
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2003
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2004
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2005
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2007
    goto/16 :goto_0

    .line 1983
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1985
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1987
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1989
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1991
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1992
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1993
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 1994
    .restart local v6    # "_result":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1995
    invoke-virtual {v9, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1996
    goto/16 :goto_0

    .line 1968
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Landroid/app/NotificationChannel;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1970
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1972
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1974
    .local v3, "_arg2":Landroid/app/NotificationChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1975
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1976
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 1977
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1978
    goto/16 :goto_0

    .line 1948
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/app/NotificationChannel;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1950
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1952
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1954
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1956
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1958
    .restart local v5    # "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1959
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1960
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    .line 1961
    .local v7, "_result":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    invoke-virtual {v9, v7, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1963
    goto/16 :goto_0

    .line 1932
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_result":Landroid/app/NotificationChannel;
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1934
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1936
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1938
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1939
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1940
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    .line 1941
    .local v5, "_result":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    invoke-virtual {v9, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1943
    goto/16 :goto_0

    .line 1925
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":Landroid/app/NotificationChannel;
    :pswitch_7f
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->unlockAllNotificationChannels()V

    .line 1926
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1927
    goto/16 :goto_0

    .line 1913
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1915
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1917
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1918
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1919
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->unlockNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V

    .line 1920
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    goto/16 :goto_0

    .line 1900
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1902
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1904
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1905
    .local v3, "_arg2":Landroid/app/NotificationChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1906
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 1907
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    goto/16 :goto_0

    .line 1887
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/app/NotificationChannel;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1889
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1891
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 1892
    .local v3, "_arg2":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1893
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    .line 1894
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    goto/16 :goto_0

    .line 1875
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/app/NotificationChannelGroup;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1877
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1878
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1879
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getRecentBlockedNotificationChannelGroupsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1880
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1881
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1882
    goto/16 :goto_0

    .line 1859
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1861
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1863
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1865
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1866
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1867
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v5

    .line 1868
    .local v5, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1869
    invoke-virtual {v9, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1870
    goto/16 :goto_0

    .line 1845
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_result":Landroid/app/NotificationChannelGroup;
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1847
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1849
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1850
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1851
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v4

    .line 1852
    .local v4, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1853
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1854
    goto/16 :goto_0

    .line 1831
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/app/NotificationChannelGroup;
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1833
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1835
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1836
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1837
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 1838
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1840
    goto/16 :goto_0

    .line 1819
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1821
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1822
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1823
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1824
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1826
    goto/16 :goto_0

    .line 1809
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1810
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1811
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 1812
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1814
    goto/16 :goto_0

    .line 1796
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1798
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1800
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 1801
    .local v3, "_arg2":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1802
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 1803
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1804
    goto/16 :goto_0

    .line 1785
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1787
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 1788
    .local v2, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1789
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 1790
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1791
    goto/16 :goto_0

    .line 1774
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1776
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 1777
    .restart local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1778
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 1779
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    goto/16 :goto_0

    .line 1762
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1764
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1765
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1766
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v3

    .line 1767
    .local v3, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    goto/16 :goto_0

    .line 1752
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_8d
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1753
    .local v1, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1754
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->areBubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    .line 1755
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1757
    goto/16 :goto_0

    .line 1742
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v2    # "_result":Z
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1743
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1744
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->areBubblesAllowed(Ljava/lang/String;)Z

    move-result v2

    .line 1745
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1747
    goto/16 :goto_0

    .line 1729
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1731
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1733
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1734
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1735
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 1736
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1737
    goto/16 :goto_0

    .line 1720
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1721
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1722
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setHideSilentStatusIcons(Z)V

    .line 1723
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1724
    goto/16 :goto_0

    .line 1710
    .end local v1    # "_arg0":Z
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1711
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1712
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result v2

    .line 1713
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1715
    goto/16 :goto_0

    .line 1701
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1702
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1703
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->disallowAssistantAdjustment(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    goto/16 :goto_0

    .line 1692
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1693
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1694
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->allowAssistantAdjustment(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    goto/16 :goto_0

    .line 1682
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1683
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1684
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1685
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1686
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1687
    goto/16 :goto_0

    .line 1670
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1672
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1673
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1674
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isImportanceLocked(Ljava/lang/String;I)Z

    move-result v3

    .line 1675
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1677
    goto/16 :goto_0

    .line 1660
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1661
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1662
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getPackageImportance(Ljava/lang/String;)I

    move-result v2

    .line 1663
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1664
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    goto/16 :goto_0

    .line 1650
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1651
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1652
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 1653
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1655
    goto/16 :goto_0

    .line 1638
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1640
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1641
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1642
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v3

    .line 1643
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1645
    goto/16 :goto_0

    .line 1625
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1627
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1629
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1630
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1631
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V

    .line 1632
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    goto/16 :goto_0

    .line 1612
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1614
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1616
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1617
    .restart local v3    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1618
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 1619
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    goto/16 :goto_0

    .line 1600
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1602
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1603
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1604
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasSentValidBubble(Ljava/lang/String;I)Z

    move-result v3

    .line 1605
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1607
    goto/16 :goto_0

    .line 1587
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1589
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1591
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1592
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1593
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V

    .line 1594
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1595
    goto/16 :goto_0

    .line 1575
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1577
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1578
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1579
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result v3

    .line 1580
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1582
    goto/16 :goto_0

    .line 1563
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1565
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1566
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1567
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result v3

    .line 1568
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1570
    goto/16 :goto_0

    .line 1551
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1553
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1554
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1555
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result v3

    .line 1556
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1558
    goto/16 :goto_0

    .line 1539
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1541
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1542
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1543
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->canShowBadge(Ljava/lang/String;I)Z

    move-result v3

    .line 1544
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1546
    goto/16 :goto_0

    .line 1526
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1528
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1530
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1531
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1532
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->setShowBadge(Ljava/lang/String;IZ)V

    .line 1533
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    goto/16 :goto_0

    .line 1514
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1516
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1517
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1518
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->isInCall(Ljava/lang/String;I)Z

    move-result v3

    .line 1519
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1521
    goto/16 :goto_0

    .line 1497
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1499
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1501
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1503
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1505
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1506
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1507
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1508
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    goto/16 :goto_0

    .line 1478
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1480
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1482
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1484
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1486
    .restart local v4    # "_arg3":I
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/Notification;

    .line 1488
    .local v5, "_arg4":Landroid/app/Notification;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1489
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1490
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 1491
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    goto/16 :goto_0

    .line 1467
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/app/Notification;
    .end local v6    # "_arg5":I
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1469
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1470
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1471
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->finishToken(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1472
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    goto/16 :goto_0

    .line 1456
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1458
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1459
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1460
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1461
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    goto/16 :goto_0

    .line 1436
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1438
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1440
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v3

    .line 1442
    .local v3, "_arg2":Landroid/app/ITransientNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1444
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1446
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1447
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1448
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZI)Z

    move-result v7

    .line 1449
    .local v7, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1451
    goto :goto_0

    .line 1414
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/app/ITransientNotification;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_result":Z
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1416
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1418
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    .line 1420
    .local v3, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1422
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1424
    .restart local v5    # "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1426
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v7

    .line 1427
    .local v7, "_arg6":Landroid/app/ITransientNotificationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1428
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/INotificationManager$Stub;->enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IZILandroid/app/ITransientNotificationCallback;)Z

    move-result v12

    .line 1429
    .local v12, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1431
    goto :goto_0

    .line 1401
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/CharSequence;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/app/ITransientNotificationCallback;
    .end local v12    # "_result":Z
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1403
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1405
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1406
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->clearData(Ljava/lang/String;IZ)V

    .line 1408
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    goto :goto_0

    .line 1390
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1393
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;I)V

    .line 1395
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    nop

    .line 3375
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected registerCallNotificationEventListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6619
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/INotificationManager$Stub;->PERMISSIONS_registerCallNotificationEventListener:[Ljava/lang/String;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 6620
    return-void
.end method

.method protected setToastRateLimitingEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6613
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_TOAST_RATE_LIMITING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 6614
    return-void
.end method

.method protected unregisterCallNotificationEventListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 6625
    iget-object v0, p0, Landroid/app/INotificationManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/INotificationManager$Stub;->PERMISSIONS_unregisterCallNotificationEventListener:[Ljava/lang/String;

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 6626
    return-void
.end method

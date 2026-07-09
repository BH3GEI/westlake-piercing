.class public abstract Landroid/os/IUserManager$Stub;
.super Landroid/os/Binder;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IUserManager"

.field static final blacklist TRANSACTION_addUserRestrictionsListener:I = 0x36

.field static final greylist-max-o TRANSACTION_canAddMoreManagedProfiles:I = 0x1d

.field static final blacklist TRANSACTION_canAddMoreProfilesToUser:I = 0x1c

.field static final blacklist TRANSACTION_canAddMoreUsersOfType:I = 0x19

.field static final blacklist TRANSACTION_canAddPrivateProfile:I = 0x2c

.field static final greylist-max-o TRANSACTION_canHaveRestrictedProfile:I = 0x2b

.field static final greylist-max-o TRANSACTION_clearSeedAccountData:I = 0x46

.field static final blacklist TRANSACTION_createProfileForUserEvenWhenDisallowedWithThrow:I = 0x4d

.field static final blacklist TRANSACTION_createProfileForUserWithThrow:I = 0x5

.field static final blacklist TRANSACTION_createRestrictedProfileWithThrow:I = 0x6

.field static final blacklist TRANSACTION_createUserWithAttributes:I = 0x41

.field static final blacklist TRANSACTION_createUserWithThrow:I = 0x3

.field static final greylist-max-o TRANSACTION_evictCredentialEncryptionKey:I = 0xb

.field static final greylist-max-o TRANSACTION_getApplicationRestrictions:I = 0x39

.field static final greylist-max-o TRANSACTION_getApplicationRestrictionsForUser:I = 0x3a

.field static final blacklist TRANSACTION_getBootUser:I = 0x68

.field static final blacklist TRANSACTION_getCommunalProfileId:I = 0x13

.field static final greylist-max-o TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final greylist-max-o TRANSACTION_getDefaultGuestRestrictions:I = 0x3c

.field static final blacklist TRANSACTION_getGuestUsers:I = 0x3f

.field static final blacklist TRANSACTION_getMainDisplayIdAssignedToUser:I = 0x5e

.field static final blacklist TRANSACTION_getMainUserId:I = 0x12

.field static final blacklist TRANSACTION_getPreInstallableSystemPackages:I = 0x7

.field static final blacklist TRANSACTION_getPreviousFullUserToEnterForeground:I = 0x14

.field static final greylist-max-o TRANSACTION_getPrimaryUser:I = 0x11

.field static final blacklist TRANSACTION_getProfileAccessibilityLabelResId:I = 0x58

.field static final greylist-max-o TRANSACTION_getProfileIds:I = 0x17

.field static final blacklist TRANSACTION_getProfileIdsExcludingHidden:I = 0x69

.field static final blacklist TRANSACTION_getProfileLabelResId:I = 0x57

.field static final greylist-max-o TRANSACTION_getProfileParent:I = 0x1e

.field static final greylist-max-o TRANSACTION_getProfileParentId:I = 0x2

.field static final blacklist TRANSACTION_getProfileType:I = 0x49

.field static final greylist-max-o TRANSACTION_getProfiles:I = 0x16

.field static final blacklist TRANSACTION_getRemainingCreatableProfileCount:I = 0x1b

.field static final blacklist TRANSACTION_getRemainingCreatableUserCount:I = 0x1a

.field static final greylist-max-o TRANSACTION_getSeedAccountName:I = 0x43

.field static final greylist-max-o TRANSACTION_getSeedAccountOptions:I = 0x45

.field static final greylist-max-o TRANSACTION_getSeedAccountType:I = 0x44

.field static final greylist-max-o TRANSACTION_getUserAccount:I = 0x24

.field static final blacklist TRANSACTION_getUserBadgeColorResId:I = 0x53

.field static final blacklist TRANSACTION_getUserBadgeDarkColorResId:I = 0x54

.field static final blacklist TRANSACTION_getUserBadgeLabelResId:I = 0x52

.field static final blacklist TRANSACTION_getUserBadgeNoBackgroundResId:I = 0x51

.field static final blacklist TRANSACTION_getUserBadgeResId:I = 0x50

.field static final greylist-max-o TRANSACTION_getUserCreationTime:I = 0x26

.field static final greylist-max-o TRANSACTION_getUserHandle:I = 0x2e

.field static final greylist-max-o TRANSACTION_getUserIcon:I = 0x10

.field static final blacklist TRANSACTION_getUserIconBadgeResId:I = 0x4f

.field static final greylist-max-o TRANSACTION_getUserInfo:I = 0x22

.field static final blacklist TRANSACTION_getUserLogoutability:I = 0x29

.field static final blacklist TRANSACTION_getUserName:I = 0x63

.field static final blacklist TRANSACTION_getUserPropertiesCopy:I = 0x23

.field static final greylist-max-o TRANSACTION_getUserRestrictionSource:I = 0x2f

.field static final greylist-max-o TRANSACTION_getUserRestrictionSources:I = 0x30

.field static final greylist-max-o TRANSACTION_getUserRestrictions:I = 0x31

.field static final greylist-max-o TRANSACTION_getUserSerialNumber:I = 0x2d

.field static final greylist-max-o TRANSACTION_getUserStartRealtime:I = 0x64

.field static final blacklist TRANSACTION_getUserStatusBarIconResId:I = 0x55

.field static final blacklist TRANSACTION_getUserSwitchability:I = 0x27

.field static final greylist-max-o TRANSACTION_getUserUnlockRealtime:I = 0x65

.field static final greylist-max-o TRANSACTION_getUsers:I = 0x15

.field static final blacklist TRANSACTION_getVisibleUsers:I = 0x5d

.field static final blacklist TRANSACTION_hasBadge:I = 0x56

.field static final greylist-max-o TRANSACTION_hasBaseUserRestriction:I = 0x32

.field static final greylist-max-o TRANSACTION_hasRestrictedProfiles:I = 0x61

.field static final greylist-max-o TRANSACTION_hasUserRestriction:I = 0x33

.field static final greylist-max-o TRANSACTION_hasUserRestrictionOnAnyUser:I = 0x34

.field static final blacklist TRANSACTION_isAdminUser:I = 0x4b

.field static final greylist-max-o TRANSACTION_isDemoUser:I = 0x4a

.field static final blacklist TRANSACTION_isForegroundUserAdmin:I = 0x5f

.field static final blacklist TRANSACTION_isHeadlessSystemUserMode:I = 0x20

.field static final blacklist TRANSACTION_isPreCreated:I = 0x4c

.field static final greylist-max-o TRANSACTION_isQuietModeEnabled:I = 0x40

.field static final greylist-max-o TRANSACTION_isRestricted:I = 0x2a

.field static final greylist-max-o TRANSACTION_isSameProfileGroup:I = 0x1f

.field static final blacklist TRANSACTION_isSettingRestrictedForUser:I = 0x35

.field static final blacklist TRANSACTION_isUserForeground:I = 0x5b

.field static final greylist-max-o TRANSACTION_isUserNameSet:I = 0x60

.field static final blacklist TRANSACTION_isUserOfType:I = 0x21

.field static final greylist-max-o TRANSACTION_isUserRunning:I = 0x5a

.field static final blacklist TRANSACTION_isUserSwitcherEnabled:I = 0x28

.field static final blacklist TRANSACTION_isUserTypeEnabled:I = 0x18

.field static final greylist-max-o TRANSACTION_isUserUnlocked:I = 0x59

.field static final greylist-max-o TRANSACTION_isUserUnlockingOrUnlocked:I = 0x4e

.field static final blacklist TRANSACTION_isUserVisible:I = 0x5c

.field static final greylist-max-o TRANSACTION_markGuestForDeletion:I = 0x3e

.field static final blacklist TRANSACTION_preCreateUserWithThrow:I = 0x4

.field static final greylist-max-o TRANSACTION_removeUser:I = 0xc

.field static final greylist-max-o TRANSACTION_removeUserEvenWhenDisallowed:I = 0xd

.field static final blacklist TRANSACTION_removeUserWhenPossible:I = 0x3d

.field static final greylist-max-o TRANSACTION_requestQuietModeEnabled:I = 0x62

.field static final blacklist TRANSACTION_revokeUserAdmin:I = 0xa

.field static final greylist-max-o TRANSACTION_setApplicationRestrictions:I = 0x38

.field static final blacklist TRANSACTION_setBootUser:I = 0x67

.field static final greylist-max-o TRANSACTION_setDefaultGuestRestrictions:I = 0x3b

.field static final greylist-max-o TRANSACTION_setSeedAccountData:I = 0x42

.field static final greylist-max-o TRANSACTION_setUserAccount:I = 0x25

.field static final greylist-max-o TRANSACTION_setUserAdmin:I = 0x9

.field static final greylist-max-o TRANSACTION_setUserEnabled:I = 0x8

.field static final blacklist TRANSACTION_setUserEphemeral:I = 0x66

.field static final greylist-max-o TRANSACTION_setUserIcon:I = 0xf

.field static final greylist-max-o TRANSACTION_setUserName:I = 0xe

.field static final greylist-max-o TRANSACTION_setUserRestriction:I = 0x37

.field static final blacklist TRANSACTION_someUserHasAccount:I = 0x48

.field static final greylist-max-o TRANSACTION_someUserHasSeedAccount:I = 0x47


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 435
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 436
    const-string v0, "android.os.IUserManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUserManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 444
    if-nez p0, :cond_0

    .line 445
    const/4 v0, 0x0

    return-object v0

    .line 447
    :cond_0
    const-string v0, "android.os.IUserManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 448
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IUserManager;

    if-eqz v1, :cond_1

    .line 449
    move-object v1, v0

    check-cast v1, Landroid/os/IUserManager;

    return-object v1

    .line 451
    :cond_1
    new-instance v1, Landroid/os/IUserManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 460
    packed-switch p0, :pswitch_data_0

    .line 884
    const/4 v0, 0x0

    return-object v0

    .line 880
    :pswitch_0
    const-string v0, "getProfileIdsExcludingHidden"

    return-object v0

    .line 876
    :pswitch_1
    const-string v0, "getBootUser"

    return-object v0

    .line 872
    :pswitch_2
    const-string/jumbo v0, "setBootUser"

    return-object v0

    .line 868
    :pswitch_3
    const-string/jumbo v0, "setUserEphemeral"

    return-object v0

    .line 864
    :pswitch_4
    const-string/jumbo v0, "getUserUnlockRealtime"

    return-object v0

    .line 860
    :pswitch_5
    const-string/jumbo v0, "getUserStartRealtime"

    return-object v0

    .line 856
    :pswitch_6
    const-string/jumbo v0, "getUserName"

    return-object v0

    .line 852
    :pswitch_7
    const-string/jumbo v0, "requestQuietModeEnabled"

    return-object v0

    .line 848
    :pswitch_8
    const-string/jumbo v0, "hasRestrictedProfiles"

    return-object v0

    .line 844
    :pswitch_9
    const-string/jumbo v0, "isUserNameSet"

    return-object v0

    .line 840
    :pswitch_a
    const-string/jumbo v0, "isForegroundUserAdmin"

    return-object v0

    .line 836
    :pswitch_b
    const-string v0, "getMainDisplayIdAssignedToUser"

    return-object v0

    .line 832
    :pswitch_c
    const-string/jumbo v0, "getVisibleUsers"

    return-object v0

    .line 828
    :pswitch_d
    const-string/jumbo v0, "isUserVisible"

    return-object v0

    .line 824
    :pswitch_e
    const-string/jumbo v0, "isUserForeground"

    return-object v0

    .line 820
    :pswitch_f
    const-string/jumbo v0, "isUserRunning"

    return-object v0

    .line 816
    :pswitch_10
    const-string/jumbo v0, "isUserUnlocked"

    return-object v0

    .line 812
    :pswitch_11
    const-string v0, "getProfileAccessibilityLabelResId"

    return-object v0

    .line 808
    :pswitch_12
    const-string v0, "getProfileLabelResId"

    return-object v0

    .line 804
    :pswitch_13
    const-string/jumbo v0, "hasBadge"

    return-object v0

    .line 800
    :pswitch_14
    const-string/jumbo v0, "getUserStatusBarIconResId"

    return-object v0

    .line 796
    :pswitch_15
    const-string/jumbo v0, "getUserBadgeDarkColorResId"

    return-object v0

    .line 792
    :pswitch_16
    const-string/jumbo v0, "getUserBadgeColorResId"

    return-object v0

    .line 788
    :pswitch_17
    const-string/jumbo v0, "getUserBadgeLabelResId"

    return-object v0

    .line 784
    :pswitch_18
    const-string/jumbo v0, "getUserBadgeNoBackgroundResId"

    return-object v0

    .line 780
    :pswitch_19
    const-string/jumbo v0, "getUserBadgeResId"

    return-object v0

    .line 776
    :pswitch_1a
    const-string/jumbo v0, "getUserIconBadgeResId"

    return-object v0

    .line 772
    :pswitch_1b
    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    return-object v0

    .line 768
    :pswitch_1c
    const-string v0, "createProfileForUserEvenWhenDisallowedWithThrow"

    return-object v0

    .line 764
    :pswitch_1d
    const-string/jumbo v0, "isPreCreated"

    return-object v0

    .line 760
    :pswitch_1e
    const-string/jumbo v0, "isAdminUser"

    return-object v0

    .line 756
    :pswitch_1f
    const-string/jumbo v0, "isDemoUser"

    return-object v0

    .line 752
    :pswitch_20
    const-string v0, "getProfileType"

    return-object v0

    .line 748
    :pswitch_21
    const-string/jumbo v0, "someUserHasAccount"

    return-object v0

    .line 744
    :pswitch_22
    const-string/jumbo v0, "someUserHasSeedAccount"

    return-object v0

    .line 740
    :pswitch_23
    const-string v0, "clearSeedAccountData"

    return-object v0

    .line 736
    :pswitch_24
    const-string v0, "getSeedAccountOptions"

    return-object v0

    .line 732
    :pswitch_25
    const-string v0, "getSeedAccountType"

    return-object v0

    .line 728
    :pswitch_26
    const-string v0, "getSeedAccountName"

    return-object v0

    .line 724
    :pswitch_27
    const-string/jumbo v0, "setSeedAccountData"

    return-object v0

    .line 720
    :pswitch_28
    const-string v0, "createUserWithAttributes"

    return-object v0

    .line 716
    :pswitch_29
    const-string/jumbo v0, "isQuietModeEnabled"

    return-object v0

    .line 712
    :pswitch_2a
    const-string v0, "getGuestUsers"

    return-object v0

    .line 708
    :pswitch_2b
    const-string/jumbo v0, "markGuestForDeletion"

    return-object v0

    .line 704
    :pswitch_2c
    const-string/jumbo v0, "removeUserWhenPossible"

    return-object v0

    .line 700
    :pswitch_2d
    const-string v0, "getDefaultGuestRestrictions"

    return-object v0

    .line 696
    :pswitch_2e
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    return-object v0

    .line 692
    :pswitch_2f
    const-string v0, "getApplicationRestrictionsForUser"

    return-object v0

    .line 688
    :pswitch_30
    const-string v0, "getApplicationRestrictions"

    return-object v0

    .line 684
    :pswitch_31
    const-string/jumbo v0, "setApplicationRestrictions"

    return-object v0

    .line 680
    :pswitch_32
    const-string/jumbo v0, "setUserRestriction"

    return-object v0

    .line 676
    :pswitch_33
    const-string v0, "addUserRestrictionsListener"

    return-object v0

    .line 672
    :pswitch_34
    const-string/jumbo v0, "isSettingRestrictedForUser"

    return-object v0

    .line 668
    :pswitch_35
    const-string/jumbo v0, "hasUserRestrictionOnAnyUser"

    return-object v0

    .line 664
    :pswitch_36
    const-string/jumbo v0, "hasUserRestriction"

    return-object v0

    .line 660
    :pswitch_37
    const-string/jumbo v0, "hasBaseUserRestriction"

    return-object v0

    .line 656
    :pswitch_38
    const-string/jumbo v0, "getUserRestrictions"

    return-object v0

    .line 652
    :pswitch_39
    const-string/jumbo v0, "getUserRestrictionSources"

    return-object v0

    .line 648
    :pswitch_3a
    const-string/jumbo v0, "getUserRestrictionSource"

    return-object v0

    .line 644
    :pswitch_3b
    const-string/jumbo v0, "getUserHandle"

    return-object v0

    .line 640
    :pswitch_3c
    const-string/jumbo v0, "getUserSerialNumber"

    return-object v0

    .line 636
    :pswitch_3d
    const-string v0, "canAddPrivateProfile"

    return-object v0

    .line 632
    :pswitch_3e
    const-string v0, "canHaveRestrictedProfile"

    return-object v0

    .line 628
    :pswitch_3f
    const-string/jumbo v0, "isRestricted"

    return-object v0

    .line 624
    :pswitch_40
    const-string/jumbo v0, "getUserLogoutability"

    return-object v0

    .line 620
    :pswitch_41
    const-string/jumbo v0, "isUserSwitcherEnabled"

    return-object v0

    .line 616
    :pswitch_42
    const-string/jumbo v0, "getUserSwitchability"

    return-object v0

    .line 612
    :pswitch_43
    const-string/jumbo v0, "getUserCreationTime"

    return-object v0

    .line 608
    :pswitch_44
    const-string/jumbo v0, "setUserAccount"

    return-object v0

    .line 604
    :pswitch_45
    const-string/jumbo v0, "getUserAccount"

    return-object v0

    .line 600
    :pswitch_46
    const-string/jumbo v0, "getUserPropertiesCopy"

    return-object v0

    .line 596
    :pswitch_47
    const-string/jumbo v0, "getUserInfo"

    return-object v0

    .line 592
    :pswitch_48
    const-string/jumbo v0, "isUserOfType"

    return-object v0

    .line 588
    :pswitch_49
    const-string/jumbo v0, "isHeadlessSystemUserMode"

    return-object v0

    .line 584
    :pswitch_4a
    const-string/jumbo v0, "isSameProfileGroup"

    return-object v0

    .line 580
    :pswitch_4b
    const-string v0, "getProfileParent"

    return-object v0

    .line 576
    :pswitch_4c
    const-string v0, "canAddMoreManagedProfiles"

    return-object v0

    .line 572
    :pswitch_4d
    const-string v0, "canAddMoreProfilesToUser"

    return-object v0

    .line 568
    :pswitch_4e
    const-string v0, "getRemainingCreatableProfileCount"

    return-object v0

    .line 564
    :pswitch_4f
    const-string v0, "getRemainingCreatableUserCount"

    return-object v0

    .line 560
    :pswitch_50
    const-string v0, "canAddMoreUsersOfType"

    return-object v0

    .line 556
    :pswitch_51
    const-string/jumbo v0, "isUserTypeEnabled"

    return-object v0

    .line 552
    :pswitch_52
    const-string v0, "getProfileIds"

    return-object v0

    .line 548
    :pswitch_53
    const-string v0, "getProfiles"

    return-object v0

    .line 544
    :pswitch_54
    const-string/jumbo v0, "getUsers"

    return-object v0

    .line 540
    :pswitch_55
    const-string v0, "getPreviousFullUserToEnterForeground"

    return-object v0

    .line 536
    :pswitch_56
    const-string v0, "getCommunalProfileId"

    return-object v0

    .line 532
    :pswitch_57
    const-string v0, "getMainUserId"

    return-object v0

    .line 528
    :pswitch_58
    const-string v0, "getPrimaryUser"

    return-object v0

    .line 524
    :pswitch_59
    const-string/jumbo v0, "getUserIcon"

    return-object v0

    .line 520
    :pswitch_5a
    const-string/jumbo v0, "setUserIcon"

    return-object v0

    .line 516
    :pswitch_5b
    const-string/jumbo v0, "setUserName"

    return-object v0

    .line 512
    :pswitch_5c
    const-string/jumbo v0, "removeUserEvenWhenDisallowed"

    return-object v0

    .line 508
    :pswitch_5d
    const-string/jumbo v0, "removeUser"

    return-object v0

    .line 504
    :pswitch_5e
    const-string v0, "evictCredentialEncryptionKey"

    return-object v0

    .line 500
    :pswitch_5f
    const-string/jumbo v0, "revokeUserAdmin"

    return-object v0

    .line 496
    :pswitch_60
    const-string/jumbo v0, "setUserAdmin"

    return-object v0

    .line 492
    :pswitch_61
    const-string/jumbo v0, "setUserEnabled"

    return-object v0

    .line 488
    :pswitch_62
    const-string v0, "getPreInstallableSystemPackages"

    return-object v0

    .line 484
    :pswitch_63
    const-string v0, "createRestrictedProfileWithThrow"

    return-object v0

    .line 480
    :pswitch_64
    const-string v0, "createProfileForUserWithThrow"

    return-object v0

    .line 476
    :pswitch_65
    const-string/jumbo v0, "preCreateUserWithThrow"

    return-object v0

    .line 472
    :pswitch_66
    const-string v0, "createUserWithThrow"

    return-object v0

    .line 468
    :pswitch_67
    const-string v0, "getProfileParentId"

    return-object v0

    .line 464
    :pswitch_68
    const-string v0, "getCredentialOwnerProfile"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 455
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 4040
    const/16 v0, 0x68

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 891
    invoke-static {p1}, Landroid/os/IUserManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 895
    move-object v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.os.IUserManager"

    .line 896
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 897
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    :cond_0
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_1

    .line 900
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 901
    return v11

    .line 903
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2016
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 2005
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2007
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2008
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2009
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->getProfileIdsExcludingHidden(IZ)[I

    move-result-object v3

    .line 2010
    .local v3, "_result":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 2011
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2012
    goto/16 :goto_0

    .line 1997
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":[I
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getBootUser()I

    move-result v1

    .line 1998
    .local v1, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1999
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2000
    goto/16 :goto_0

    .line 1989
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1990
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1991
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->setBootUser(I)V

    .line 1992
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    goto/16 :goto_0

    .line 1977
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1979
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1980
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1981
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->setUserEphemeral(IZ)Z

    move-result v3

    .line 1982
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1983
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1984
    goto/16 :goto_0

    .line 1969
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getUserUnlockRealtime()J

    move-result-wide v1

    .line 1970
    .local v1, "_result":J
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1971
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1972
    goto/16 :goto_0

    .line 1962
    .end local v1    # "_result":J
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getUserStartRealtime()J

    move-result-wide v1

    .line 1963
    .restart local v1    # "_result":J
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1964
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1965
    goto/16 :goto_0

    .line 1955
    .end local v1    # "_result":J
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 1956
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1958
    goto/16 :goto_0

    .line 1938
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1940
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1942
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1944
    .local v3, "_arg2":I
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 1946
    .local v4, "_arg3":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1947
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1948
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z

    move-result v6

    .line 1949
    .local v6, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1951
    goto/16 :goto_0

    .line 1928
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/IntentSender;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1929
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1930
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->hasRestrictedProfiles(I)Z

    move-result v2

    .line 1931
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1933
    goto/16 :goto_0

    .line 1918
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1919
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1920
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isUserNameSet(I)Z

    move-result v2

    .line 1921
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1922
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1923
    goto/16 :goto_0

    .line 1910
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->isForegroundUserAdmin()Z

    move-result v1

    .line 1911
    .local v1, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1912
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1913
    goto/16 :goto_0

    .line 1901
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1902
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1903
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getMainDisplayIdAssignedToUser(I)I

    move-result v2

    .line 1904
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1905
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    goto/16 :goto_0

    .line 1893
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getVisibleUsers()[I

    move-result-object v1

    .line 1894
    .local v1, "_result":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1896
    goto/16 :goto_0

    .line 1884
    .end local v1    # "_result":[I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1885
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1886
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isUserVisible(I)Z

    move-result v2

    .line 1887
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1889
    goto/16 :goto_0

    .line 1874
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1875
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1876
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isUserForeground(I)Z

    move-result v2

    .line 1877
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1878
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1879
    goto/16 :goto_0

    .line 1864
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1865
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1866
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isUserRunning(I)Z

    move-result v2

    .line 1867
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1868
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1869
    goto/16 :goto_0

    .line 1854
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1855
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1856
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isUserUnlocked(I)Z

    move-result v2

    .line 1857
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1859
    goto/16 :goto_0

    .line 1844
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1845
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1846
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getProfileAccessibilityLabelResId(I)I

    move-result v2

    .line 1847
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1848
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    goto/16 :goto_0

    .line 1834
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1835
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1836
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getProfileLabelResId(I)I

    move-result v2

    .line 1837
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    goto/16 :goto_0

    .line 1824
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1825
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1826
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->hasBadge(I)Z

    move-result v2

    .line 1827
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1828
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1829
    goto/16 :goto_0

    .line 1814
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1815
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1816
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserStatusBarIconResId(I)I

    move-result v2

    .line 1817
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    goto/16 :goto_0

    .line 1804
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1805
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1806
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserBadgeDarkColorResId(I)I

    move-result v2

    .line 1807
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    goto/16 :goto_0

    .line 1794
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1795
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1796
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserBadgeColorResId(I)I

    move-result v2

    .line 1797
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    goto/16 :goto_0

    .line 1784
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1785
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1786
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserBadgeLabelResId(I)I

    move-result v2

    .line 1787
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1788
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1789
    goto/16 :goto_0

    .line 1774
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1775
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserBadgeNoBackgroundResId(I)I

    move-result v2

    .line 1777
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1779
    goto/16 :goto_0

    .line 1764
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1765
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1766
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserBadgeResId(I)I

    move-result v2

    .line 1767
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    goto/16 :goto_0

    .line 1754
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1755
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1756
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserIconBadgeResId(I)I

    move-result v2

    .line 1757
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    goto/16 :goto_0

    .line 1744
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1745
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1746
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    .line 1747
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1749
    goto/16 :goto_0

    .line 1726
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1728
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1730
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1732
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1734
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 1735
    .local v5, "_arg4":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1736
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1737
    .local v6, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    invoke-virtual {v9, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1739
    goto/16 :goto_0

    .line 1716
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v6    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1717
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1718
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isPreCreated(I)Z

    move-result v2

    .line 1719
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1720
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1721
    goto/16 :goto_0

    .line 1706
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1707
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1708
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isAdminUser(I)Z

    move-result v2

    .line 1709
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1711
    goto/16 :goto_0

    .line 1696
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1697
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1698
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isDemoUser(I)Z

    move-result v2

    .line 1699
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1700
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1701
    goto/16 :goto_0

    .line 1686
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1687
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1688
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getProfileType(I)Ljava/lang/String;

    move-result-object v2

    .line 1689
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1691
    goto/16 :goto_0

    .line 1674
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1676
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1677
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1678
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1679
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1681
    goto/16 :goto_0

    .line 1662
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1664
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1665
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1666
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1667
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1669
    goto/16 :goto_0

    .line 1653
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1654
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1655
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->clearSeedAccountData(I)V

    .line 1656
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    goto/16 :goto_0

    .line 1643
    .end local v1    # "_arg0":I
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1644
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1645
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getSeedAccountOptions(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1646
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1648
    goto/16 :goto_0

    .line 1633
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1634
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1635
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getSeedAccountType(I)Ljava/lang/String;

    move-result-object v2

    .line 1636
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1637
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1638
    goto/16 :goto_0

    .line 1623
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1624
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1625
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getSeedAccountName(I)Ljava/lang/String;

    move-result-object v2

    .line 1626
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1628
    goto/16 :goto_0

    .line 1606
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1608
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1610
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1612
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 1614
    .local v4, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1615
    .local v5, "_arg4":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1616
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    .line 1617
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1618
    goto/16 :goto_0

    .line 1584
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/PersistableBundle;
    .end local v5    # "_arg4":Z
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1586
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1588
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1590
    .local v3, "_arg2":I
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1592
    .local v4, "_arg3":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1594
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1596
    .local v6, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/PersistableBundle;

    .line 1597
    .local v7, "_arg6":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1598
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IUserManager$Stub;->createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;

    move-result-object v12

    .line 1599
    .local v12, "_result":Landroid/os/UserHandle;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    invoke-virtual {v9, v12, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1601
    goto/16 :goto_0

    .line 1574
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/graphics/Bitmap;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Landroid/os/PersistableBundle;
    .end local v12    # "_result":Landroid/os/UserHandle;
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1575
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1576
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isQuietModeEnabled(I)Z

    move-result v2

    .line 1577
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1579
    goto/16 :goto_0

    .line 1566
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getGuestUsers()Ljava/util/List;

    move-result-object v1

    .line 1567
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1569
    goto/16 :goto_0

    .line 1557
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1558
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1559
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->markGuestForDeletion(I)Z

    move-result v2

    .line 1560
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1562
    goto/16 :goto_0

    .line 1545
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1547
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1548
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1549
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->removeUserWhenPossible(IZ)I

    move-result v3

    .line 1550
    .local v3, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    goto/16 :goto_0

    .line 1537
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":I
    :pswitch_2d
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v1

    .line 1538
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1540
    goto/16 :goto_0

    .line 1529
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_2e
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1530
    .local v1, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1531
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 1532
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    goto/16 :goto_0

    .line 1517
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1519
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1520
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 1522
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1524
    goto/16 :goto_0

    .line 1507
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1508
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1509
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1510
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1512
    goto/16 :goto_0

    .line 1494
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1496
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1498
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1499
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1500
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IUserManager$Stub;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1501
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    goto/16 :goto_0

    .line 1481
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":I
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1483
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1485
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1486
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1487
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IUserManager$Stub;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1488
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    goto/16 :goto_0

    .line 1472
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUserRestrictionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserRestrictionsListener;

    move-result-object v1

    .line 1473
    .local v1, "_arg0":Landroid/os/IUserRestrictionsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1474
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    .line 1475
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    goto/16 :goto_0

    .line 1456
    .end local v1    # "_arg0":Landroid/os/IUserRestrictionsListener;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1458
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1460
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1462
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1463
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IUserManager$Stub;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v5

    .line 1465
    .local v5, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1467
    goto/16 :goto_0

    .line 1446
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1447
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1448
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result v2

    .line 1449
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1451
    goto/16 :goto_0

    .line 1434
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1436
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1437
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1438
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v3

    .line 1439
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1441
    goto/16 :goto_0

    .line 1422
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1424
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1425
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1426
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v3

    .line 1427
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1429
    goto/16 :goto_0

    .line 1412
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1413
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 1415
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1417
    goto/16 :goto_0

    .line 1400
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1402
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1403
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 1405
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1407
    goto/16 :goto_0

    .line 1388
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1390
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1391
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1392
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->getUserRestrictionSource(Ljava/lang/String;I)I

    move-result v3

    .line 1393
    .local v3, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    goto/16 :goto_0

    .line 1378
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1379
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1380
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserHandle(I)I

    move-result v2

    .line 1381
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    goto/16 :goto_0

    .line 1368
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1369
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1370
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserSerialNumber(I)I

    move-result v2

    .line 1371
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    goto/16 :goto_0

    .line 1358
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1359
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1360
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->canAddPrivateProfile(I)Z

    move-result v2

    .line 1361
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1363
    goto/16 :goto_0

    .line 1348
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1349
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1350
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->canHaveRestrictedProfile(I)Z

    move-result v2

    .line 1351
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1353
    goto/16 :goto_0

    .line 1338
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1339
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1340
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isRestricted(I)Z

    move-result v2

    .line 1341
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1343
    goto/16 :goto_0

    .line 1328
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1329
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserLogoutability(I)I

    move-result v2

    .line 1331
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    goto/16 :goto_0

    .line 1316
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1318
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1319
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1320
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->isUserSwitcherEnabled(ZI)Z

    move-result v3

    .line 1321
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1323
    goto/16 :goto_0

    .line 1306
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1307
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1308
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserSwitchability(I)I

    move-result v2

    .line 1309
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    goto/16 :goto_0

    .line 1296
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1297
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1298
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserCreationTime(I)J

    move-result-wide v2

    .line 1299
    .local v2, "_result":J
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1301
    goto/16 :goto_0

    .line 1285
    .end local v1    # "_arg0":I
    .end local v2    # "_result":J
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1287
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1288
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1289
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->setUserAccount(ILjava/lang/String;)V

    .line 1290
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    goto/16 :goto_0

    .line 1275
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1276
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1277
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserAccount(I)Ljava/lang/String;

    move-result-object v2

    .line 1278
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1280
    goto/16 :goto_0

    .line 1265
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1266
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1267
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;

    move-result-object v2

    .line 1268
    .local v2, "_result":Landroid/content/pm/UserProperties;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1270
    goto/16 :goto_0

    .line 1255
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/UserProperties;
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1256
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1257
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1258
    .local v2, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1260
    goto/16 :goto_0

    .line 1243
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1245
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1246
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1247
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->isUserOfType(ILjava/lang/String;)Z

    move-result v3

    .line 1248
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1250
    goto/16 :goto_0

    .line 1235
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_49
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->isHeadlessSystemUserMode()Z

    move-result v1

    .line 1236
    .local v1, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1238
    goto/16 :goto_0

    .line 1224
    .end local v1    # "_result":Z
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1226
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1227
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->isSameProfileGroup(II)Z

    move-result v3

    .line 1229
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1231
    goto/16 :goto_0

    .line 1214
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1215
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1216
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1217
    .local v2, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1219
    goto/16 :goto_0

    .line 1202
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1204
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1205
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1206
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->canAddMoreManagedProfiles(IZ)Z

    move-result v3

    .line 1207
    .restart local v3    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1209
    goto/16 :goto_0

    .line 1188
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1192
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1193
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1194
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IUserManager$Stub;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v4

    .line 1195
    .local v4, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1197
    goto/16 :goto_0

    .line 1176
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Z
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1179
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->getRemainingCreatableProfileCount(Ljava/lang/String;I)I

    move-result v3

    .line 1181
    .local v3, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    goto/16 :goto_0

    .line 1166
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1167
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getRemainingCreatableUserCount(Ljava/lang/String;)I

    move-result v2

    .line 1169
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    goto/16 :goto_0

    .line 1156
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1157
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->canAddMoreUsersOfType(Ljava/lang/String;)Z

    move-result v2

    .line 1159
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1161
    goto/16 :goto_0

    .line 1146
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1147
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1148
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 1149
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1151
    goto/16 :goto_0

    .line 1134
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1136
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1137
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1138
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->getProfileIds(IZ)[I

    move-result-object v3

    .line 1139
    .local v3, "_result":[I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1141
    goto/16 :goto_0

    .line 1122
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":[I
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1124
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1125
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object v3

    .line 1127
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1129
    goto/16 :goto_0

    .line 1108
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1110
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1112
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1113
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IUserManager$Stub;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v4

    .line 1115
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1117
    goto/16 :goto_0

    .line 1100
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_55
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getPreviousFullUserToEnterForeground()I

    move-result v1

    .line 1101
    .local v1, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    goto/16 :goto_0

    .line 1093
    .end local v1    # "_result":I
    :pswitch_56
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getCommunalProfileId()I

    move-result v1

    .line 1094
    .restart local v1    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    goto/16 :goto_0

    .line 1086
    .end local v1    # "_result":I
    :pswitch_57
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getMainUserId()I

    move-result v1

    .line 1087
    .restart local v1    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    goto/16 :goto_0

    .line 1079
    .end local v1    # "_result":I
    :pswitch_58
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1080
    .local v1, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1082
    goto/16 :goto_0

    .line 1070
    .end local v1    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1071
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1073
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1075
    goto/16 :goto_0

    .line 1059
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1061
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 1062
    .local v2, "_arg1":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1064
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    goto/16 :goto_0

    .line 1048
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Bitmap;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1050
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    .line 1053
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    goto/16 :goto_0

    .line 1038
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1039
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->removeUserEvenWhenDisallowed(I)Z

    move-result v2

    .line 1041
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1043
    goto/16 :goto_0

    .line 1028
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1029
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->removeUser(I)Z

    move-result v2

    .line 1031
    .restart local v2    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1033
    goto/16 :goto_0

    .line 1019
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1020
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->evictCredentialEncryptionKey(I)V

    .line 1022
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    goto/16 :goto_0

    .line 1010
    .end local v1    # "_arg0":I
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1011
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->revokeUserAdmin(I)V

    .line 1013
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    goto/16 :goto_0

    .line 1001
    .end local v1    # "_arg0":I
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1002
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->setUserAdmin(I)V

    .line 1004
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    goto/16 :goto_0

    .line 992
    .end local v1    # "_arg0":I
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 993
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->setUserEnabled(I)V

    .line 995
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    goto/16 :goto_0

    .line 982
    .end local v1    # "_arg0":I
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 985
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 987
    goto/16 :goto_0

    .line 970
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 972
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 973
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, v1, v2}, Landroid/os/IUserManager$Stub;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 975
    .local v3, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 977
    goto/16 :goto_0

    .line 952
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 954
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 958
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 960
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 961
    .local v5, "_arg4":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IUserManager$Stub;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 963
    .local v6, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    invoke-virtual {v9, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 965
    goto :goto_0

    .line 942
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v6    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 943
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 945
    .local v2, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 947
    goto :goto_0

    .line 928
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 930
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 932
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 933
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 934
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IUserManager$Stub;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 935
    .local v4, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 937
    goto :goto_0

    .line 918
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 919
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getProfileParentId(I)I

    move-result v2

    .line 921
    .local v2, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    goto :goto_0

    .line 908
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 909
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {p0, v1}, Landroid/os/IUserManager$Stub;->getCredentialOwnerProfile(I)I

    move-result v2

    .line 911
    .restart local v2    # "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    nop

    .line 2019
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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

.class public Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;
.super Landroid/service/notification/ZenModeDiff$BaseDiff;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceEffectsDiff"
.end annotation


# static fields
.field public static final blacklist FIELD_DIM_WALLPAPER:Ljava/lang/String; = "mDimWallpaper"

.field public static final blacklist FIELD_DISABLE_AUTO_BRIGHTNESS:Ljava/lang/String; = "mDisableAutoBrightness"

.field public static final blacklist FIELD_DISABLE_TAP_TO_WAKE:Ljava/lang/String; = "mDisableTapToWake"

.field public static final blacklist FIELD_DISABLE_TILT_TO_WAKE:Ljava/lang/String; = "mDisableTiltToWake"

.field public static final blacklist FIELD_DISABLE_TOUCH:Ljava/lang/String; = "mDisableTouch"

.field public static final blacklist FIELD_EXTRA_EFFECTS:Ljava/lang/String; = "mExtraEffects"

.field public static final blacklist FIELD_GRAYSCALE:Ljava/lang/String; = "mGrayscale"

.field public static final blacklist FIELD_MAXIMIZE_DOZE:Ljava/lang/String; = "mMaximizeDoze"

.field public static final blacklist FIELD_MINIMIZE_RADIO_USAGE:Ljava/lang/String; = "mMinimizeRadioUsage"

.field public static final blacklist FIELD_NIGHT_LIGHT:Ljava/lang/String; = "mNightLight"

.field public static final blacklist FIELD_NIGHT_MODE:Ljava/lang/String; = "mNightMode"

.field public static final blacklist FIELD_SUPPRESS_AMBIENT_DISPLAY:Ljava/lang/String; = "mSuppressAmbientDisplay"


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ZenDeviceEffects;Landroid/service/notification/ZenDeviceEffects;)V
    .locals 3
    .param p1, "from"    # Landroid/service/notification/ZenDeviceEffects;
    .param p2, "to"    # Landroid/service/notification/ZenDeviceEffects;

    .line 713
    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeDiff$BaseDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 715
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 716
    return-void

    .line 718
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasExistenceChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    return-void

    .line 725
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 726
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 727
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 726
    const-string/jumbo v1, "mGrayscale"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 729
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 730
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 731
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 732
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 730
    const-string/jumbo v1, "mSuppressAmbientDisplay"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 734
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v1

    if-eq v0, v1, :cond_4

    .line 735
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 736
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 735
    const-string/jumbo v1, "mDimWallpaper"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 738
    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v1

    if-eq v0, v1, :cond_5

    .line 739
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 740
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 739
    const-string/jumbo v1, "mNightMode"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 742
    :cond_5
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 743
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 744
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 745
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    const-string/jumbo v1, "mDisableAutoBrightness"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 747
    :cond_6
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 748
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 749
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    const-string/jumbo v1, "mDisableTapToWake"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 751
    :cond_7
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v1

    if-eq v0, v1, :cond_8

    .line 752
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 753
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 754
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 752
    const-string/jumbo v1, "mDisableTiltToWake"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 756
    :cond_8
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v1

    if-eq v0, v1, :cond_9

    .line 757
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 758
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 757
    const-string/jumbo v1, "mDisableTouch"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 760
    :cond_9
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v1

    if-eq v0, v1, :cond_a

    .line 761
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 762
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 763
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 761
    const-string/jumbo v1, "mMinimizeRadioUsage"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 765
    :cond_a
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v1

    if-eq v0, v1, :cond_b

    .line 766
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 767
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 766
    const-string/jumbo v1, "mMaximizeDoze"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 769
    :cond_b
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v1

    if-eq v0, v1, :cond_c

    .line 770
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 772
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 770
    const-string/jumbo v1, "mNightLight"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 774
    :cond_c
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 775
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v1

    .line 776
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 775
    const-string/jumbo v1, "mExtraEffects"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 778
    :cond_d
    return-void
.end method


# virtual methods
.method public blacklist hasDiff()Z
    .locals 1

    .line 785
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasExistenceChange()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasFieldDiffs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZenDeviceEffectsDiff{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 791
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasExistenceChange()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 797
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 806
    .local v1, "first":Z
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->fieldNamesWithDiff()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 807
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    move-result-object v4

    .line 808
    .local v4, "diff":Landroid/service/notification/ZenModeDiff$FieldDiff;
    if-nez v4, :cond_3

    .line 810
    goto :goto_1

    .line 812
    :cond_3
    if-eqz v1, :cond_4

    .line 813
    const/4 v1, 0x0

    goto :goto_2

    .line 815
    :cond_4
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "diff":Landroid/service/notification/ZenModeDiff$FieldDiff;
    goto :goto_1

    .line 823
    :cond_5
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

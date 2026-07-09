.class public Landroid/app/Notification$Colors;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mContrastColor:I

.field private mErrorColor:I

.field private mOnTertiaryAccentTextColor:I

.field private mOnTertiaryFixedAccentTextColor:I

.field private mPaletteIsForColorized:Z

.field private mPaletteIsForNightMode:Z

.field private mPaletteIsForRawColor:I

.field private mPrimaryAccentColor:I

.field private mPrimaryTextColor:I

.field private mProtectionColor:I

.field private mRippleAlpha:I

.field private mSecondaryAccentColor:I

.field private mSecondaryTextColor:I

.field private mTertiaryAccentColor:I

.field private mTertiaryFixedDimAccentColor:I


# direct methods
.method static bridge synthetic -$$Nest$smflattenAlpha(II)I
    .locals 0

    invoke-static {p0, p1}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 14927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14928
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 14929
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 14930
    iput-boolean v1, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 14932
    iput v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 14933
    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 14934
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 14935
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 14936
    iput v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 14937
    iput v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 14938
    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 14939
    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 14940
    iput v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 14941
    iput v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 14943
    iput v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 14944
    iput v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 14945
    const/16 v0, 0x33

    iput v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return-void
.end method

.method private static calculateContrastColor(Landroid/content/Context;IIIZ)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "rawColor"    # I
    .param p2, "accentColor"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "nightMode"    # Z

    .line 15098
    if-nez p1, :cond_0

    .line 15099
    move v0, p2

    .line 15100
    .local v0, "color":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 15101
    invoke-static {p0, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result v0

    goto :goto_0

    .line 15104
    .end local v0    # "color":I
    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    .line 15107
    .restart local v0    # "color":I
    :cond_1
    :goto_0
    invoke-static {v0, p3}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v1

    return v1
.end method

.method private static flattenAlpha(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "background"    # I

    .line 15112
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    move v0, p0

    goto :goto_0

    .line 15113
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result v0

    .line 15112
    :goto_0
    return v0
.end method

.method private static getColor(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p0, "ta"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .line 14972
    if-nez p0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "attrs"    # [I

    .line 14961
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14962
    const/4 v0, 0x0

    return-object v0

    .line 14964
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 14965
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 14966
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 15118
    iget v0, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    return v0
.end method

.method public getContrastColor()I
    .locals 1

    .line 15174
    iget v0, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    return v0
.end method

.method public getErrorColor()I
    .locals 1

    .line 15179
    iget v0, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    return v0
.end method

.method public getOnTertiaryAccentTextColor()I
    .locals 1

    .line 15156
    iget v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    return v0
.end method

.method public getOnTertiaryFixedAccentTextColor()I
    .locals 1

    .line 15166
    iget v0, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    return v0
.end method

.method public getPrimaryAccentColor()I
    .locals 1

    .line 15141
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    return v0
.end method

.method public getPrimaryTextColor()I
    .locals 1

    .line 15131
    iget v0, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    return v0
.end method

.method public getProtectionColor()I
    .locals 1

    .line 15126
    iget v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    return v0
.end method

.method public getRippleAlpha()I
    .locals 1

    .line 15184
    iget v0, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    return v0
.end method

.method public getSecondaryAccentColor()I
    .locals 1

    .line 15146
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .line 15136
    iget v0, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    return v0
.end method

.method public getTertiaryAccentColor()I
    .locals 1

    .line 15151
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    return v0
.end method

.method public getTertiaryFixedDimAccentColor()I
    .locals 1

    .line 15161
    iget v0, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    return v0
.end method

.method public resolvePalette(Landroid/content/Context;IZZ)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rawColor"    # I
    .param p3, "isColorized"    # Z
    .param p4, "nightMode"    # Z

    .line 14989
    iget v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    if-ne v0, p4, :cond_0

    .line 14992
    return-void

    .line 14994
    :cond_0
    iput p2, p0, Landroid/app/Notification$Colors;->mPaletteIsForRawColor:I

    .line 14995
    iput-boolean p3, p0, Landroid/app/Notification$Colors;->mPaletteIsForColorized:Z

    .line 14996
    iput-boolean p4, p0, Landroid/app/Notification$Colors;->mPaletteIsForNightMode:Z

    .line 14998
    const v0, 0x3f666666    # 0.9f

    const v1, 0x10602c5

    if-eqz p3, :cond_4

    .line 14999
    if-nez p2, :cond_1

    .line 15000
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    goto :goto_0

    .line 15002
    :cond_1
    iput p2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15004
    :goto_0
    invoke-static {}, Landroid/app/Flags;->uiRichOngoing()Z

    move-result v1

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    if-eqz v1, :cond_3

    .line 15005
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v1

    .line 15006
    .local v1, "isBgDark":Z
    if-eqz v1, :cond_2

    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    const/high16 v4, -0x1000000

    .line 15007
    .local v4, "onSurfaceColorExtreme":I
    :goto_1
    iget v5, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15008
    invoke-static {v5, v4, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    iget v6, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15007
    invoke-static {v5, v6, v1, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result v5

    iput v5, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 15010
    iget v5, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15011
    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v4, v6}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    iget v6, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15010
    invoke-static {v5, v6, v1, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result v2

    iput v2, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 15013
    .end local v1    # "isBgDark":Z
    .end local v4    # "onSurfaceColorExtreme":I
    goto :goto_2

    .line 15014
    :cond_3
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15015
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v1

    iget v4, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15014
    invoke-static {v1, v4, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 15017
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15018
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v1

    iget v4, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15017
    invoke-static {v1, v4, v2, v3}, Lcom/android/internal/util/ContrastColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 15021
    :goto_2
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 15022
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 15023
    iget v1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 15024
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v1, v2}, Landroid/app/Notification$Colors;->flattenAlpha(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 15025
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 15026
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 15027
    iget v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 15028
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 15029
    const/16 v1, 0x33

    iput v1, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I

    goto/16 :goto_3

    .line 15031
    :cond_4
    const v2, 0x1010543

    const v3, 0x101042c

    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 15036
    .local v2, "attrs":[I
    const v3, 0x10602cd

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    .line 15037
    const v3, 0x10602b3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 15038
    const v3, 0x10602b4

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 15039
    const v3, 0x10602c0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 15040
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 15041
    const v1, 0x10602d4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 15042
    const v1, 0x10602b5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 15043
    const v1, 0x10602d7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 15045
    const v1, 0x10602b7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 15048
    invoke-static {p1, v2}, Landroid/app/Notification$Colors;->obtainDayNightAttributes(Landroid/content/Context;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 15049
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v1, v3, v4}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 15050
    const v3, 0x33ffffff

    invoke-static {v1, v4, v3}, Landroid/app/Notification$Colors;->getColor(Landroid/content/res/TypedArray;II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$Colors;->mRippleAlpha:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15051
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 15052
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_5
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    iget v3, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, p2, v1, v3, p4}, Landroid/app/Notification$Colors;->calculateContrastColor(Landroid/content/Context;IIIZ)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    .line 15056
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    if-ne v1, v4, :cond_6

    .line 15057
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    .line 15060
    :cond_6
    iget v1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    if-ne v1, v4, :cond_7

    .line 15061
    iget v1, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryTextColor:I

    .line 15064
    :cond_7
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    if-ne v1, v4, :cond_8

    .line 15065
    iget v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mPrimaryAccentColor:I

    .line 15067
    :cond_8
    iget v1, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    if-ne v1, v4, :cond_9

    .line 15068
    iget v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mSecondaryAccentColor:I

    .line 15070
    :cond_9
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    if-ne v1, v4, :cond_a

    .line 15071
    iget v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 15073
    :cond_a
    iget v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    const/16 v3, 0xff

    if-ne v1, v4, :cond_b

    .line 15074
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryAccentColor:I

    .line 15075
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v1

    .line 15074
    invoke-static {v1, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryAccentTextColor:I

    .line 15078
    :cond_b
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    if-ne v1, v4, :cond_c

    .line 15079
    iget v1, p0, Landroid/app/Notification$Colors;->mContrastColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 15081
    :cond_c
    iget v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    if-ne v1, v4, :cond_d

    .line 15082
    iget v1, p0, Landroid/app/Notification$Colors;->mTertiaryFixedDimAccentColor:I

    .line 15083
    invoke-static {p1, v1, p4}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v1

    .line 15082
    invoke-static {v1, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Colors;->mOnTertiaryFixedAccentTextColor:I

    .line 15086
    :cond_d
    iget v1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    if-ne v1, v4, :cond_e

    .line 15087
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iput v1, p0, Landroid/app/Notification$Colors;->mErrorColor:I

    .line 15091
    .end local v2    # "attrs":[I
    :cond_e
    :goto_3
    iget v1, p0, Landroid/app/Notification$Colors;->mPrimaryTextColor:I

    iget v2, p0, Landroid/app/Notification$Colors;->mBackgroundColor:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Colors;->mProtectionColor:I

    .line 15092
    return-void

    .line 15048
    .restart local v1    # "ta":Landroid/content/res/TypedArray;
    .restart local v2    # "attrs":[I
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_f

    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_4
    throw v0
.end method

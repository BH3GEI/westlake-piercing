.class public abstract Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.super Ljava/lang/Object;
.source "RemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    }
.end annotation


# static fields
.field public static final blacklist FLOAT_ACCELERATION_X:F

.field public static final blacklist FLOAT_ACCELERATION_Y:F

.field public static final blacklist FLOAT_ACCELERATION_Z:F

.field public static final blacklist FLOAT_ANIMATION_DELTA_TIME:F

.field public static final blacklist FLOAT_ANIMATION_TIME:F

.field public static final blacklist FLOAT_API_LEVEL:F

.field public static final blacklist FLOAT_CALENDAR_MONTH:F

.field public static final blacklist FLOAT_COMPONENT_HEIGHT:F

.field public static final blacklist FLOAT_COMPONENT_WIDTH:F

.field public static final blacklist FLOAT_CONTINUOUS_SEC:F

.field public static final blacklist FLOAT_DAY_OF_MONTH:F

.field public static final blacklist FLOAT_DENSITY:F

.field public static final blacklist FLOAT_GYRO_ROT_X:F

.field public static final blacklist FLOAT_GYRO_ROT_Y:F

.field public static final blacklist FLOAT_GYRO_ROT_Z:F

.field public static final blacklist FLOAT_LIGHT:F

.field public static final blacklist FLOAT_MAGNETIC_X:F

.field public static final blacklist FLOAT_MAGNETIC_Y:F

.field public static final blacklist FLOAT_MAGNETIC_Z:F

.field public static final blacklist FLOAT_OFFSET_TO_UTC:F

.field public static final blacklist FLOAT_TIME_IN_HR:F

.field public static final blacklist FLOAT_TIME_IN_MIN:F

.field public static final blacklist FLOAT_TIME_IN_SEC:F

.field public static final blacklist FLOAT_TOUCH_EVENT_TIME:F

.field public static final blacklist FLOAT_TOUCH_POS_X:F

.field public static final blacklist FLOAT_TOUCH_POS_Y:F

.field public static final blacklist FLOAT_TOUCH_VEL_X:F

.field public static final blacklist FLOAT_TOUCH_VEL_Y:F

.field public static final blacklist FLOAT_WEEK_DAY:F

.field public static final blacklist FLOAT_WINDOW_HEIGHT:F

.field public static final blacklist FLOAT_WINDOW_WIDTH:F

.field public static final blacklist ID_ACCELERATION_X:I = 0x11

.field public static final blacklist ID_ACCELERATION_Y:I = 0x12

.field public static final blacklist ID_ACCELERATION_Z:I = 0x13

.field public static final blacklist ID_ANIMATION_DELTA_TIME:I = 0x1f

.field public static final blacklist ID_ANIMATION_TIME:I = 0x1e

.field public static final blacklist ID_API_LEVEL:I = 0x1c

.field public static final blacklist ID_CALENDAR_MONTH:I = 0x9

.field public static final blacklist ID_COMPONENT_HEIGHT:I = 0x8

.field public static final blacklist ID_COMPONENT_WIDTH:I = 0x7

.field public static final blacklist ID_CONTINUOUS_SEC:I = 0x1

.field public static final blacklist ID_DAY_OF_MONTH:I = 0xc

.field public static final blacklist ID_DENSITY:I = 0x1b

.field public static final blacklist ID_GYRO_ROT_X:I = 0x14

.field public static final blacklist ID_GYRO_ROT_Y:I = 0x15

.field public static final blacklist ID_GYRO_ROT_Z:I = 0x16

.field public static final blacklist ID_LIGHT:I = 0x1a

.field public static final blacklist ID_MAGNETIC_X:I = 0x17

.field public static final blacklist ID_MAGNETIC_Y:I = 0x18

.field public static final blacklist ID_MAGNETIC_Z:I = 0x19

.field public static final blacklist ID_OFFSET_TO_UTC:I = 0xa

.field public static final blacklist ID_TIME_IN_HR:I = 0x4

.field public static final blacklist ID_TIME_IN_MIN:I = 0x3

.field public static final blacklist ID_TIME_IN_SEC:I = 0x2

.field public static final blacklist ID_TOUCH_EVENT_TIME:I = 0x1d

.field public static final blacklist ID_TOUCH_POS_X:I = 0xd

.field public static final blacklist ID_TOUCH_POS_Y:I = 0xe

.field public static final blacklist ID_TOUCH_VEL_X:I = 0xf

.field public static final blacklist ID_TOUCH_VEL_Y:I = 0x10

.field public static final blacklist ID_WEEK_DAY:I = 0xb

.field public static final blacklist ID_WINDOW_HEIGHT:I = 0x6

.field public static final blacklist ID_WINDOW_WIDTH:I = 0x5

.field private static final blacklist MAX_OP_COUNT:I = 0x4e20


# instance fields
.field public blacklist currentTime:J

.field private blacklist mAnimate:Z

.field private blacklist mAnimationTime:F

.field blacklist mDebug:I

.field protected blacklist mDensity:F

.field protected blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

.field public blacklist mHeight:F

.field public blacklist mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field blacklist mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

.field private blacklist mOpCount:I

.field protected blacklist mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

.field public blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

.field private blacklist mTheme:I

.field private blacklist mUseChoreographer:Z

.field public blacklist mWidth:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 624
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_DENSITY:F

    .line 627
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_CONTINUOUS_SEC:F

    .line 630
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_SEC:F

    .line 633
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_MIN:F

    .line 636
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_HR:F

    .line 639
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_CALENDAR_MONTH:F

    .line 642
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WEEK_DAY:F

    .line 645
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_DAY_OF_MONTH:F

    .line 647
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WINDOW_WIDTH:F

    .line 648
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WINDOW_HEIGHT:F

    .line 649
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_COMPONENT_WIDTH:F

    .line 650
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_COMPONENT_HEIGHT:F

    .line 653
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_OFFSET_TO_UTC:F

    .line 656
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_X:F

    .line 659
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_Y:F

    .line 662
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_VEL_X:F

    .line 665
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_VEL_Y:F

    .line 668
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_EVENT_TIME:F

    .line 671
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ANIMATION_TIME:F

    .line 674
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ANIMATION_DELTA_TIME:F

    .line 677
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_X:F

    .line 680
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_Y:F

    .line 683
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_Z:F

    .line 686
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_X:F

    .line 689
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_Y:F

    .line 692
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_Z:F

    .line 695
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_X:F

    .line 698
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_Y:F

    .line 701
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_Z:F

    .line 704
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_LIGHT:F

    .line 707
    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_API_LEVEL:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 47
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 51
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    .line 53
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    .line 61
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    .line 69
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    return-void
.end method

.method public static blacklist getTime(F)F
    .locals 14
    .param p0, "fl"    # F

    .line 732
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 740
    .local v0, "dateTime":Ljava/time/LocalDateTime;
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    .line 741
    .local v1, "value":I
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Month;->getValue()I

    move-result v2

    .line 742
    .local v2, "month":I
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    .line 743
    .local v3, "hour":I
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 744
    .local v4, "minute":I
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    .line 745
    .local v5, "seconds":I
    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v6, v4

    .line 746
    .local v6, "currentMinute":I
    mul-int/lit8 v7, v4, 0x3c

    add-int/2addr v7, v5

    .line 747
    .local v7, "currentSeconds":I
    int-to-float v8, v7

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3089705f    # 1.0E-9f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 748
    .local v8, "sec":F
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/DayOfWeek;->getValue()I

    move-result v9

    .line 750
    .local v9, "day_week":I
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v10

    .line 751
    .local v10, "zone":Ljava/time/ZoneId;
    invoke-virtual {v0, v10}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v11

    .line 752
    .local v11, "offsetDateTime":Ljava/time/OffsetDateTime;
    invoke-virtual {v11}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v12

    .line 753
    .local v12, "offset":Ljava/time/ZoneOffset;
    packed-switch v1, :pswitch_data_0

    .line 770
    :pswitch_0
    return p0

    .line 768
    :pswitch_1
    int-to-float v13, v9

    return v13

    .line 755
    :pswitch_2
    invoke-virtual {v12}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v13

    int-to-float v13, v13

    return v13

    .line 766
    :pswitch_3
    int-to-float v13, v2

    return v13

    .line 763
    :pswitch_4
    int-to-float v13, v3

    return v13

    .line 761
    :pswitch_5
    int-to-float v13, v6

    return v13

    .line 759
    :pswitch_6
    int-to-float v13, v7

    return v13

    .line 757
    :pswitch_7
    return v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static blacklist isTime(F)Z
    .locals 3
    .param p0, "fl"    # F

    .line 720
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    .line 721
    .local v0, "value":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v2, 0xc

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public abstract blacklist addClickArea(IIFFFFI)V
.end method

.method public abstract blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .locals 0
    .param p1, "touchExpression"    # Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 293
    return-void
.end method

.method public blacklist clearLastOpCount()V
    .locals 1

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 815
    return-void
.end method

.method public abstract blacklist clearNamedDataOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedFloatOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedIntegerOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedStringOverride(Ljava/lang/String;)V
.end method

.method public blacklist getAnimationTime()F
    .locals 1

    .line 151
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimationTime:F

    return v0
.end method

.method public blacklist getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-object v0
.end method

.method public abstract blacklist getColor(I)I
.end method

.method public abstract blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
.end method

.method public blacklist getDensity()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    return v0
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-object v0
.end method

.method public abstract blacklist getFloat(I)F
.end method

.method public abstract blacklist getInteger(I)I
.end method

.method public blacklist getLastOpCount()I
    .locals 2

    .line 807
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 808
    .local v0, "count":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 809
    return v0
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-object v0
.end method

.method public abstract blacklist getObject(I)Ljava/lang/Object;
.end method

.method public blacklist getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    return-object v0
.end method

.method public abstract blacklist getPathData(I)[F
.end method

.method public abstract blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
.end method

.method public abstract blacklist getText(I)Ljava/lang/String;
.end method

.method public blacklist getTheme()I
    .locals 1

    .line 339
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    return v0
.end method

.method public abstract blacklist hapticEffect(I)V
.end method

.method public blacklist header(IIIIIJLcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .locals 2
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "patchVersion"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "capabilities"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIJ",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 406
    .local p8, "properties":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowWidth(F)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowHeight(F)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setVersion(III)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setWidth(I)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p5}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHeight(I)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p6, p7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setRequiredCapabilities(J)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p8}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setProperties(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 413
    return-void
.end method

.method public blacklist incrementOpCount()V
    .locals 2

    .line 795
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    .line 796
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    const/16 v1, 0x4e20

    if-gt v0, v1, :cond_0

    .line 799
    return-void

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Too many operations executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAnimationEnabled()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    return v0
.end method

.method public blacklist isDebug()Z
    .locals 2

    .line 368
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isVisualDebug()Z
    .locals 2

    .line 372
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
.end method

.method public abstract blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
.end method

.method public abstract blacklist loadBitmap(ISSII[B)V
.end method

.method public abstract blacklist loadColor(II)V
.end method

.method public abstract blacklist loadFloat(IF)V
.end method

.method public abstract blacklist loadInteger(II)V
.end method

.method public abstract blacklist loadPathData(I[F)V
.end method

.method public abstract blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
.end method

.method public abstract blacklist loadText(ILjava/lang/String;)V
.end method

.method public abstract blacklist loadVariableName(Ljava/lang/String;II)V
.end method

.method public blacklist needsRepaint()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    .line 307
    :cond_0
    return-void
.end method

.method public abstract blacklist overrideFloat(IF)V
.end method

.method public abstract blacklist overrideInteger(II)V
.end method

.method public abstract blacklist overrideText(II)V
.end method

.method public abstract blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
.end method

.method public abstract blacklist putObject(ILjava/lang/Object;)V
.end method

.method public abstract blacklist runAction(ILjava/lang/String;)V
.end method

.method public abstract blacklist runNamedAction(ILjava/lang/Object;)V
.end method

.method public blacklist setAnimationEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    .line 92
    return-void
.end method

.method public blacklist setAnimationTime(F)V
    .locals 0
    .param p1, "time"    # F

    .line 142
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimationTime:F

    .line 143
    return-void
.end method

.method public blacklist setDebug(I)V
    .locals 0
    .param p1, "debug"    # I

    .line 376
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    .line 377
    return-void
.end method

.method public blacklist setDensity(F)V
    .locals 1
    .param p1, "density"    # F

    .line 81
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 82
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    .line 84
    :cond_0
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .locals 0
    .param p1, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 380
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 381
    return-void
.end method

.method public blacklist setDocumentContentDescription(I)V
    .locals 2
    .param p1, "contentDescriptionId"    # I

    .line 437
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 438
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setContentDescription(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public blacklist setMode(Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 351
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 352
    return-void
.end method

.method public abstract blacklist setNamedColorOverride(Ljava/lang/String;I)V
.end method

.method public abstract blacklist setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract blacklist setNamedFloatOverride(Ljava/lang/String;F)V
.end method

.method public abstract blacklist setNamedIntegerOverride(Ljava/lang/String;I)V
.end method

.method public abstract blacklist setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public blacklist setPaintContext(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 0
    .param p1, "paintContext"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 360
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 361
    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .locals 1
    .param p1, "scroll"    # I
    .param p2, "alignment"    # I
    .param p3, "sizing"    # I
    .param p4, "mode"    # I

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setRootContentBehavior(IIII)V

    .line 429
    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 0
    .param p1, "theme"    # I

    .line 343
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    .line 344
    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 324
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    .line 325
    return-void
.end method

.method public abstract blacklist updateOps()I
.end method

.method public blacklist useChoreographer()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    return v0
.end method

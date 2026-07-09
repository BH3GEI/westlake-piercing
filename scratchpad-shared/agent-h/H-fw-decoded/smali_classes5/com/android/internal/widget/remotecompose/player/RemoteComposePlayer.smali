.class public Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
.super Landroid/widget/FrameLayout;
.source "RemoteComposePlayer.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;
    }
.end annotation


# static fields
.field private static final blacklist MAX_SUPPORTED_MAJOR_VERSION:I = 0x0

.field private static final blacklist MAX_SUPPORTED_MINOR_VERSION:I = 0x4

.field private static final blacklist sHapticTable:[I


# instance fields
.field blacklist mAcc:Landroid/hardware/Sensor;

.field blacklist mGyro:Landroid/hardware/Sensor;

.field private blacklist mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

.field blacklist mLight:Landroid/hardware/Sensor;

.field blacklist mListener:Landroid/hardware/SensorEventListener;

.field blacklist mMag:Landroid/hardware/Sensor;

.field blacklist mSensorManager:Landroid/hardware/SensorManager;

.field private blacklist mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprovideHapticFeedback(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->provideHapticFeedback(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 601
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->sHapticTable:[I

    .line 625
    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x3
        0x4
        0x6
        0x3
        0x7
        0x8
        0x9
        0xc
        0xd
        0x10
        0x11
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    .line 750
    new-instance v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 55
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    .line 750
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    .line 750
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method private blacklist applyContentBehavior(I)V
    .locals 6
    .param p1, "contentBehavior"    # I

    .line 154
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_0

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    .line 190
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 172
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/ScrollView;

    if-nez v4, :cond_0

    .line 173
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    .line 175
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    .local v4, "layoutParamsInner":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 178
    .local v2, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 179
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v2, v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 183
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "scrollView":Landroid/widget/ScrollView;
    .end local v4    # "layoutParamsInner":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/HorizontalScrollView;

    if-nez v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    .line 159
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 161
    .restart local v4    # "layoutParamsInner":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/HorizontalScrollView;

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 163
    .local v2, "horizontalScrollView":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 164
    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v2, v0, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 168
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "horizontalScrollView":Landroid/widget/HorizontalScrollView;
    .end local v4    # "layoutParamsInner":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 195
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getColorFromResource(I)I
    .locals 4
    .param p1, "id"    # I

    .line 588
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 589
    .local v0, "typedValue":Landroid/util/TypedValue;
    nop

    .line 590
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 591
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->data:I

    filled-new-array {p1}, [I

    move-result-object v3

    .line 592
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 593
    .local v1, "arr":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    .local v2, "color":I
    nop

    .line 595
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 594
    :cond_0
    return v2

    .line 589
    .end local v2    # "color":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method private blacklist init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 198
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setBackgroundColor(I)V

    .line 201
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    .line 202
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setBackgroundColor(I)V

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    return-void
.end method

.method static synthetic blacklist lambda$addIdActionListener$0(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;ILjava/lang/String;)V
    .locals 0
    .param p0, "callback"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;
    .param p1, "id"    # I
    .param p2, "metadata"    # Ljava/lang/String;

    .line 325
    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;->onAction(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "shader"    # Ljava/lang/String;

    .line 752
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist mapColors()V
    .locals 8

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "name":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 396
    return-void

    .line 398
    :cond_0
    const/4 v1, 0x0

    .line 399
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    const-string v4, "android."

    if-ge v2, v3, :cond_2

    .line 400
    aget-object v3, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    const/4 v1, 0x1

    .line 402
    goto :goto_1

    .line 399
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 406
    return-void

    .line 409
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_6

    .line 410
    aget-object v3, v0, v2

    .line 411
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 412
    goto/16 :goto_5

    .line 414
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "sub":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_5
    goto/16 :goto_3

    :sswitch_0
    const-string v6, "activatedBackgroundIndicator"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x3

    goto/16 :goto_4

    :sswitch_1
    const-string v6, "colorPrimary"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x15

    goto/16 :goto_4

    :sswitch_2
    const-string v6, "popupBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x21

    goto/16 :goto_4

    :sswitch_3
    const-string v6, "panelBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x1e

    goto/16 :goto_4

    :sswitch_4
    const-string v6, "colorBackgroundCacheHint"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x7

    goto/16 :goto_4

    :sswitch_5
    const-string v6, "colorSwitchThumbNormal"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x30

    goto/16 :goto_4

    :sswitch_6
    const-string v6, "galleryItemBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x1a

    goto/16 :goto_4

    :sswitch_7
    const-string/jumbo v6, "textColorPrimaryInverse"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x28

    goto/16 :goto_4

    :sswitch_8
    const-string v6, "headerBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x1b

    goto/16 :goto_4

    :sswitch_9
    const-string v6, "itemBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x1c

    goto/16 :goto_4

    :sswitch_a
    const-string v6, "colorError"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0xe

    goto/16 :goto_4

    :sswitch_b
    const-string v6, "colorButtonNormal"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x9

    goto/16 :goto_4

    :sswitch_c
    const-string v6, "actionModeSplitBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    goto/16 :goto_4

    :sswitch_d
    const-string/jumbo v6, "textColorTertiary"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x2a

    goto/16 :goto_4

    :sswitch_e
    const-string/jumbo v6, "textColorTertiaryInverse"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x2b

    goto/16 :goto_4

    :sswitch_f
    const-string v6, "colorBackgroundFloating"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x8

    goto/16 :goto_4

    :sswitch_10
    const-string/jumbo v6, "submitBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x24

    goto/16 :goto_4

    :sswitch_11
    const-string v6, "colorLongPressedHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x12

    goto/16 :goto_4

    :sswitch_12
    const-string v6, "colorFocusedHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0xf

    goto/16 :goto_4

    :sswitch_13
    const-string v6, "actionModeBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto/16 :goto_4

    :sswitch_14
    const-string v6, "colorAccent"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    goto/16 :goto_4

    :sswitch_15
    const-string v6, "colorBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x6

    goto/16 :goto_4

    :sswitch_16
    const-string v6, "detailsElementBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x18

    goto/16 :goto_4

    :sswitch_17
    const-string v6, "colorControlNormal"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0xc

    goto/16 :goto_4

    :sswitch_18
    const-string/jumbo v6, "textColorSecondaryInverse"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x29

    goto/16 :goto_4

    :sswitch_19
    const-string/jumbo v6, "selectableItemBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x23

    goto/16 :goto_4

    :sswitch_1a
    const-string v6, "panelFullBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto/16 :goto_4

    :sswitch_1b
    const-string v6, "colorActivatedHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x5

    goto/16 :goto_4

    :sswitch_1c
    const-string/jumbo v6, "queryBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x22

    goto/16 :goto_4

    :sswitch_1d
    const-string/jumbo v6, "windowBackgroundFallback"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x27

    goto/16 :goto_4

    :sswitch_1e
    const-string v6, "colorPressedHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x14

    goto/16 :goto_4

    :sswitch_1f
    const-string v6, "colorControlActivated"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0xa

    goto/16 :goto_4

    :sswitch_20
    const-string v6, "colorForeground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x10

    goto/16 :goto_4

    :sswitch_21
    const-string v6, "colorEdgeEffect"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0xd

    goto/16 :goto_4

    :sswitch_22
    const-string v6, "actionBarItemBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto/16 :goto_4

    :sswitch_23
    const-string v6, "numbersBackgroundColor"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x1d

    goto/16 :goto_4

    :sswitch_24
    const-string/jumbo v6, "textColorHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x2c

    goto/16 :goto_4

    :sswitch_25
    const-string v6, "colorMultiSelectHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x13

    goto/16 :goto_4

    :sswitch_26
    const-string/jumbo v6, "textColor"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x25

    goto/16 :goto_4

    :sswitch_27
    const-string v6, "editTextBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x19

    goto/16 :goto_4

    :sswitch_28
    const-string v6, "colorControlHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0xb

    goto :goto_4

    :sswitch_29
    const-string/jumbo v6, "windowBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x26

    goto :goto_4

    :sswitch_2a
    const-string v6, "colorSecondary"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x17

    goto :goto_4

    :sswitch_2b
    const-string v6, "colorForegroundInverse"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x11

    goto :goto_4

    :sswitch_2c
    const-string/jumbo v6, "textColorHintInverse"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x2f

    goto :goto_4

    :sswitch_2d
    const-string v6, "panelColorBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x1f

    goto :goto_4

    :sswitch_2e
    const-string/jumbo v6, "textColorLink"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x2d

    goto :goto_4

    :sswitch_2f
    const-string/jumbo v6, "textColorHint"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x2e

    goto :goto_4

    :sswitch_30
    const-string v6, "colorPrimaryDark"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x16

    goto :goto_4

    :goto_3
    const/4 v6, -0x1

    :goto_4
    const v7, 0x1010429

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_5

    .line 575
    :pswitch_0
    invoke-direct {p0, v3, v7}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 571
    :pswitch_1
    const v6, 0x101003f

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 572
    goto/16 :goto_5

    .line 567
    :pswitch_2
    const v6, 0x101009a

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 568
    goto/16 :goto_5

    .line 563
    :pswitch_3
    const v6, 0x101009b

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 564
    goto/16 :goto_5

    .line 559
    :pswitch_4
    const v6, 0x1010099

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 560
    goto/16 :goto_5

    .line 555
    :pswitch_5
    const v6, 0x1010213

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 556
    goto/16 :goto_5

    .line 551
    :pswitch_6
    const v6, 0x1010212

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 552
    goto/16 :goto_5

    .line 547
    :pswitch_7
    const v6, 0x101003a

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 548
    goto/16 :goto_5

    .line 543
    :pswitch_8
    const v6, 0x1010039

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 544
    goto/16 :goto_5

    .line 539
    :pswitch_9
    const v6, 0x1010503

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 540
    goto/16 :goto_5

    .line 536
    :pswitch_a
    const v6, 0x1010054

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 537
    goto/16 :goto_5

    .line 533
    :pswitch_b
    const v6, 0x1010098

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 534
    goto/16 :goto_5

    .line 530
    :pswitch_c
    const v6, 0x1010488

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 531
    goto/16 :goto_5

    .line 527
    :pswitch_d
    const v6, 0x101030e

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 528
    goto/16 :goto_5

    .line 524
    :pswitch_e
    const v6, 0x1010487

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 525
    goto/16 :goto_5

    .line 521
    :pswitch_f
    const v6, 0x1010176

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 522
    goto/16 :goto_5

    .line 518
    :pswitch_10
    const v6, 0x101005f

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 519
    goto/16 :goto_5

    .line 515
    :pswitch_11
    const v6, 0x1010061

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 516
    goto/16 :goto_5

    .line 512
    :pswitch_12
    const v6, 0x101005e

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 513
    goto/16 :goto_5

    .line 509
    :pswitch_13
    const v6, 0x10104a2

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 510
    goto/16 :goto_5

    .line 506
    :pswitch_14
    const v6, 0x1010130

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 507
    goto/16 :goto_5

    .line 503
    :pswitch_15
    const v6, 0x101012f

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 504
    goto/16 :goto_5

    .line 500
    :pswitch_16
    const v6, 0x101004c

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 501
    goto/16 :goto_5

    .line 497
    :pswitch_17
    const v6, 0x1010352

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 498
    goto/16 :goto_5

    .line 494
    :pswitch_18
    const v6, 0x101034e

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 495
    goto/16 :goto_5

    .line 491
    :pswitch_19
    const v6, 0x1010530

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 492
    goto/16 :goto_5

    .line 488
    :pswitch_1a
    const v6, 0x1010434

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 489
    goto/16 :goto_5

    .line 485
    :pswitch_1b
    const v6, 0x1010433

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 486
    goto/16 :goto_5

    .line 482
    :pswitch_1c
    const v6, 0x101038d

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 483
    goto/16 :goto_5

    .line 479
    :pswitch_1d
    const v6, 0x1010391

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 480
    goto/16 :goto_5

    .line 476
    :pswitch_1e
    const v6, 0x101038e

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 477
    goto/16 :goto_5

    .line 473
    :pswitch_1f
    const v6, 0x1010206

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 474
    goto/16 :goto_5

    .line 469
    :pswitch_20
    const v6, 0x1010030

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 470
    goto/16 :goto_5

    .line 466
    :pswitch_21
    const v6, 0x101038f

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 467
    goto/16 :goto_5

    .line 463
    :pswitch_22
    const v6, 0x1010543

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 464
    goto :goto_5

    .line 460
    :pswitch_23
    const v6, 0x10104ce

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 461
    goto :goto_5

    .line 456
    :pswitch_24
    invoke-direct {p0, v3, v7}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 457
    goto :goto_5

    .line 452
    :pswitch_25
    const v6, 0x101042c

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 453
    goto :goto_5

    .line 449
    :pswitch_26
    const v6, 0x101042a

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 450
    goto :goto_5

    .line 445
    :pswitch_27
    const v6, 0x101042b

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 446
    goto :goto_5

    .line 442
    :pswitch_28
    const v6, 0x10104e2

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 443
    goto :goto_5

    .line 438
    :pswitch_29
    const v6, 0x10102ab

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 439
    goto :goto_5

    .line 435
    :pswitch_2a
    const v6, 0x1010031

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 436
    goto :goto_5

    .line 432
    :pswitch_2b
    const v6, 0x1010390

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 433
    goto :goto_5

    .line 429
    :pswitch_2c
    const v6, 0x1010435

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 430
    goto :goto_5

    .line 426
    :pswitch_2d
    const v6, 0x10102fd

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 427
    goto :goto_5

    .line 423
    :pswitch_2e
    const v6, 0x101039d

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 424
    goto :goto_5

    .line 420
    :pswitch_2f
    const v6, 0x10102db

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 421
    goto :goto_5

    .line 417
    :pswitch_30
    const v6, 0x101039c

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 418
    nop

    .line 409
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "sub":Ljava/lang/String;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 579
    .end local v2    # "i":I
    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d4b52cb -> :sswitch_30
        -0x79908a23 -> :sswitch_2f
        -0x798eb8b0 -> :sswitch_2e
        -0x6a3f59b3 -> :sswitch_2d
        -0x625ee56d -> :sswitch_2c
        -0x5efbf4b6 -> :sswitch_2b
        -0x5ee4feaf -> :sswitch_2a
        -0x5df81ec2 -> :sswitch_29
        -0x4cd1b2a6 -> :sswitch_28
        -0x430e7d1b -> :sswitch_27
        -0x3f64d1ca -> :sswitch_26
        -0x3a2a2f5e -> :sswitch_25
        -0x3991e4e2 -> :sswitch_24
        -0x367b7cd5 -> :sswitch_23
        -0x29fa7002 -> :sswitch_22
        -0x2555828f -> :sswitch_21
        -0x20bc2afa -> :sswitch_20
        -0x18087589 -> :sswitch_1f
        -0x15af2bcb -> :sswitch_1e
        -0x159c31c0 -> :sswitch_1d
        -0xd790fea -> :sswitch_1c
        -0x74ea95a -> :sswitch_1b
        0x14aac41 -> :sswitch_1a
        0x2b89a97 -> :sswitch_19
        0xd357d72 -> :sswitch_18
        0xe082e01 -> :sswitch_17
        0x10e99f28 -> :sswitch_16
        0x1993c0f1 -> :sswitch_15
        0x1add7a0d -> :sswitch_14
        0x21122f07 -> :sswitch_13
        0x26566480 -> :sswitch_12
        0x2d8aed51 -> :sswitch_11
        0x31673366 -> :sswitch_10
        0x39eaac17 -> :sswitch_f
        0x45926168 -> :sswitch_e
        0x45d104a8 -> :sswitch_d
        0x45d919af -> :sswitch_c
        0x479ba9bc -> :sswitch_b
        0x4b6fd865 -> :sswitch_a
        0x4d3730a1 -> :sswitch_9
        0x5563079b -> :sswitch_8
        0x5765e2a4 -> :sswitch_7
        0x57763c93 -> :sswitch_6
        0x5ef2ad66 -> :sswitch_5
        0x60354f38 -> :sswitch_4
        0x62508652 -> :sswitch_3
        0x6824bafa -> :sswitch_2
        0x743ff11f -> :sswitch_1
        0x7f61def0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private blacklist provideHapticFeedback(I)V
    .locals 2
    .param p1, "type"    # I

    .line 628
    sget-object v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->sHapticTable:[I

    sget-object v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->sHapticTable:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->performHapticFeedback(I)Z

    .line 629
    return-void
.end method

.method private blacklist setRColor(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 582
    invoke-direct {p0, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getColorFromResource(I)I

    move-result v0

    .line 583
    .local v0, "color":I
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setColor(Ljava/lang/String;I)V

    .line 584
    return-void
.end method

.method private blacklist setupSensors()V
    .locals 8

    .line 637
    const/16 v0, 0x11

    .line 638
    .local v0, "minId":I
    const/16 v1, 0x1a

    .line 639
    .local v1, "maxId":I
    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    .line 641
    .local v2, "ids":[I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->hasSensorListeners([I)I

    move-result v3

    .line 642
    .local v3, "count":I
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    .line 643
    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    .line 644
    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    .line 645
    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    .line 646
    if-lez v3, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    .line 649
    .local v4, "app":Landroid/app/Application;
    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 650
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 651
    aget v6, v2, v5

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 674
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    if-nez v6, :cond_0

    .line 675
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    goto :goto_1

    .line 669
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    if-nez v6, :cond_0

    .line 670
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    goto :goto_1

    .line 662
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    if-nez v6, :cond_0

    .line 663
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    goto :goto_1

    .line 655
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    if-nez v6, :cond_0

    .line 656
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    .line 650
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 680
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->registerListener()V

    .line 681
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addIdActionListener(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V

    .line 326
    return-void
.end method

.method public blacklist clearLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalString(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public blacklist clearSystemLocalString(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalString(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public blacklist clearUserLocalInt(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalInt(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public blacklist clearUserLocalString(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalString(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEvalTime()F
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getEvalTime()F

    move-result v0

    return v0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedFloats()[Ljava/lang/String;
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedImages()[Ljava/lang/String;
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedStrings()[Ljava/lang/String;
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpsPerFrame()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getOpsPerFrame()I

    move-result v0

    return v0
.end method

.method public blacklist getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    return-object v0
.end method

.method public whitelist invalidate()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 93
    :cond_0
    return-void
.end method

.method public blacklist isDraggable()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->isDraggable()Z

    move-result v0

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 0

    .line 685
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->unregisterListener()V

    .line 687
    return-void
.end method

.method public blacklist registerListener()V
    .locals 8

    .line 690
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 691
    .local v1, "s":[Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v2, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->unregisterListener()V

    .line 694
    :cond_0
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)V

    .line 722
    .local v2, "listener":Landroid/hardware/SensorEventListener;
    new-array v0, v0, [Landroid/hardware/Sensor;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    aput-object v7, v0, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    aput-object v3, v0, v5

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    aput-object v3, v0, v6

    .line 723
    .local v0, "sensors":[Landroid/hardware/Sensor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 724
    aget-object v4, v0, v3

    .line 725
    .local v4, "sensor":Landroid/hardware/Sensor;
    if-eqz v4, :cond_1

    .line 726
    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    .line 727
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v5, v7, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 723
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public whitelist requestLayout()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->requestLayout()V

    .line 82
    :cond_0
    return-void
.end method

.method public blacklist setColor(Ljava/lang/String;I)V
    .locals 1
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "colorValue"    # I

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setColor(Ljava/lang/String;I)V

    .line 389
    return-void
.end method

.method public blacklist setDebug(I)V
    .locals 1
    .param p1, "debugFlags"    # I

    .line 110
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDebug(I)V

    .line 111
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .locals 4
    .param p1, "value"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 118
    if-eqz p1, :cond_1

    .line 119
    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->canBeDisplayed(IIJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getContentScroll()I

    move-result v0

    .line 123
    .local v0, "contentBehavior":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->applyContentBehavior(I)V

    .line 124
    .end local v0    # "contentBehavior":I
    goto :goto_0

    .line 125
    :cond_0
    const-string v0, "RemoteComposePlayer"

    const-string v1, "Unsupported document "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    sget-object v0, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeTouchHelper;->REGISTRAR:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;->setAccessibilityDelegate(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    goto :goto_1

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 132
    sget-object v0, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeTouchHelper;->REGISTRAR:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;->clearAccessibilityDelegate(Landroid/view/View;)V

    .line 134
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mapColors()V

    .line 135
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setupSensors()V

    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$1;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->checkShaders(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V

    .line 145
    return-void
.end method

.method public blacklist setLocalString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public blacklist setShaderControl(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .locals 0
    .param p1, "ctl"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 762
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 763
    return-void
.end method

.method public blacklist setSystemLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 1
    .param p1, "theme"    # I

    .line 339
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getTheme()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setTheme(I)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 343
    :cond_0
    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setUseChoreographer(Z)V

    .line 301
    return-void
.end method

.method public blacklist setUserLocalInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalInt(Ljava/lang/String;I)V

    .line 245
    return-void
.end method

.method public blacklist setUserLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public blacklist unregisterListener()V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 737
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    .line 738
    return-void
.end method

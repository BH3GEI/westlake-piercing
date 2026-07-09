.class public final Landroid/app/jank/AppJankStats;
.super Ljava/lang/Object;
.source "AppJankStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/jank/AppJankStats$WidgetState;,
        Landroid/app/jank/AppJankStats$WidgetCategory;
    }
.end annotation


# static fields
.field public static final WIDGET_CATEGORY_ANIMATION:Ljava/lang/String; = "animation"

.field public static final WIDGET_CATEGORY_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final WIDGET_CATEGORY_MEDIA:Ljava/lang/String; = "media"

.field public static final WIDGET_CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final WIDGET_CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final WIDGET_CATEGORY_SCROLL:Ljava/lang/String; = "scroll"

.field public static final WIDGET_CATEGORY_UNSPECIFIED:Ljava/lang/String; = "unspecified"

.field public static final WIDGET_STATE_ANIMATING:Ljava/lang/String; = "animating"

.field public static final WIDGET_STATE_DRAGGING:Ljava/lang/String; = "dragging"

.field public static final WIDGET_STATE_FLINGING:Ljava/lang/String; = "flinging"

.field public static final WIDGET_STATE_NONE:Ljava/lang/String; = "none"

.field public static final WIDGET_STATE_PLAYBACK:Ljava/lang/String; = "playback"

.field public static final WIDGET_STATE_PREDICTIVE_BACK:Ljava/lang/String; = "predictive_back"

.field public static final WIDGET_STATE_SCROLLING:Ljava/lang/String; = "scrolling"

.field public static final WIDGET_STATE_SWIPING:Ljava/lang/String; = "swiping"

.field public static final WIDGET_STATE_TAPPING:Ljava/lang/String; = "tapping"

.field public static final WIDGET_STATE_UNSPECIFIED:Ljava/lang/String; = "unspecified"

.field public static final WIDGET_STATE_ZOOMING:Ljava/lang/String; = "zooming"


# instance fields
.field private mJankyFrames:J

.field private mNavigationComponent:Ljava/lang/String;

.field private mRelativeFrameTimeHistogram:Landroid/app/jank/RelativeFrameTimeHistogram;

.field private mTotalFrames:J

.field private mUid:I

.field private mWidgetCategory:Ljava/lang/String;

.field private mWidgetId:Ljava/lang/String;

.field private mWidgetState:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/app/jank/RelativeFrameTimeHistogram;)V
    .locals 2
    .param p1, "appUid"    # I
    .param p2, "widgetId"    # Ljava/lang/String;
    .param p3, "navigationComponent"    # Ljava/lang/String;
    .param p4, "widgetCategory"    # Ljava/lang/String;
    .param p5, "widgetState"    # Ljava/lang/String;
    .param p6, "totalFrames"    # J
    .param p8, "jankyFrames"    # J
    .param p10, "relativeFrameTimeHistogram"    # Landroid/app/jank/RelativeFrameTimeHistogram;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput p1, p0, Landroid/app/jank/AppJankStats;->mUid:I

    .line 185
    iput-object p2, p0, Landroid/app/jank/AppJankStats;->mWidgetId:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Landroid/app/jank/AppJankStats;->mNavigationComponent:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, "unspecified"

    if-eqz p4, :cond_0

    move-object v1, p4

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/app/jank/AppJankStats;->mWidgetCategory:Ljava/lang/String;

    .line 188
    if-eqz p5, :cond_1

    move-object v0, p5

    :cond_1
    iput-object v0, p0, Landroid/app/jank/AppJankStats;->mWidgetState:Ljava/lang/String;

    .line 189
    iput-wide p6, p0, Landroid/app/jank/AppJankStats;->mTotalFrames:J

    .line 190
    iput-wide p8, p0, Landroid/app/jank/AppJankStats;->mJankyFrames:J

    .line 191
    iput-object p10, p0, Landroid/app/jank/AppJankStats;->mRelativeFrameTimeHistogram:Landroid/app/jank/RelativeFrameTimeHistogram;

    .line 192
    return-void
.end method


# virtual methods
.method public getJankyFrameCount()J
    .locals 2

    .line 239
    iget-wide v0, p0, Landroid/app/jank/AppJankStats;->mJankyFrames:J

    return-wide v0
.end method

.method public getNavigationComponent()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Landroid/app/jank/AppJankStats;->mNavigationComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativeFrameTimeHistogram()Landroid/app/jank/RelativeFrameTimeHistogram;
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/app/jank/AppJankStats;->mRelativeFrameTimeHistogram:Landroid/app/jank/RelativeFrameTimeHistogram;

    return-object v0
.end method

.method public getTotalFrameCount()J
    .locals 2

    .line 248
    iget-wide v0, p0, Landroid/app/jank/AppJankStats;->mTotalFrames:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 200
    iget v0, p0, Landroid/app/jank/AppJankStats;->mUid:I

    return v0
.end method

.method public getWidgetCategory()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/app/jank/AppJankStats;->mWidgetCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/app/jank/AppJankStats;->mWidgetId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetState()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/app/jank/AppJankStats;->mWidgetState:Ljava/lang/String;

    return-object v0
.end method

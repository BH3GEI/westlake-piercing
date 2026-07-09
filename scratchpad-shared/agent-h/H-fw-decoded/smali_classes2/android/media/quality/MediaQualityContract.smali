.class public Landroid/media/quality/MediaQualityContract;
.super Ljava/lang/Object;
.source "MediaQualityContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/MediaQualityContract$SoundQuality;,
        Landroid/media/quality/MediaQualityContract$PictureQuality;,
        Landroid/media/quality/MediaQualityContract$BaseParameters;,
        Landroid/media/quality/MediaQualityContract$Level;
    }
.end annotation


# static fields
.field public static final whitelist LEVEL_HIGH:Ljava/lang/String; = "level_high"

.field public static final whitelist LEVEL_LOW:Ljava/lang/String; = "level_low"

.field public static final whitelist LEVEL_MEDIUM:Ljava/lang/String; = "level_medium"

.field public static final whitelist LEVEL_OFF:Ljava/lang/String; = "level_off"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    return-void
.end method

.class Landroid/content/res/ResourceTimer$Config;
.super Ljava/lang/Object;
.source "ResourceTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourceTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Config"
.end annotation


# instance fields
.field maxBuckets:I

.field maxLargest:I

.field maxTimer:I

.field timers:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/ResourceTimer-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/ResourceTimer$Config;-><init>()V

    return-void
.end method

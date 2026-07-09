.class public final Landroid/media/MediaRouter2$ScanToken;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScanToken"
.end annotation


# instance fields
.field private final blacklist mId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaRouter2$ScanToken;->mId:I

    return p0
.end method

.method private constructor blacklist <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 1717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1718
    iput p1, p0, Landroid/media/MediaRouter2$ScanToken;->mId:I

    .line 1719
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/media/MediaRouter2-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ScanToken;-><init>(I)V

    return-void
.end method

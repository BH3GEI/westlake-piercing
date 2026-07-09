.class public Landroid/app/ActivityOptions$SourceInfo;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$SourceInfo$SourceType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptions$SourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_DESKTOP_ANIMATION:I = 0x5

.field public static final TYPE_LAUNCHER:I = 0x1

.field public static final TYPE_LOCKSCREEN:I = 0x3

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RECENTS_ANIMATION:I = 0x4


# instance fields
.field public final eventTimeMs:J

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2832
    new-instance v0, Landroid/app/ActivityOptions$SourceInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityOptions$SourceInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptions$SourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJ)V
    .locals 0
    .param p1, "srcType"    # I
    .param p2, "uptimeMillis"    # J

    .line 2816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2817
    iput p1, p0, Landroid/app/ActivityOptions$SourceInfo;->type:I

    .line 2818
    iput-wide p2, p0, Landroid/app/ActivityOptions$SourceInfo;->eventTimeMs:J

    .line 2819
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2829
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2823
    iget v0, p0, Landroid/app/ActivityOptions$SourceInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2824
    iget-wide v0, p0, Landroid/app/ActivityOptions$SourceInfo;->eventTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2825
    return-void
.end method

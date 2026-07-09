.class public final Landroid/app/usage/UsageEventsQuery;
.super Ljava/lang/Object;
.source "UsageEventsQuery.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEventsQuery$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/UsageEventsQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBeginTimeMillis:J

.field private final mEndTimeMillis:J

.field private final mEventTypes:[I

.field private final mPackageNames:[Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Landroid/app/usage/UsageEventsQuery$1;

    invoke-direct {v0}, Landroid/app/usage/UsageEventsQuery$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageEventsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/usage/UsageEventsQuery$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/usage/UsageEventsQuery$Builder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/usage/UsageEventsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mBeginTimeMillis:J

    .line 51
    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmEndTimeMillis(Landroid/app/usage/UsageEventsQuery$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mEndTimeMillis:J

    .line 52
    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmEventTypes(Landroid/app/usage/UsageEventsQuery$Builder;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    .line 53
    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmUserId(Landroid/app/usage/UsageEventsQuery$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEventsQuery;->mUserId:I

    .line 54
    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmPackageNames(Landroid/app/usage/UsageEventsQuery$Builder;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Landroid/app/usage/UsageEventsQuery$Builder;->-$$Nest$fgetmPackageNames(Landroid/app/usage/UsageEventsQuery$Builder;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/usage/UsageEventsQuery$Builder;Landroid/app/usage/UsageEventsQuery-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/usage/UsageEventsQuery;-><init>(Landroid/app/usage/UsageEventsQuery$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mBeginTimeMillis:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mEndTimeMillis:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "eventTypesLength":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    .line 62
    iget-object v1, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/usage/UsageEventsQuery;->mUserId:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "packageNamesLength":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    .line 66
    iget-object v2, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/usage/UsageEventsQuery-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/usage/UsageEventsQuery;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getBeginTimeMillis()J
    .locals 2

    .line 74
    iget-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mBeginTimeMillis:J

    return-wide v0
.end method

.method public getEndTimeMillis()J
    .locals 2

    .line 82
    iget-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mEndTimeMillis:J

    return-wide v0
.end method

.method public getEventTypes()[I
    .locals 2

    .line 96
    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    iget-object v1, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 120
    .local v0, "pkgNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 121
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v4    # "pkgName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 101
    iget v0, p0, Landroid/app/usage/UsageEventsQuery;->mUserId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    iget-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mBeginTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Landroid/app/usage/UsageEventsQuery;->mEndTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mEventTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 137
    iget v0, p0, Landroid/app/usage/UsageEventsQuery;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Landroid/app/usage/UsageEventsQuery;->mPackageNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 140
    return-void
.end method

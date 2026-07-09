.class public final Landroid/media/quality/AmbientBacklightEvent;
.super Ljava/lang/Object;
.source "AmbientBacklightEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/AmbientBacklightEvent$Type;
    }
.end annotation


# static fields
.field public static final whitelist AMBIENT_BACKLIGHT_EVENT_DISABLED:I = 0x2

.field public static final whitelist AMBIENT_BACKLIGHT_EVENT_ENABLED:I = 0x1

.field public static final whitelist AMBIENT_BACKLIGHT_EVENT_INTERRUPTED:I = 0x4

.field public static final whitelist AMBIENT_BACKLIGHT_EVENT_METADATA_AVAILABLE:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/AmbientBacklightEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEventType:I

.field private final blacklist mMetadata:Landroid/media/quality/AmbientBacklightMetadata;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Landroid/media/quality/AmbientBacklightEvent$1;

    invoke-direct {v0}, Landroid/media/quality/AmbientBacklightEvent$1;-><init>()V

    sput-object v0, Landroid/media/quality/AmbientBacklightEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/media/quality/AmbientBacklightMetadata;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "metadata"    # Landroid/media/quality/AmbientBacklightMetadata;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    .line 76
    iput-object p2, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    .line 77
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    .line 81
    const-class v0, Landroid/media/quality/AmbientBacklightMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/quality/AmbientBacklightMetadata;

    iput-object v0, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/AmbientBacklightEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/quality/AmbientBacklightEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 129
    return v0

    .line 132
    :cond_0
    instance-of v1, p1, Landroid/media/quality/AmbientBacklightEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 133
    return v2

    .line 136
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/quality/AmbientBacklightEvent;

    .line 137
    .local v1, "other":Landroid/media/quality/AmbientBacklightEvent;
    iget v3, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    iget v4, v1, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    iget-object v4, v1, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    .line 138
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 137
    :goto_0
    return v0
.end method

.method public whitelist getEventType()I
    .locals 1

    .line 89
    iget v0, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    return v0
.end method

.method public whitelist getMetadata()Landroid/media/quality/AmbientBacklightMetadata;
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 143
    iget v0, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmbientBacklightEvent{mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget v0, p0, Landroid/media/quality/AmbientBacklightEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Landroid/media/quality/AmbientBacklightEvent;->mMetadata:Landroid/media/quality/AmbientBacklightMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 107
    return-void
.end method

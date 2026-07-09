.class public final Landroid/app/time/TimeZoneConfiguration;
.super Ljava/lang/Object;
.source "TimeZoneConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeZoneConfiguration$Builder;,
        Landroid/app/time/TimeZoneConfiguration$Setting;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeZoneConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTING_AUTO_DETECTION_ENABLED:Ljava/lang/String; = "autoDetectionEnabled"

.field private static final SETTING_GEO_DETECTION_ENABLED:Ljava/lang/String; = "geoDetectionEnabled"

.field private static final SETTING_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "notificationsEnabled"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBundle(Landroid/app/time/TimeZoneConfiguration;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneConfiguration;
    .locals 0

    invoke-static {p0}, Landroid/app/time/TimeZoneConfiguration;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$1;

    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeZoneConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/time/TimeZoneConfiguration$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->-$$Nest$fgetmBundle(Landroid/app/time/TimeZoneConfiguration$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/time/TimeZoneConfiguration$Builder;Landroid/app/time/TimeZoneConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/time/TimeZoneConfiguration;-><init>(Landroid/app/time/TimeZoneConfiguration$Builder;)V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneConfiguration;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 89
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 90
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setPropertyBundleInternal(Landroid/os/Bundle;)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method private enforceSettingPresent(Ljava/lang/String;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 2

    .line 171
    const-string/jumbo v0, "notificationsEnabled"

    invoke-direct {p0, v0}, Landroid/app/time/TimeZoneConfiguration;->enforceSettingPresent(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 191
    if-ne p0, p1, :cond_0

    .line 192
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/time/TimeZoneConfiguration;

    .line 198
    .local v0, "that":Landroid/app/time/TimeZoneConfiguration;
    iget-object v1, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    iget-object v2, v0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v1

    return v1

    .line 195
    .end local v0    # "that":Landroid/app/time/TimeZoneConfiguration;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasIsAutoDetectionEnabled()Z
    .locals 2

    .line 131
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    const-string v1, "autoDetectionEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasIsGeoDetectionEnabled()Z
    .locals 2

    .line 155
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    const-string v1, "geoDetectionEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasIsNotificationsEnabled()Z
    .locals 2

    .line 181
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "notificationsEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 203
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAutoDetectionEnabled()Z
    .locals 2

    .line 121
    const-string v0, "autoDetectionEnabled"

    invoke-direct {p0, v0}, Landroid/app/time/TimeZoneConfiguration;->enforceSettingPresent(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->hasIsGeoDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->hasIsNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0
.end method

.method public isGeoDetectionEnabled()Z
    .locals 2

    .line 145
    const-string v0, "geoDetectionEnabled"

    invoke-direct {p0, v0}, Landroid/app/time/TimeZoneConfiguration;->enforceSettingPresent(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneConfiguration{mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Landroid/app/time/TimeZoneConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

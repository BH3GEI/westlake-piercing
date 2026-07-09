.class public final Landroid/app/ActivityOptions$LaunchCookie;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchCookie"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptions$LaunchCookie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final binder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2169
    new-instance v0, Landroid/app/ActivityOptions$LaunchCookie$1;

    invoke-direct {v0}, Landroid/app/ActivityOptions$LaunchCookie$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptions$LaunchCookie;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2119
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 2120
    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    iput-object p1, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 2129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2124
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0, p1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 2125
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityOptions$LaunchCookie;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 2149
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2150
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 2151
    const/4 v1, 0x0

    return-object v1

    .line 2153
    :cond_0
    new-instance v1, Landroid/app/ActivityOptions$LaunchCookie;

    invoke-direct {v1, v0}, Landroid/app/ActivityOptions$LaunchCookie;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static writeToParcel(Landroid/app/ActivityOptions$LaunchCookie;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "launchCookie"    # Landroid/app/ActivityOptions$LaunchCookie;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2158
    if-eqz p0, :cond_0

    .line 2159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityOptions$LaunchCookie;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2161
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2163
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2136
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2185
    instance-of v0, p1, Landroid/app/ActivityOptions$LaunchCookie;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2186
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityOptions$LaunchCookie;

    .line 2187
    .local v0, "other":Landroid/app/ActivityOptions$LaunchCookie;
    iget-object v2, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2189
    .end local v0    # "other":Landroid/app/ActivityOptions$LaunchCookie;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 2194
    iget-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2144
    iget-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2145
    return-void
.end method

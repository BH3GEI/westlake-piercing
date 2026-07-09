.class public final Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 1187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mPackageName:Ljava/lang/String;

    .line 1189
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    .line 1190
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;
    .locals 2

    .line 1220
    new-instance v0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;-><init>(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;Landroid/media/MediaRoute2ProviderService-IA;)V

    return-object v0
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1202
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    .line 1203
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mPackageName:Ljava/lang/String;

    .line 1214
    return-object p0
.end method

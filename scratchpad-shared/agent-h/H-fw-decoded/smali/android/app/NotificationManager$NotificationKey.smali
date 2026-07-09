.class final Landroid/app/NotificationManager$NotificationKey;
.super Ljava/lang/Record;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "user",
        "pkg",
        "tag",
        "id"
    }
    componentSignatures = {
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Landroid/os/UserHandle;,
        Ljava/lang/String;,
        Ljava/lang/String;,
        I
    }
.end annotation


# instance fields
.field private final id:I

.field private final pkg:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final user:Landroid/os/UserHandle;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/app/NotificationManager$NotificationKey;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/NotificationManager$NotificationKey;

    iget v0, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    iget v1, p1, Landroid/app/NotificationManager$NotificationKey;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iget-object v1, p1, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iget-object v1, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    iget v3, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetpkg(Landroid/app/NotificationManager$NotificationKey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuser(Landroid/app/NotificationManager$NotificationKey;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    return-object p0
.end method

.method private constructor <init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "user",
            "pkg",
            "tag",
            "id"
        }
    .end annotation

    .line 845
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iput-object p2, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    iput p4, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/NotificationManager$NotificationKey;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 845
    invoke-direct {p0, p1}, Landroid/app/NotificationManager$NotificationKey;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 845
    iget v0, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    iget-object v1, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/app/NotificationManager$NotificationKey$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public id()I
    .locals 1

    .line 845
    iget v0, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    return v0
.end method

.method public pkg()Ljava/lang/String;
    .locals 1

    .line 845
    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public tag()Ljava/lang/String;
    .locals 1

    .line 845
    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 845
    invoke-direct {p0}, Landroid/app/NotificationManager$NotificationKey;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager$NotificationKey;

    const-string/jumbo v2, "user;pkg;tag;id"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public user()Landroid/os/UserHandle;
    .locals 1

    .line 845
    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    return-object v0
.end method

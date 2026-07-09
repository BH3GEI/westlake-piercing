.class final Landroid/app/NotificationManager$NotificationChannelQuery;
.super Ljava/lang/Record;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationChannelQuery"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "callingPkg",
        "targetPkg",
        "userId"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Ljava/lang/String;,
        I
    }
.end annotation


# instance fields
.field private final callingPkg:Ljava/lang/String;

.field private final targetPkg:Ljava/lang/String;

.field private final userId:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/app/NotificationManager$NotificationChannelQuery;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    iget v1, p1, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

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
    .locals 3

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    iget v2, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetcallingPkg(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettargetPkg(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserId(Landroid/app/NotificationManager$NotificationChannelQuery;)I
    .locals 0

    iget p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    return p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callingPkg",
            "targetPkg",
            "userId"
        }
    .end annotation

    .line 1509
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    iput p3, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public callingPkg()Ljava/lang/String;
    .locals 1

    .line 1509
    iget-object v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1509
    invoke-direct {p0, p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1509
    iget v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    iget-object v1, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/NotificationManager$NotificationChannelQuery$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public targetPkg()Ljava/lang/String;
    .locals 1

    .line 1509
    iget-object v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1509
    invoke-direct {p0}, Landroid/app/NotificationManager$NotificationChannelQuery;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager$NotificationChannelQuery;

    const-string v2, "callingPkg;targetPkg;userId"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userId()I
    .locals 1

    .line 1509
    iget v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    return v0
.end method

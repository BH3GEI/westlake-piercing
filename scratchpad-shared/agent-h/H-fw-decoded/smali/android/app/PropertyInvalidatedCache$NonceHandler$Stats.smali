.class final Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
.super Ljava/lang/Record;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache$NonceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stats"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "invalidated",
        "corkedInvalidates"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        I
    }
.end annotation


# instance fields
.field private final corkedInvalidates:I

.field private final invalidated:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    iget v1, p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    iget p1, p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetcorkedInvalidates(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinvalidated(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    return p0
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "invalidated"    # I
    .param p2, "corkedInvalidates"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "invalidated",
            "corkedInvalidates"
        }
    .end annotation

    .line 893
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    iput p2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    return-void
.end method


# virtual methods
.method public corkedInvalidates()I
    .locals 1

    .line 893
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 893
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 893
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats$$ExternalSyntheticRecord0;->m(II)I

    move-result v0

    return v0
.end method

.method public invalidated()I
    .locals 1

    .line 893
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 893
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    const-string/jumbo v2, "invalidated;corkedInvalidates"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

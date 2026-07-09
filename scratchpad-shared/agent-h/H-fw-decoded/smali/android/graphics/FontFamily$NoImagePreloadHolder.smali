.class Landroid/graphics/FontFamily$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field private static final sBuilderRegistry:Llibcore/util/NativeAllocationRegistry;

.field private static final sFamilyRegistry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsBuilderRegistry()Llibcore/util/NativeAllocationRegistry;
    .locals 1

    sget-object v0, Landroid/graphics/FontFamily$NoImagePreloadHolder;->sBuilderRegistry:Llibcore/util/NativeAllocationRegistry;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsFamilyRegistry()Llibcore/util/NativeAllocationRegistry;
    .locals 1

    sget-object v0, Landroid/graphics/FontFamily$NoImagePreloadHolder;->sFamilyRegistry:Llibcore/util/NativeAllocationRegistry;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 51
    const-class v0, Landroid/graphics/FontFamily;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/FontFamily;->-$$Nest$smnGetBuilderReleaseFunc()J

    move-result-wide v1

    .line 52
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontFamily$NoImagePreloadHolder;->sBuilderRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 55
    const-class v0, Landroid/graphics/FontFamily;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/FontFamily;->-$$Nest$smnGetFamilyReleaseFunc()J

    move-result-wide v1

    .line 56
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontFamily$NoImagePreloadHolder;->sFamilyRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

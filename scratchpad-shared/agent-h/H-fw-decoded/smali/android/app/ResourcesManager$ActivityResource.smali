.class Landroid/app/ResourcesManager$ActivityResource;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityResource"
.end annotation


# instance fields
.field public final overrideConfig:Landroid/content/res/Configuration;

.field public overrideDisplayId:Ljava/lang/Integer;

.field public resources:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResource;->overrideConfig:Landroid/content/res/Configuration;

    .line 366
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ResourcesManager-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ResourcesManager$ActivityResource;-><init>()V

    return-void
.end method

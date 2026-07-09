.class public final Landroid/service/dreams/DreamService$DreamMetadata;
.super Ljava/lang/Object;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DreamMetadata"
.end annotation


# instance fields
.field public final blacklist dreamCategory:I

.field public final blacklist previewImage:Landroid/graphics/drawable/Drawable;

.field public final blacklist settingsActivity:Landroid/content/ComponentName;

.field public final blacklist showComplications:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 1
    .param p1, "settingsActivity"    # Landroid/content/ComponentName;
    .param p2, "previewImage"    # Landroid/graphics/drawable/Drawable;
    .param p3, "showComplications"    # Z
    .param p4, "dreamCategory"    # I

    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1986
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamMetadata;->settingsActivity:Landroid/content/ComponentName;

    .line 1987
    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamMetadata;->previewImage:Landroid/graphics/drawable/Drawable;

    .line 1988
    iput-boolean p3, p0, Landroid/service/dreams/DreamService$DreamMetadata;->showComplications:Z

    .line 1989
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/controls/flags/Flags;->homePanelDream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1990
    iput p4, p0, Landroid/service/dreams/DreamService$DreamMetadata;->dreamCategory:I

    goto :goto_0

    .line 1992
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/dreams/DreamService$DreamMetadata;->dreamCategory:I

    .line 1994
    :goto_0
    return-void
.end method

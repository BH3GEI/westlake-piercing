.class public Landroid/flags/BooleanFlag;
.super Landroid/flags/BooleanFlagBase;
.source "BooleanFlag.java"


# instance fields
.field private final mDefault:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/flags/BooleanFlagBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-boolean p3, p0, Landroid/flags/BooleanFlag;->mDefault:Z

    .line 39
    return-void
.end method


# virtual methods
.method public defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlag;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "categoryName"    # Ljava/lang/String;

    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/flags/BooleanFlagBase;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;

    .line 50
    return-object p0
.end method

.method public bridge synthetic defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Landroid/flags/BooleanFlag;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlag;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/Flag;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Landroid/flags/BooleanFlag;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlag;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCategoryName()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefault()Ljava/lang/Boolean;
    .locals 1

    .line 44
    iget-boolean v0, p0, Landroid/flags/BooleanFlag;->mDefault:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefault()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Landroid/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabel()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNamespace()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

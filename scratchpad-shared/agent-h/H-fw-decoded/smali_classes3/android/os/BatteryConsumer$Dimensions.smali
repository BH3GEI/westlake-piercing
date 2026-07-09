.class public final Landroid/os/BatteryConsumer$Dimensions;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dimensions"
.end annotation


# instance fields
.field public final blacklist powerComponentId:I

.field public final blacklist powerState:I

.field public final blacklist processState:I

.field public final blacklist screenState:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "powerComponentId"    # I
    .param p2, "processState"    # I

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/os/BatteryConsumer$Dimensions;-><init>(IIII)V

    .line 320
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 0
    .param p1, "powerComponentId"    # I
    .param p2, "processState"    # I
    .param p3, "screenState"    # I
    .param p4, "powerState"    # I

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput p1, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    .line 325
    iput p2, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    .line 326
    iput p3, p0, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    .line 327
    iput p4, p0, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    .line 328
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "dimensionSpecified":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 335
    const-string/jumbo v2, "powerComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    const/16 v4, 0x13

    if-ge v2, v4, :cond_0

    .line 337
    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsPowerComponentNames()[Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 339
    :cond_0
    const-string v2, "CUSTOM/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    :goto_0
    const/4 v0, 0x1

    .line 343
    :cond_1
    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    const-string v4, ", "

    if-eq v2, v3, :cond_3

    .line 344
    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_2
    const-string/jumbo v2, "processState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsProcessStateNames()[Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const/4 v0, 0x1

    .line 350
    :cond_3
    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    if-eqz v2, :cond_5

    .line 351
    if-eqz v0, :cond_4

    .line 352
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_4
    const-string/jumbo v2, "screenState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    invoke-static {v3}, Landroid/os/BatteryConsumer;->screenStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const/4 v0, 0x1

    .line 357
    :cond_5
    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    if-eqz v2, :cond_7

    .line 358
    if-eqz v0, :cond_6

    .line 359
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_6
    const-string/jumbo v2, "powerState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-static {v3}, Landroid/os/BatteryConsumer;->powerStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const/4 v0, 0x1

    .line 364
    :cond_7
    if-nez v0, :cond_8

    .line 365
    const-string v2, "any components and process states"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

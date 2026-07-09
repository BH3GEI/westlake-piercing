.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "ColumnLayout.java"


# static fields
.field public static final blacklist BOTTOM:I = 0x5

.field public static final blacklist CENTER:I = 0x2

.field public static final blacklist END:I = 0x3

.field public static final blacklist SPACE_AROUND:I = 0x8

.field public static final blacklist SPACE_BETWEEN:I = 0x6

.field public static final blacklist SPACE_EVENLY:I = 0x7

.field public static final blacklist START:I = 0x1

.field public static final blacklist TOP:I = 0x4


# instance fields
.field blacklist mHorizontalPositioning:I

.field blacklist mSpacedBy:F

.field blacklist mVerticalPositioning:I


# direct methods
.method public static synthetic blacklist $r8$lambda$2lBfnWzgtr_Pm28ziGCHhfRAvEQ(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->lambda$internalLayoutMeasure$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Ym_JaJ1NbrWgDB52WfgzccZwj18(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->lambda$computeWrapSize$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$eAYbjOVZeccGYPKpSIhbW6F7Xl8(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->lambda$computeSize$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V
    .locals 2
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "horizontalPositioning"    # I
    .param p9, "verticalPositioning"    # I
    .param p10, "spacedBy"    # F

    .line 69
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 56
    move v0, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v0, "height":F
    .local p2, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local p3, "componentId":I
    .local p4, "animationId":I
    .local p5, "x":F
    .local p6, "y":F
    .local p7, "width":F
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    .line 70
    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    .line 71
    iput p9, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    .line 72
    iput p10, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V
    .locals 11
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "horizontalPositioning"    # I
    .param p5, "verticalPositioning"    # I
    .param p6, "spacedBy"    # F

    .line 82
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V

    .line 93
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .locals 1
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontalPositioning"    # I
    .param p4, "verticalPositioning"    # I
    .param p5, "spacedBy"    # F

    .line 406
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 408
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 409
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 410
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 411
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 412
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 7
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 442
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 443
    const-string v1, "Column layout implementation, positioning components one after the other vertically.\n\nIt supports weight and horizontal/vertical positioning."

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 447
    const/16 v1, 0x64

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 448
    const-string v1, "Top"

    const-string v2, "layout-ColumnLayout-start-top.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 449
    const-string v1, "Center"

    const-string v2, "layout-ColumnLayout-start-center.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 450
    const-string v1, "Bottom"

    const-string v2, "layout-ColumnLayout-start-bottom.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 451
    const-string v1, "SpaceEvenly"

    const-string v2, "layout-ColumnLayout-start-space-evenly.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 452
    const-string v1, "SpaceAround"

    const-string v2, "layout-ColumnLayout-start-space-around.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 453
    const-string v1, "SpaceBetween"

    const-string v2, "layout-ColumnLayout-start-space-between.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 454
    const/4 v1, 0x0

    const-string v2, "COMPONENT_ID"

    const-string/jumbo v3, "unique id for this component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 455
    const-string v2, "ANIMATION_ID"

    const-string v3, "id used to match components, for animation purposes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 459
    const-string v2, "HORIZONTAL_POSITIONING"

    const-string v3, "horizontal positioning value"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 460
    const-string v2, "START"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 461
    const-string v2, "CENTER"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 462
    const-string v5, "END"

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 463
    const-string v5, "VERTICAL_POSITIONING"

    const-string/jumbo v6, "vertical positioning value"

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 464
    const-string v1, "TOP"

    const/4 v5, 0x4

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 465
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 466
    const-string v1, "BOTTOM"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 467
    const-string v1, "SPACE_BETWEEN"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 468
    const-string v1, "SPACE_EVENLY"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 469
    const-string v1, "SPACE_AROUND"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 470
    const-string v1, "SPACED_BY"

    const-string v2, "Horizontal spacing between components"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 471
    return-void
.end method

.method private blacklist getPositioningString(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .line 493
    packed-switch p1, :pswitch_data_0

    .line 511
    const-string v0, "NONE"

    return-object v0

    .line 509
    :pswitch_0
    const-string v0, "SPACE_AROUND"

    return-object v0

    .line 507
    :pswitch_1
    const-string v0, "SPACE_EVENLY"

    return-object v0

    .line 505
    :pswitch_2
    const-string v0, "SPACE_BETWEEN"

    return-object v0

    .line 503
    :pswitch_3
    const-string v0, "BOTTOM"

    return-object v0

    .line 501
    :pswitch_4
    const-string v0, "TOP"

    return-object v0

    .line 499
    :pswitch_5
    const-string v0, "END"

    return-object v0

    .line 497
    :pswitch_6
    const-string v0, "CENTER"

    return-object v0

    .line 495
    :pswitch_7
    const-string v0, "START"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist id()I
    .locals 1

    .line 386
    const/16 v0, 0xcc

    return v0
.end method

.method private synthetic blacklist lambda$computeSize$1()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPUTE SIZE in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$computeWrapSize$0()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPUTE WRAP SIZE in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$internalLayoutMeasure$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;
    .locals 2
    .param p1, "selfMeasure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNAL LAYOUT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    return-object v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 377
    const-string v0, "ColumnLayout"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 421
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 422
    .local v2, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 423
    .local v3, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 424
    .local v4, "horizontalPositioning":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 425
    .local v5, "verticalPositioning":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 426
    .local v6, "spacedBy":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 162
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 163
    move v0, p5

    .line 164
    .local v0, "mh":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v0

    .end local v0    # "mh":F
    .local v7, "mh":F
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 165
    .local v2, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p6

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local p2    # "minWidth":F
    .end local p3    # "maxWidth":F
    .end local p4    # "minHeight":F
    .end local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local v3, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v4, "minWidth":F
    .local v5, "maxWidth":F
    .local v6, "minHeight":F
    .local v8, "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 166
    invoke-virtual {v8, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    .line 167
    .local p1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object p2

    sget-object p3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-eq p2, p3, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p2

    sub-float/2addr v7, p2

    .line 170
    .end local v2    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local p1    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_0
    move-object p1, v3

    move p2, v4

    move p3, v5

    move p4, v6

    move-object p6, v8

    goto :goto_0

    .line 171
    .end local v3    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local v4    # "minWidth":F
    .end local v5    # "maxWidth":F
    .end local v6    # "minHeight":F
    .end local v8    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local p2    # "minWidth":F
    .restart local p3    # "maxWidth":F
    .restart local p4    # "minHeight":F
    .restart local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 172
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .locals 11
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 135
    move-object/from16 v0, p7

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)V

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "visibleChildrens":I
    move v2, p3

    .line 138
    .local v2, "currentMaxHeight":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v9, v2

    .end local v2    # "currentMaxHeight":F
    .local v9, "currentMaxHeight":F
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 139
    .local v4, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move v7, p2

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 140
    invoke-virtual {v10, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 141
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-eq v5, v6, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v5

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    sub-float/2addr v9, v5

    .line 147
    .end local v2    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v4    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    move-object/from16 v10, p6

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 151
    :cond_2
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 152
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "COLUMN"

    return-object v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .locals 22
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v8

    .line 187
    .local v8, "selfMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 200
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 202
    return-void

    .line 204
    :cond_0
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingLeft:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingRight:F

    sub-float/2addr v1, v2

    .line 205
    .local v1, "selfWidth":F
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingTop:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingBottom:F

    sub-float/2addr v2, v3

    .line 206
    .local v2, "selfHeight":F
    const/4 v3, 0x0

    .line 207
    .local v3, "childrenWidth":F
    const/4 v4, 0x0

    .line 209
    .local v4, "childrenHeight":F
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasHorizontalScroll()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 211
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getHorizontalScrollDimension()F

    move-result v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingLeft:F

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingRight:F

    sub-float v1, v5, v6

    move v9, v1

    goto :goto_0

    .line 209
    :cond_1
    move v9, v1

    .line 215
    .end local v1    # "selfWidth":F
    .local v9, "selfWidth":F
    :goto_0
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 217
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getVerticalScrollDimension()F

    move-result v1

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingTop:F

    sub-float/2addr v1, v5

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingBottom:F

    sub-float v2, v1, v5

    move v10, v2

    goto :goto_1

    .line 215
    :cond_2
    move v10, v2

    .line 219
    .end local v2    # "selfHeight":F
    .local v10, "selfHeight":F
    :goto_1
    const/4 v1, 0x1

    .line 220
    .local v1, "checkWeights":Z
    :goto_2
    if-eqz v1, :cond_c

    .line 221
    const/4 v11, 0x0

    .line 222
    .end local v1    # "checkWeights":Z
    .local v11, "checkWeights":Z
    const/4 v12, 0x0

    .line 223
    .end local v3    # "childrenWidth":F
    .local v12, "childrenWidth":F
    const/4 v1, 0x0

    .line 224
    .end local v4    # "childrenHeight":F
    .local v1, "childrenHeight":F
    const/4 v2, 0x0

    .line 225
    .local v2, "hasWeights":Z
    const/4 v3, 0x0

    .line 226
    .local v3, "totalWeights":F
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v15, v1

    move v13, v2

    move v14, v3

    .end local v1    # "childrenHeight":F
    .end local v2    # "hasWeights":Z
    .end local v3    # "totalWeights":F
    .local v13, "hasWeights":Z
    .local v14, "totalWeights":F
    .local v15, "childrenHeight":F
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 227
    .local v1, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 228
    .local v2, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v3

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-ne v3, v5, :cond_3

    .line 229
    goto :goto_3

    .line 231
    :cond_3
    instance-of v3, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 232
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    const/4 v3, 0x1

    .line 234
    .end local v13    # "hasWeights":Z
    .local v3, "hasWeights":Z
    move-object v5, v1

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getValue()F

    move-result v5

    add-float/2addr v14, v5

    move v13, v3

    goto :goto_4

    .line 236
    .end local v3    # "hasWeights":Z
    .restart local v13    # "hasWeights":Z
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    add-float/2addr v15, v3

    .line 238
    .end local v1    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v2    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :goto_4
    goto :goto_3

    .line 239
    :cond_5
    if-eqz v13, :cond_a

    .line 240
    sub-float v16, v10, v15

    .line 241
    .local v16, "availableSpace":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 242
    .restart local v1    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v2, :cond_9

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 243
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 244
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 245
    .restart local v2    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-ne v3, v4, :cond_6

    .line 246
    goto :goto_5

    .line 248
    :cond_6
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getValue()F

    move-result v18

    .line 249
    .local v18, "weight":F
    mul-float v3, v18, v16

    div-float/2addr v3, v14

    .line 250
    .local v3, "childHeight":F
    move-object v4, v1

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 251
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    move-result-object v19

    .line 252
    .local v19, "heightInConstraints":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    if-eqz v19, :cond_8

    .line 253
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMin()F

    move-result v4

    .line 254
    .local v4, "min":F
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMax()F

    move-result v5

    .line 255
    .local v5, "max":F
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v20, v4, v6

    if-eqz v20, :cond_7

    .line 256
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 258
    :cond_7
    cmpl-float v6, v5, v6

    if-eqz v6, :cond_8

    .line 259
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 262
    .end local v4    # "min":F
    .end local v5    # "max":F
    :cond_8
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 263
    nop

    .line 265
    move v4, v3

    .end local v3    # "childHeight":F
    .local v4, "childHeight":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    .line 266
    move v5, v4

    .end local v4    # "childHeight":F
    .local v5, "childHeight":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    .line 267
    move v6, v5

    .end local v5    # "childHeight":F
    .local v6, "childHeight":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    .line 268
    move/from16 v20, v6

    .end local v6    # "childHeight":F
    .local v20, "childHeight":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    .line 263
    move/from16 v21, v20

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    .end local v2    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .local v20, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .local v21, "childHeight":F
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 271
    .end local v1    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v18    # "weight":F
    .end local v19    # "heightInConstraints":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    .end local v20    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v21    # "childHeight":F
    :cond_9
    goto/16 :goto_5

    .line 274
    .end local v16    # "availableSpace":F
    :cond_a
    invoke-virtual {v0, v9, v10, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v13, :cond_b

    .line 275
    const/4 v1, 0x1

    .end local v11    # "checkWeights":Z
    .local v1, "checkWeights":Z
    goto :goto_6

    .line 277
    .end local v1    # "checkWeights":Z
    .end local v13    # "hasWeights":Z
    .end local v14    # "totalWeights":F
    .restart local v11    # "checkWeights":Z
    :cond_b
    move v1, v11

    .end local v11    # "checkWeights":Z
    .restart local v1    # "checkWeights":Z
    :goto_6
    move v3, v12

    move v4, v15

    goto/16 :goto_2

    .line 279
    .end local v12    # "childrenWidth":F
    .end local v15    # "childrenHeight":F
    .local v3, "childrenWidth":F
    .local v4, "childrenHeight":F
    :cond_c
    const/4 v2, 0x0

    .line 280
    .end local v4    # "childrenHeight":F
    .local v2, "childrenHeight":F
    const/4 v4, 0x0

    .line 281
    .local v4, "visibleChildrens":I
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 282
    .local v6, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v11

    .line 283
    .local v11, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v12

    sget-object v13, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-ne v12, v13, :cond_d

    .line 284
    goto :goto_7

    .line 286
    :cond_d
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v12

    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 287
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v12

    add-float/2addr v2, v12

    .line 288
    nop

    .end local v6    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v11    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    add-int/lit8 v4, v4, 0x1

    .line 289
    goto :goto_7

    .line 290
    :cond_e
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    add-int/lit8 v6, v4, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 292
    const/4 v5, 0x0

    .line 293
    .local v5, "tx":F
    const/4 v6, 0x0

    .line 295
    .local v6, "ty":F
    const/4 v11, 0x0

    .line 296
    .local v11, "verticalGap":F
    const/4 v12, 0x0

    .line 297
    .local v12, "total":F
    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    move/from16 v18, v1

    const/high16 v17, 0x40000000    # 2.0f

    .end local v1    # "checkWeights":Z
    .local v18, "checkWeights":Z
    goto/16 :goto_b

    .line 329
    .end local v18    # "checkWeights":Z
    .restart local v1    # "checkWeights":Z
    :pswitch_1
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 330
    .local v15, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v16

    .line 331
    .local v16, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    const/high16 v17, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v14

    move/from16 v18, v1

    .end local v1    # "checkWeights":Z
    .restart local v18    # "checkWeights":Z
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-ne v14, v1, :cond_f

    .line 332
    move/from16 v1, v18

    goto :goto_8

    .line 334
    :cond_f
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    add-float/2addr v12, v1

    .line 335
    .end local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    move/from16 v1, v18

    goto :goto_8

    .line 336
    .end local v18    # "checkWeights":Z
    .restart local v1    # "checkWeights":Z
    :cond_10
    move/from16 v18, v1

    const/high16 v17, 0x40000000    # 2.0f

    .end local v1    # "checkWeights":Z
    .restart local v18    # "checkWeights":Z
    sub-float v1, v10, v12

    int-to-float v13, v4

    div-float v11, v1, v13

    .line 337
    div-float v6, v11, v17

    goto/16 :goto_b

    .line 318
    .end local v18    # "checkWeights":Z
    .restart local v1    # "checkWeights":Z
    :pswitch_2
    move/from16 v18, v1

    const/high16 v17, 0x40000000    # 2.0f

    .end local v1    # "checkWeights":Z
    .restart local v18    # "checkWeights":Z
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 319
    .local v13, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v14

    .line 320
    .local v14, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v15

    move-object/from16 v16, v1

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-ne v15, v1, :cond_11

    .line 321
    move-object/from16 v1, v16

    goto :goto_9

    .line 323
    :cond_11
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    add-float/2addr v12, v1

    .line 324
    .end local v13    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v14    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    move-object/from16 v1, v16

    goto :goto_9

    .line 325
    :cond_12
    sub-float v1, v10, v12

    add-int/lit8 v13, v4, 0x1

    int-to-float v13, v13

    div-float v11, v1, v13

    .line 326
    move v6, v11

    .line 327
    goto :goto_b

    .line 308
    .end local v18    # "checkWeights":Z
    .restart local v1    # "checkWeights":Z
    :pswitch_3
    move/from16 v18, v1

    const/high16 v17, 0x40000000    # 2.0f

    .end local v1    # "checkWeights":Z
    .restart local v18    # "checkWeights":Z
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 309
    .restart local v13    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v14

    .line 310
    .restart local v14    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v15

    move-object/from16 v16, v1

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-ne v15, v1, :cond_13

    .line 311
    move-object/from16 v1, v16

    goto :goto_a

    .line 313
    :cond_13
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    add-float/2addr v12, v1

    .line 314
    .end local v13    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v14    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    move-object/from16 v1, v16

    goto :goto_a

    .line 315
    :cond_14
    sub-float v1, v10, v12

    add-int/lit8 v13, v4, -0x1

    int-to-float v13, v13

    div-float v11, v1, v13

    .line 316
    goto :goto_b

    .line 305
    .end local v18    # "checkWeights":Z
    .restart local v1    # "checkWeights":Z
    :pswitch_4
    move/from16 v18, v1

    const/high16 v17, 0x40000000    # 2.0f

    .end local v1    # "checkWeights":Z
    .restart local v18    # "checkWeights":Z
    sub-float v6, v10, v2

    .line 306
    goto :goto_b

    .line 299
    .end local v18    # "checkWeights":Z
    .restart local v1    # "checkWeights":Z
    :pswitch_5
    move/from16 v18, v1

    const/high16 v17, 0x40000000    # 2.0f

    .end local v1    # "checkWeights":Z
    .restart local v18    # "checkWeights":Z
    const/4 v6, 0x0

    .line 300
    goto :goto_b

    .line 302
    .end local v18    # "checkWeights":Z
    .restart local v1    # "checkWeights":Z
    :pswitch_6
    move/from16 v18, v1

    const/high16 v17, 0x40000000    # 2.0f

    .end local v1    # "checkWeights":Z
    .restart local v18    # "checkWeights":Z
    sub-float v1, v10, v2

    div-float v6, v1, v17

    .line 303
    nop

    .line 341
    :goto_b
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 342
    .restart local v13    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v14

    .line 343
    .restart local v14    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget v15, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    packed-switch v15, :pswitch_data_1

    goto :goto_d

    .line 351
    :pswitch_7
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v15

    sub-float v5, v9, v15

    goto :goto_d

    .line 348
    :pswitch_8
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v15

    sub-float v15, v9, v15

    div-float v15, v15, v17

    .line 349
    .end local v5    # "tx":F
    .local v15, "tx":F
    move v5, v15

    goto :goto_d

    .line 345
    .end local v15    # "tx":F
    .restart local v5    # "tx":F
    :pswitch_9
    const/4 v5, 0x0

    .line 346
    nop

    .line 354
    :goto_d
    invoke-virtual {v14, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 355
    invoke-virtual {v14, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 356
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    move-result-object v15

    move-object/from16 v16, v1

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->GONE:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    if-ne v15, v1, :cond_15

    .line 357
    move-object/from16 v1, v16

    goto :goto_c

    .line 359
    :cond_15
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    add-float/2addr v6, v1

    .line 360
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    const/4 v15, 0x6

    if-eq v1, v15, :cond_16

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    const/16 v15, 0x8

    if-eq v1, v15, :cond_16

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    const/4 v15, 0x7

    if-ne v1, v15, :cond_17

    .line 363
    :cond_16
    add-float/2addr v6, v11

    .line 365
    :cond_17
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    add-float/2addr v6, v1

    .line 366
    .end local v13    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v14    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    move-object/from16 v1, v16

    goto :goto_c

    .line 367
    :cond_18
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 368
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist intrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .locals 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 177
    .local v0, "height":F
    const/4 v1, 0x0

    .line 178
    .local v1, "componentHeights":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 179
    .local v3, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->intrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    add-float/2addr v1, v4

    .line 180
    .end local v3    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_0

    .line 181
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public blacklist isInVerticalFill()Z
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInVerticalFill()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->childrenHaveVerticalWeights()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 486
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 487
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verticalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 488
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "horizontalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 489
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "spacedBy"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 490
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVisibility:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 475
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mAnimationId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 482
    return-void
.end method

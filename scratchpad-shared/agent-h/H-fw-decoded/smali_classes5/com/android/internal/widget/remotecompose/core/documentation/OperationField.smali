.class public Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;
.super Ljava/lang/Object;
.source "OperationField.java"


# instance fields
.field final blacklist mDescription:Ljava/lang/String;

.field final blacklist mName:Ljava/lang/String;

.field blacklist mPossibleValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mType:I

.field blacklist mVarSize:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mVarSize:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mPossibleValues:Ljava/util/ArrayList;

    .line 32
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mType:I

    .line 33
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mDescription:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "varSize"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mVarSize:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mPossibleValues:Ljava/util/ArrayList;

    .line 39
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mType:I

    .line 40
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mName:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mDescription:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mVarSize:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist getDescription()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPossibleValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mPossibleValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSize()I
    .locals 3

    .line 94
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mType:I

    const/4 v1, -0x1

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_0

    .line 110
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 106
    :pswitch_1
    return v1

    .line 108
    :pswitch_2
    return v1

    .line 104
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 102
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 96
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 100
    :pswitch_6
    return v2

    .line 98
    :pswitch_7
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist getType()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mType:I

    return v0
.end method

.method public blacklist getVarSize()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mVarSize:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasEnumeratedValues()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mPossibleValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist possibleValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/documentation/OperationField;->mPossibleValues:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/documentation/StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

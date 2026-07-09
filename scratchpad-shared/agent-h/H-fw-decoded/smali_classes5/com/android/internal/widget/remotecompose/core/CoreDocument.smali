.class public Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.super Ljava/lang/Object;
.source "CoreDocument.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;
    }
.end annotation


# static fields
.field static final blacklist BUILD:F = 0.2f

.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DOCUMENT_API_LEVEL:I = 0x4

.field public static final blacklist MAJOR_VERSION:I = 0x0

.field public static final blacklist MINOR_VERSION:I = 0x4

.field public static final blacklist PATCH_VERSION:I


# instance fields
.field blacklist mActionListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppliedTouchOperations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

.field blacklist mClickAreas:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mComponentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mContentAlignment:I

.field blacklist mContentDescription:Ljava/lang/String;

.field blacklist mContentMode:I

.field blacklist mContentScroll:I

.field blacklist mContentSizing:I

.field private blacklist mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFloatExpressions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

.field blacklist mHeight:I

.field blacklist mIdActionListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntegerExpressions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastId:I

.field private blacklist mLastOpCount:I

.field blacklist mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

.field private blacklist mRepaintNext:I

.field blacklist mRequiredCapabilities:J

.field blacklist mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

.field private final blacklist mScaleOutput:[F

.field public blacklist mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

.field blacklist mTouchListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/TouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTranslateOutput:[F

.field blacklist mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

.field blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 74
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 75
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    .line 78
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    .line 84
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    .line 85
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    .line 87
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    .line 88
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    .line 89
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    .line 91
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    .line 93
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    .line 489
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    .line 529
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    .line 530
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    .line 531
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    .line 733
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    .line 1072
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    .line 1073
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    .line 1074
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return-void
.end method

.method private blacklist addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I
    .locals 8
    .param p1, "base"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    .param p3, "tmp"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            ")I"
        }
    .end annotation

    .line 1271
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1272
    .local v0, "count":I
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1273
    .local v2, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1275
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1276
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .local v4, "values":[I
    goto :goto_1

    .line 1278
    .end local v4    # "values":[I
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1279
    .restart local v4    # "values":[I
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    :goto_1
    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 1282
    aget v5, v4, v7

    invoke-direct {p0, v2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v7

    .line 1283
    instance-of v5, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v5, :cond_1

    .line 1284
    move-object v5, v2

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-direct {p0, v5, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1286
    .end local v2    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    .end local v4    # "values":[I
    :cond_1
    goto :goto_0

    .line 1287
    :cond_2
    return v0
.end method

.method private blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "ctl"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1358
    .local p3, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1359
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v2, :cond_0

    .line 1360
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1362
    :cond_0
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_1

    .line 1363
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V

    .line 1365
    :cond_1
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    if-eqz v2, :cond_2

    .line 1366
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    .line 1367
    .local v2, "sd":Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getShaderTextId()I

    move-result v3

    .line 1368
    .local v3, "id":I
    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v4

    .line 1369
    .local v4, "str":Ljava/lang/String;
    invoke-interface {p2, v4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;->isShaderValid(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->enable(Z)V

    .line 1371
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "sd":Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .end local v3    # "id":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1372
    :cond_3
    return-void
.end method

.method private blacklist computeTranslate(FFFF[F)V
    .locals 8
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "contentScaleX"    # F
    .param p4, "contentScaleY"    # F
    .param p5, "translateOutput"    # [F

    .line 282
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    and-int/lit16 v0, v0, 0xf0

    .line 283
    .local v0, "horizontalContentAlignment":I
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    and-int/lit8 v1, v1, 0xf

    .line 284
    .local v1, "verticalContentAlignment":I
    const/4 v2, 0x0

    .line 285
    .local v2, "translateX":F
    const/4 v3, 0x0

    .line 286
    .local v3, "translateY":F
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    .line 287
    .local v4, "contentWidth":F
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, p4

    .line 289
    .local v5, "contentHeight":F
    const/high16 v6, 0x40000000    # 2.0f

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 297
    :sswitch_0
    sub-float v2, p1, v4

    .line 298
    goto :goto_0

    .line 294
    :sswitch_1
    sub-float v7, p1, v4

    div-float v2, v7, v6

    .line 295
    goto :goto_0

    .line 292
    :sswitch_2
    nop

    .line 302
    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 310
    :pswitch_1
    sub-float v3, p2, v5

    .line 311
    goto :goto_1

    .line 307
    :pswitch_2
    sub-float v7, p2, v5

    div-float v3, v7, v6

    .line 308
    goto :goto_1

    .line 305
    :pswitch_3
    nop

    .line 316
    :goto_1
    const/4 v6, 0x0

    aput v2, p5, v6

    .line 317
    const/4 v6, 0x1

    aput v3, p5, v6

    .line 318
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I
    .locals 5
    .param p1, "base"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1206
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1207
    .local v0, "count":I
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1209
    .local v2, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_1

    .line 1210
    const/4 v3, 0x1

    .line 1211
    .local v3, "mult":I
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    if-eqz v4, :cond_0

    .line 1212
    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->estimateIterations()I

    move-result v3

    .line 1214
    :cond_0
    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-direct {p0, v4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 1216
    .end local v2    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v3    # "mult":I
    :cond_1
    goto :goto_0

    .line 1217
    :cond_2
    return v0
.end method

.method public static blacklist getDocumentApiLevel()I
    .locals 1

    .line 107
    const/4 v0, 0x4

    return v0
.end method

.method private blacklist inflateComponents(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 677
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v0, "finalOperationsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    move-object v1, v0

    .line 680
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;>;"
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    .line 683
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 684
    .local v4, "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v5, :cond_2

    .line 685
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 686
    .local v5, "container":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v6, :cond_1

    .line 687
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 691
    .local v6, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 692
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 693
    .local v7, "parentContainer":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    instance-of v8, v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v8, :cond_0

    .line 694
    move-object v8, v7

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 697
    .end local v7    # "parentContainer":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    if-ge v7, v8, :cond_1

    .line 698
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    .line 701
    .end local v6    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-interface {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 703
    .end local v5    # "container":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    goto :goto_2

    :cond_2
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;

    if-eqz v5, :cond_8

    .line 705
    const/4 v5, 0x0

    .line 707
    .restart local v5    # "container":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 708
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 710
    :cond_3
    const/4 v6, 0x0

    .line 711
    .local v6, "parentContainer":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 712
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 714
    :cond_4
    if-eqz v6, :cond_5

    .line 715
    invoke-interface {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    .line 717
    :cond_5
    move-object v1, v0

    .line 719
    :goto_1
    if-eqz v5, :cond_7

    .line 720
    instance-of v7, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v7, :cond_6

    .line 721
    move-object v7, v5

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 722
    .local v7, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->inflate()V

    .line 724
    .end local v7    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_6
    move-object v7, v5

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    .end local v5    # "container":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    .end local v6    # "parentContainer":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    :cond_7
    goto :goto_2

    .line 727
    :cond_8
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    .end local v4    # "o":Lcom/android/internal/widget/remotecompose/core/Operation;
    :goto_2
    goto/16 :goto_0

    .line 730
    :cond_9
    return-object v1
.end method

.method private blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 737
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 738
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_0

    .line 739
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 740
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 742
    :cond_0
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_1

    .line 743
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    .line 745
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 747
    :cond_1
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    if-eqz v2, :cond_3

    .line 748
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    .line 749
    .local v2, "v":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getComponentId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 750
    .local v3, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v3, :cond_2

    .line 751
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->addComponentValue(Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;)V

    goto :goto_1

    .line 753
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=> Component not found for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getComponentId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 756
    .end local v2    # "v":Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;
    .end local v3    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_3
    :goto_1
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    if-eqz v2, :cond_5

    .line 757
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 758
    .local v3, "modifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v4, :cond_4

    .line 759
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v4, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 760
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v4, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 762
    .end local v3    # "modifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
    :cond_4
    goto :goto_2

    .line 764
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 765
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 766
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 767
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto/16 :goto_0

    .line 768
    :cond_6
    return-void
.end method

.method private blacklist sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I
    .locals 2
    .param p1, "com"    # Lcom/android/internal/widget/remotecompose/core/Operation;
    .param p2, "tmp"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 1262
    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    .line 1263
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/Operation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1264
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getSize()I

    move-result v1

    .line 1265
    .local v1, "size":I
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    .line 1266
    return v1
.end method

.method private blacklist toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 7
    .param p1, "base"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    .param p2, "ret"    # Ljava/lang/StringBuilder;
    .param p3, "indent"    # Ljava/lang/String;

    .line 1311
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1312
    .local v1, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 1313
    .local v6, "line":Ljava/lang/String;
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    .end local v6    # "line":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1317
    :cond_0
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_1

    .line 1318
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1320
    .end local v1    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_1
    goto :goto_0

    .line 1321
    :cond_2
    return-void
.end method

.method private blacklist warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V
    .locals 4
    .param p1, "clickArea"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 918
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;

    .line 919
    .local v1, "listener":Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;
    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    iget-object v3, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;->onAction(ILjava/lang/String;)V

    .line 920
    .end local v1    # "listener":Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;
    goto :goto_0

    .line 921
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addActionCallback(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;

    .line 510
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method public blacklist addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "contentDescription"    # Ljava/lang/String;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "metadata"    # Ljava/lang/String;

    .line 842
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .end local p1    # "id":I
    .end local p2    # "contentDescription":Ljava/lang/String;
    .end local p3    # "left":F
    .end local p4    # "top":F
    .end local p5    # "right":F
    .end local p6    # "bottom":F
    .end local p7    # "metadata":Ljava/lang/String;
    .local v1, "id":I
    .local v2, "contentDescription":Ljava/lang/String;
    .local v3, "left":F
    .local v4, "top":F
    .local v5, "right":F
    .local v6, "bottom":F
    .local v7, "metadata":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;-><init>(ILjava/lang/String;FFFFLjava/lang/String;)V

    .line 846
    .local v0, "car":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 847
    .local p1, "old":Z
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 848
    return-void
.end method

.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;

    .line 865
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 866
    return-void
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 856
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 857
    return-void
.end method

.method public blacklist appliedTouchOperation(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method

.method public blacklist canBeDisplayed(IIJ)Z
    .locals 1
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "capabilities"    # J

    .line 801
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "ctl"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 1346
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V

    .line 1347
    return-void
.end method

.method public blacklist clearActionCallbacks()V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 516
    return-void
.end method

.method public blacklist computeScale(FF[F)V
    .locals 7
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "scaleOutput"    # [F

    .line 213
    const/high16 v0, 0x3f800000    # 1.0f

    .line 214
    .local v0, "contentScaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 215
    .local v1, "contentScaleY":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 217
    const/high16 v2, 0x3f800000    # 1.0f

    .line 218
    .local v2, "scaleX":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 219
    .local v3, "scaleY":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 220
    .local v4, "scale":F
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 253
    :pswitch_0
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v5, v5

    div-float v2, p1, v5

    .line 254
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    div-float v3, p2, v5

    .line 255
    move v0, v2

    .line 256
    move v1, v3

    .line 257
    goto :goto_0

    .line 246
    :pswitch_1
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v5, v5

    div-float v2, p1, v5

    .line 247
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    div-float v3, p2, v5

    .line 248
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 249
    move v0, v4

    .line 250
    move v1, v4

    .line 251
    goto :goto_0

    .line 229
    :pswitch_2
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v5, v5

    div-float v2, p1, v5

    .line 230
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    div-float v3, p2, v5

    .line 231
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 232
    move v0, v4

    .line 233
    move v1, v4

    .line 234
    goto :goto_0

    .line 241
    :pswitch_3
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    div-float v4, p2, v5

    .line 242
    move v0, v4

    .line 243
    move v1, v4

    .line 244
    goto :goto_0

    .line 236
    :pswitch_4
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v5, v5

    div-float v4, p1, v5

    .line 237
    move v0, v4

    .line 238
    move v1, v4

    .line 239
    goto :goto_0

    .line 222
    :pswitch_5
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v5, v5

    div-float v2, p1, v5

    .line 223
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    div-float v3, p2, v5

    .line 224
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 225
    move v0, v4

    .line 226
    move v1, v4

    .line 227
    nop

    .line 262
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    .end local v4    # "scale":F
    :cond_0
    :goto_0
    const/4 v2, 0x0

    aput v0, p3, v2

    .line 263
    const/4 v2, 0x1

    aput v1, p3, v2

    .line 264
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist displayHierarchy()Ljava/lang/String;
    .locals 6

    .line 368
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;-><init>()V

    .line 369
    .local v0, "serializer":Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 370
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 371
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-object v5, v2

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3, v5, v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->displayHierarchy(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_1

    .line 372
    :cond_0
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    if-eqz v3, :cond_1

    .line 373
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    invoke-interface {v3, v4, v0}, Lcom/android/internal/widget/remotecompose/core/SerializableToString;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 375
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_1
    :goto_1
    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist evaluateFloatExpression(IILcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2
    .param p1, "expressionId"    # I
    .param p2, "targetId"    # I
    .param p3, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    .line 405
    .local v0, "expression":Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0, p3}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    .line 407
    .local v1, "v":F
    invoke-virtual {p3, p2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->overrideFloat(IF)V

    .line 409
    .end local v1    # "v":F
    :cond_0
    return-void
.end method

.method public blacklist evaluateIntExpression(JILcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2
    .param p1, "expressionId"    # J
    .param p3, "targetId"    # I
    .param p4, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    .line 389
    .local v0, "expression":Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0, p4}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v1

    .line 391
    .local v1, "v":I
    invoke-virtual {p4, p3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->overrideInteger(II)V

    .line 393
    .end local v1    # "v":I
    :cond_0
    return-void
.end method

.method public blacklist getBuffer()Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    return-object v0
.end method

.method public blacklist getClickAreas()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    return-object v0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .locals 1
    .param p1, "id"    # I

    .line 355
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    return-object v0

    .line 358
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContentDescription()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContentMode()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    return v0
.end method

.method public blacklist getContentScroll()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    return v0
.end method

.method public blacklist getContentSizing()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    return v0
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    return v0
.end method

.method public blacklist getIdActionListeners()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;",
            ">;"
        }
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .locals 1

    .line 1034
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .locals 8
    .param p1, "type"    # I

    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1045
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    if-eqz v3, :cond_0

    .line 1046
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    .line 1047
    .local v3, "n":Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;
    iget v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    if-ne v4, p1, :cond_0

    .line 1048
    add-int/lit8 v0, v0, 0x1

    .line 1051
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v3    # "n":Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;
    :cond_0
    goto :goto_0

    .line 1052
    :cond_1
    if-nez v0, :cond_2

    .line 1053
    const/4 v1, 0x0

    return-object v1

    .line 1055
    :cond_2
    new-array v1, v0, [Ljava/lang/String;

    .line 1056
    .local v1, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1057
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1058
    .local v4, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    if-eqz v5, :cond_3

    .line 1059
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    .line 1060
    .local v5, "n":Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;
    iget v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    if-ne v6, p1, :cond_3

    .line 1061
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    iget-object v7, v5, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    aput-object v7, v1, v2

    move v2, v6

    .line 1064
    .end local v4    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v5    # "n":Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_3
    goto :goto_1

    .line 1065
    :cond_4
    return-object v1
.end method

.method public blacklist getNumberOfOps()I
    .locals 4

    .line 1195
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1197
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1198
    .local v2, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_0

    .line 1199
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1201
    .end local v2    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_0
    goto :goto_0

    .line 1202
    :cond_1
    return v0
.end method

.method public blacklist getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getOpsPerFrame()I
    .locals 1

    .line 1083
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastOpCount:I

    return v0
.end method

.method public blacklist getProperty(S)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # S

    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    return-object v0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-object v0
.end method

.method public blacklist getRequiredCapabilities()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    return-wide v0
.end method

.method public blacklist getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object v0
.end method

.method public blacklist getStats()[Ljava/lang/String;
    .locals 11

    .line 1227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>()V

    .line 1229
    .local v1, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1230
    .local v2, "count":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1231
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1232
    .local v5, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1234
    .local v8, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1235
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .local v9, "values":[I
    goto :goto_1

    .line 1237
    .end local v9    # "values":[I
    :cond_0
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 1238
    .restart local v9    # "values":[I
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    :goto_1
    aget v10, v9, v7

    add-int/2addr v10, v6

    aput v10, v9, v7

    .line 1242
    aget v7, v9, v6

    invoke-direct {p0, v5, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v10

    add-int/2addr v7, v10

    aput v7, v9, v6

    .line 1243
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v6, :cond_1

    .line 1244
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 1245
    .local v6, "com":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    invoke-direct {p0, v6, v3, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v7

    add-int/2addr v2, v7

    .end local v6    # "com":Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
    goto :goto_2

    .line 1246
    :cond_1
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    if-eqz v6, :cond_2

    .line 1247
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    .line 1248
    .local v6, "com":Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;
    invoke-direct {p0, v6, v3, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_3

    .line 1246
    .end local v6    # "com":Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;
    :cond_2
    :goto_2
    nop

    .line 1250
    .end local v5    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v8    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    .end local v9    # "values":[I
    :goto_3
    goto :goto_0

    .line 1252
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number of operations : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1254
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1255
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 1256
    .local v8, "v":[I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v8, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v8, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    .end local v5    # "s":Ljava/lang/String;
    .end local v8    # "v":[I
    goto :goto_4

    .line 1258
    :cond_4
    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    return v0
.end method

.method public blacklist haptic(I)V
    .locals 1
    .param p1, "type"    # I

    .line 462
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;->haptic(I)V

    .line 465
    :cond_0
    return-void
.end method

.method public blacklist hasTouchListener()Z
    .locals 4

    .line 929
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 930
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->hasTouchListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 931
    .local v0, "hasComponentsTouchListeners":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public blacklist initFromBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 640
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->inflateFromBuffer(Ljava/util/ArrayList;)V

    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 642
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    if-eqz v2, :cond_0

    .line 644
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    .line 645
    .local v2, "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    invoke-virtual {v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->setVersion(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    .line 647
    .end local v2    # "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    :cond_0
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    if-eqz v2, :cond_1

    .line 648
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    .line 649
    .local v2, "expression":Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    iget v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .end local v2    # "expression":Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;
    :cond_1
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    if-eqz v2, :cond_2

    .line 652
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    .line 653
    .local v2, "expression":Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    iget v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v2    # "expression":Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;
    :cond_2
    goto :goto_0

    .line 656
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->inflateComponents(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 657
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 659
    .restart local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v2, :cond_4

    .line 660
    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 661
    goto :goto_2

    .line 663
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_4
    goto :goto_1

    .line 664
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_6

    .line 665
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->assignIds(I)V

    .line 667
    :cond_6
    return-void
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 775
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->reset()V

    .line 776
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 777
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 778
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setNextId(I)V

    .line 779
    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 780
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 782
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 783
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 785
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    .line 786
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 787
    return-void
.end method

.method public blacklist invalidateMeasure()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->invalidateMeasure()V

    .line 345
    :cond_0
    return-void
.end method

.method public blacklist needsRepaint()I
    .locals 1

    .line 1092
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return v0
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .locals 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 883
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 884
    .local v1, "clickArea":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    .line 887
    .end local v1    # "clickArea":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    :cond_0
    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 891
    :cond_2
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V
    .locals 11
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "theme"    # I

    .line 1102
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->clearLastOpCount()V

    .line 1103
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clearNeedsRepaint()V

    .line 1104
    const/16 v0, 0x1b

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1105
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1108
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setTheme(I)V

    .line 1110
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 1111
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1116
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    .line 1118
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->computeScale(FF[F)V

    .line 1119
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v8, v1, v3

    .line 1120
    .local v8, "sw":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v9, v1, v4

    .line 1121
    .local v9, "sh":F
    iget v6, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget v7, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->computeTranslate(FFFF[F)V

    .line 1122
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    aget v2, v2, v3

    iget-object v6, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    aget v6, v6, v4

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 1123
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->scale(FF)V

    .line 1124
    .end local v8    # "sw":F
    .end local v9    # "sh":F
    goto :goto_0

    .line 1127
    :cond_0
    move-object v5, p0

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setWidth(I)V

    .line 1128
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHeight(I)V

    .line 1130
    :goto_0
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1131
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->updateOps()I

    move-result v1

    iput v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1132
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v1, :cond_5

    .line 1133
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 1134
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 1135
    :cond_1
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->invalidateMeasure()V

    .line 1137
    :cond_2
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->needsMeasure()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1138
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1140
    :cond_3
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->needsBoundsAnimation()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1141
    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1142
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->clearNeedsBoundsAnimation()V

    .line 1143
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1149
    :cond_4
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->doesNeedsRepaint()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1150
    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1153
    :cond_5
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 1155
    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1158
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    const/4 v6, 0x1

    .line 1159
    .local v6, "apply":Z
    if-eq p2, v0, :cond_8

    .line 1160
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getTheme()I

    move-result v7

    .line 1161
    .local v7, "currentTheme":I
    if-eq v7, p2, :cond_7

    if-eq v7, v0, :cond_7

    instance-of v8, v2, Lcom/android/internal/widget/remotecompose/core/operations/Theme;

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    move v8, v3

    goto :goto_3

    :cond_7
    :goto_2
    move v8, v4

    :goto_3
    move v6, v8

    .line 1166
    .end local v7    # "currentTheme":I
    :cond_8
    if-eqz v6, :cond_b

    .line 1167
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v7

    .line 1168
    .local v7, "opIsDirty":Z
    if-nez v7, :cond_9

    instance-of v8, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v8, :cond_b

    .line 1169
    :cond_9
    if-eqz v7, :cond_a

    instance-of v8, v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v8, :cond_a

    .line 1170
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 1171
    move-object v8, v2

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v8, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1173
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 1174
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1154
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    .end local v6    # "apply":Z
    .end local v7    # "opIsDirty":Z
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1178
    .end local v1    # "i":I
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->doesNeedsRepaint()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_e

    iget-object v0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 1179
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->doesNeedsRepaint()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1180
    :cond_d
    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1182
    :cond_e
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1186
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getLastOpCount()I

    move-result v0

    iput v0, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastOpCount:I

    .line 1187
    return-void
.end method

.method public blacklist performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V
    .locals 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "id"    # I

    .line 899
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 900
    .local v1, "clickArea":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    iget v2, v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    if-ne v2, p2, :cond_0

    .line 901
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    .line 902
    return-void

    .line 904
    .end local v1    # "clickArea":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    :cond_0
    goto :goto_0

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;

    .line 907
    .local v1, "listener":Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;
    const-string v2, ""

    invoke-interface {v1, p2, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;->onAction(ILjava/lang/String;)V

    .line 908
    .end local v1    # "listener":Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;
    goto :goto_1

    .line 910
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    .line 911
    .local v0, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v0, :cond_3

    .line 912
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, p0, v1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 914
    :cond_3
    return-void
.end method

.method public blacklist runNamedAction(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 499
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;

    .line 500
    .local v1, "callback":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;
    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;->onAction(Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    .end local v1    # "callback":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;
    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 413
    nop

    .line 414
    const-string/jumbo v0, "type"

    const-string v1, "CoreDocument"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    .line 416
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 417
    const-string v2, "operations"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 418
    return-void
.end method

.method public blacklist setBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 0
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 161
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 162
    return-void
.end method

.method public blacklist setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentDescription:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public blacklist setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V
    .locals 0
    .param p1, "engine"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    .line 453
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    .line 454
    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .line 151
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowHeight(F)V

    .line 153
    return-void
.end method

.method public blacklist setProperties(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 426
    .local p1, "properties":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 427
    return-void
.end method

.method public blacklist setRemoteComposeState(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V
    .locals 0
    .param p1, "remoteComposeState"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 170
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 171
    return-void
.end method

.method public blacklist setRequiredCapabilities(J)V
    .locals 0
    .param p1, "requiredCapabilities"    # J

    .line 124
    iput-wide p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    .line 125
    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .locals 0
    .param p1, "scroll"    # I
    .param p2, "alignment"    # I
    .param p3, "sizing"    # I
    .param p4, "mode"    # I

    .line 198
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    .line 199
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    .line 200
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    .line 201
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    .line 202
    return-void
.end method

.method public blacklist setVersion(III)V
    .locals 1
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "patch"    # I

    .line 812
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    .line 813
    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .line 137
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowWidth(F)V

    .line 139
    return-void
.end method

.method public blacklist toNestedString()Ljava/lang/String;
    .locals 5

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1299
    .local v0, "ret":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1300
    .local v2, "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v3, :cond_0

    .line 1303
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    const-string v4, "  "

    invoke-direct {p0, v3, v0, v4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1305
    .end local v2    # "mOperation":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_0
    goto :goto_0

    .line 1306
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1021
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .end local v2    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_0

    .line 1024
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist touchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .locals 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .line 1007
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1009
    .local v2, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v7, 0x1

    move-object v4, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .local v3, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v5, "x":F
    .local v6, "y":F
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    .line 1010
    .end local v2    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_0

    .line 1011
    .end local v3    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "x":F
    .end local v6    # "y":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    :cond_0
    move-object v4, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .restart local v3    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    iget-object p1, v4, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 1007
    .end local v3    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v5    # "x":F
    .end local v6    # "y":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    :cond_1
    move-object v4, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    .line 1013
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .restart local v3    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :goto_1
    const/4 p1, 0x1

    iput p1, v4, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1014
    return-void
.end method

.method public blacklist touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 968
    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 969
    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 970
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 971
    .local v1, "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 972
    .end local v1    # "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    goto :goto_0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 976
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 977
    return-void
.end method

.method public blacklist touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)Z
    .locals 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 942
    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 943
    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 944
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 945
    .local v1, "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 946
    .end local v1    # "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    goto :goto_0

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 948
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 949
    .local v3, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v8, 0x1

    move-object v5, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .local v4, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v6, "x":F
    .local v7, "y":F
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    .line 950
    .end local v3    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_1

    .line 951
    .end local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v6    # "x":F
    .end local v7    # "y":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    :cond_1
    move-object v5, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .restart local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    iget-object p1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 952
    return v1

    .line 947
    .end local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v6    # "x":F
    .end local v7    # "y":F
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    :cond_2
    move-object v5, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    .line 955
    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .restart local v4    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_3
    iget-object p1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 956
    return v1

    .line 958
    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .locals 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .line 986
    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 987
    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 988
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 989
    .local v5, "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    move-object v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move-object v3, v5

    move v5, p2

    .end local v5    # "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    .local v3, "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 990
    .end local v3    # "clickArea":Lcom/android/internal/widget/remotecompose/core/TouchListener;
    goto :goto_0

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 993
    .local v0, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v7, 0x1

    move-object v2, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V

    .line 994
    .end local v0    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_1

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 997
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 998
    return-void
.end method

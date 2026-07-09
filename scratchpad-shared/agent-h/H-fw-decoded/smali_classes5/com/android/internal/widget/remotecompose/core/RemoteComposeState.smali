.class public Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
.super Ljava/lang/Object;
.source "RemoteComposeState.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;


# static fields
.field private static final blacklist MAX_COLORS:I = 0xc8

.field private static final blacklist MAX_DATA:I = 0x3e8

.field public static final blacklist START_ID:I = 0x2a


# instance fields
.field blacklist mAllVarListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

.field private final blacklist mColorOverride:[Z

.field private final blacklist mDataIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataOverride:[Z

.field private final blacklist mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

.field private final blacklist mFloatOverride:[Z

.field private blacklist mIdMaps:[I

.field private final blacklist mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

.field private final blacklist mIntegerOverride:[Z

.field private blacklist mNextId:I

.field private final blacklist mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "[F>;"
        }
    .end annotation
.end field

.field private final blacklist mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

.field blacklist mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/VariableSupport;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 43
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    .line 45
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    .line 46
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    .line 47
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    .line 48
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 49
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 52
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 53
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 55
    const/16 v0, 0xc8

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    .line 56
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 58
    const/16 v0, 0x3e8

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    .line 59
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    .line 60
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    .line 62
    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    .line 63
    const v1, 0x10002a

    const v2, 0x20002a

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIdMaps:[I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 440
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mAllVarListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist add(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "variableSupport"    # Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 445
    .local v0, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/VariableSupport;>;"
    if-nez v0, :cond_0

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 447
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mAllVarListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method private blacklist updateListeners(I)V
    .locals 3
    .param p1, "id"    # I

    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 330
    .local v0, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/VariableSupport;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    if-eqz v1, :cond_0

    .line 331
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 332
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 333
    .local v2, "c":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->markDirty()V

    .line 331
    .end local v2    # "c":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "collection"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    .line 517
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-void
.end method

.method public blacklist cacheData(Ljava/lang/Object;)I
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 103
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    return v0
.end method

.method public blacklist cacheData(Ljava/lang/Object;I)I
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .line 113
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId(I)I

    move-result v0

    .line 114
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    return v0
.end method

.method public blacklist cacheData(ILjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public blacklist cacheFloat(F)I
    .locals 3
    .param p1, "item"    # F

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 200
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 201
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int v2, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 202
    return v0
.end method

.method public blacklist cacheFloat(IF)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # F

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 208
    return-void
.end method

.method public blacklist cacheInteger(I)I
    .locals 3
    .param p1, "item"    # I

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 246
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 247
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float v2, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 248
    return v0
.end method

.method public blacklist clearColorOverride()V
    .locals 3

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist clearDataOverride(I)V
    .locals 2
    .param p1, "id"    # I

    .line 363
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 364
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 365
    return-void
.end method

.method public blacklist clearFloatOverride(I)V
    .locals 2
    .param p1, "id"    # I

    .line 383
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 384
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 385
    return-void
.end method

.method public blacklist clearIntegerOverride(I)V
    .locals 2
    .param p1, "id"    # I

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 374
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 375
    return-void
.end method

.method public blacklist containsId(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist dataGetId(Ljava/lang/Object;)I
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 91
    .local v0, "res":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 92
    const/4 v1, -0x1

    return v1

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public blacklist getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
    .locals 1
    .param p1, "id"    # I

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    return-object v0
.end method

.method public blacklist getFloat(I)F
    .locals 1
    .param p1, "id"    # I

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result v0

    return v0
.end method

.method public blacklist getFloatValue(II)F
    .locals 2
    .param p1, "id"    # I
    .param p2, "index"    # I

    .line 522
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloatValue(I)F

    move-result v0

    return v0
.end method

.method public blacklist getFloats(I)[F
    .locals 2
    .param p1, "id"    # I

    .line 527
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloats()[F

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFromId(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I

    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getId(II)I
    .locals 2
    .param p1, "id"    # I
    .param p2, "index"    # I

    .line 532
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getId(I)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(I)I
    .locals 1
    .param p1, "id"    # I

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getListLength(I)I
    .locals 2
    .param p1, "id"    # I

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mCollectionMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const v1, 0xfffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getLength()I

    move-result v0

    return v0
.end method

.method public blacklist getObject(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I

    .line 587
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpsToUpdate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .locals 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    return v1

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 484
    const/16 v0, 0x3e8

    return v0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 487
    const v0, 0xea60

    return v0

    .line 489
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getPath(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPathData(I)[F
    .locals 1
    .param p1, "id"    # I

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public blacklist hasListener(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mVarListeners:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist listenToVar(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "variableSupport"    # Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->add(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 461
    return-void
.end method

.method public blacklist markWritten(I)V
    .locals 2
    .param p1, "id"    # I

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 401
    return-void
.end method

.method public blacklist nextId()I
    .locals 2

    .line 415
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    return v0
.end method

.method public blacklist nextId(I)I
    .locals 3
    .param p1, "type"    # I

    .line 425
    if-nez p1, :cond_0

    .line 426
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    return v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIdMaps:[I

    aget v1, v0, p1

    add-int/lit8 v2, v1, 0x1

    aput v2, v0, p1

    return v1
.end method

.method public blacklist overrideColor(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "color"    # I

    .line 345
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 346
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 347
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 348
    return-void
.end method

.method public blacklist overrideData(ILjava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "previous":Ljava/lang/Object;
    if-eq v0, p2, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 193
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public blacklist overrideFloat(IF)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result v0

    .line 230
    .local v0, "previous":F
    cmpl-float v1, v0, p2

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 232
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 233
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 234
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 236
    :cond_0
    return-void
.end method

.method public blacklist overrideInteger(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    .line 276
    .local v0, "previous":I
    if-eq v0, p2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 278
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 279
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 280
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 282
    :cond_0
    return-void
.end method

.method public blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "map"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataMapMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public blacklist putPath(ILjava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public blacklist putPathData(I[F)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "data"    # [F

    .line 166
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathData:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mPathMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->remove(I)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public blacklist reset()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->clear()V

    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 407
    return-void
.end method

.method public blacklist setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 566
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 567
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->clearLastOpCount()V

    .line 568
    return-void
.end method

.method public blacklist setNextId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 437
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mNextId:I

    .line 438
    return-void
.end method

.method public blacklist setWindowHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .line 507
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    .line 508
    return-void
.end method

.method public blacklist setWindowWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .line 498
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    .line 499
    return-void
.end method

.method public blacklist updateColor(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "color"    # I

    .line 321
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorOverride:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 322
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mColorMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 325
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 326
    return-void
.end method

.method public blacklist updateData(ILjava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "previous":Ljava/lang/Object;
    if-eq v0, p2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mDataIntMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 136
    .end local v0    # "previous":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public blacklist updateFloat(IF)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->get(I)F

    move-result v0

    .line 214
    .local v0, "previous":F
    cmpl-float v1, v0, p2

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 216
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    float-to-int v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 217
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 220
    .end local v0    # "previous":F
    :cond_0
    return-void
.end method

.method public blacklist updateInteger(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerOverride:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->get(I)I

    move-result v0

    .line 260
    .local v0, "previous":I
    if-eq v0, p2, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mFloatMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;

    int-to-float v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 262
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntegerMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 263
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateListeners(I)V

    .line 266
    .end local v0    # "previous":I
    :cond_0
    return-void
.end method

.method public blacklist updateObject(ILjava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 577
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mObjectMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 578
    return-void
.end method

.method public blacklist wasNotWritten(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->mIntWrittenMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

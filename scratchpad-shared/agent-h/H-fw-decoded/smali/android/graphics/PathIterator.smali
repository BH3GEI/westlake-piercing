.class public Landroid/graphics/PathIterator;
.super Ljava/lang/Object;
.source "PathIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PathIterator$Segment;,
        Landroid/graphics/PathIterator$Verb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/graphics/PathIterator$Segment;",
        ">;"
    }
.end annotation


# static fields
.field private static final IS_DALVIK:Z

.field private static final POINT_ARRAY_SIZE:I = 0x8

.field public static final VERB_CLOSE:I = 0x5

.field public static final VERB_CONIC:I = 0x3

.field public static final VERB_CUBIC:I = 0x4

.field public static final VERB_DONE:I = 0x6

.field public static final VERB_LINE:I = 0x1

.field public static final VERB_MOVE:I = 0x0

.field public static final VERB_QUAD:I = 0x2

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mCachedVerb:I

.field private mDone:Z

.field private final mNativeIterator:J

.field private final mPath:Landroid/graphics/Path;

.field private final mPathGenerationId:I

.field private final mPointsAddress:J

.field private final mPointsArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    nop

    .line 48
    const-string/jumbo v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/graphics/PathIterator;->IS_DALVIK:Z

    .line 50
    nop

    .line 52
    const-class v0, Landroid/graphics/PathIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/PathIterator;->nGetFinalizer()J

    move-result-wide v1

    .line 51
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/PathIterator;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/graphics/Path;)V
    .locals 3
    .param p1, "path"    # Landroid/graphics/Path;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    .line 82
    iput-object p1, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    .line 83
    iget-object v0, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    iget-wide v0, v0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/PathIterator;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    .line 84
    iget-object v0, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->getGenerationId()I

    move-result v0

    iput v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    .line 85
    sget-boolean v0, Landroid/graphics/PathIterator;->IS_DALVIK:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 87
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    .line 88
    iget-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    .line 89
    .end local v0    # "runtime":Ldalvik/system/VMRuntime;
    goto :goto_0

    .line 90
    :cond_0
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    .line 93
    :goto_0
    sget-object v0, Landroid/graphics/PathIterator;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 94
    return-void
.end method

.method private getReturnVerb(I)I
    .locals 1
    .param p1, "cachedVerb"    # I

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 231
    invoke-direct {p0}, Landroid/graphics/PathIterator;->nextInternal()I

    move-result v0

    return v0

    .line 229
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 228
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 227
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 226
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 225
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 224
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 223
    :pswitch_6
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static native nCreate(J)J
.end method

.method private static native nGetFinalizer()J
.end method

.method private static native nNext(JJ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nNextHost(J[F)I
.end method

.method private static native nPeek(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private nextInternal()I
    .locals 6

    .line 180
    iget-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 181
    return v1

    .line 183
    :cond_0
    iget v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    iget-object v2, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->getGenerationId()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 187
    sget-boolean v0, Landroid/graphics/PathIterator;->IS_DALVIK:Z

    if-eqz v0, :cond_1

    .line 188
    iget-wide v2, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    iget-wide v4, p0, Landroid/graphics/PathIterator;->mPointsAddress:J

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/PathIterator;->nNext(JJ)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    iget-object v0, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    invoke-static {v2, v3, v0}, Landroid/graphics/PathIterator;->nNextHost(J[F)I

    move-result v0

    .line 189
    .local v0, "verb":I
    :goto_0
    if-ne v0, v1, :cond_2

    .line 190
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/PathIterator;->mDone:Z

    .line 192
    :cond_2
    return v0

    .line 184
    .end local v0    # "verb":I
    :cond_3
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Iterator cannot be used on modified Path"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 143
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 144
    invoke-direct {p0}, Landroid/graphics/PathIterator;->nextInternal()I

    move-result v0

    iput v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 146
    :cond_0
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next([FI)I
    .locals 4
    .param p1, "points"    # [F
    .param p2, "offset"    # I

    .line 121
    array-length v0, p1

    add-int/lit8 v1, p2, 0x8

    if-lt v0, v1, :cond_0

    .line 125
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    invoke-direct {p0, v0}, Landroid/graphics/PathIterator;->getReturnVerb(I)I

    move-result v0

    .line 126
    .local v0, "returnVerb":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 127
    iget-object v1, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    return v0

    .line 122
    .end local v0    # "returnVerb":I
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "points array must be able to hold at least 8 entries"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Landroid/graphics/PathIterator$Segment;
    .locals 6

    .line 210
    iget v0, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    invoke-direct {p0, v0}, Landroid/graphics/PathIterator;->getReturnVerb(I)I

    move-result v0

    .line 211
    .local v0, "returnVerb":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/PathIterator;->mCachedVerb:I

    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "conicWeight":F
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 214
    iget-object v2, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v3, 0x6

    aget v1, v2, v3

    .line 216
    :cond_0
    const/16 v2, 0x8

    new-array v3, v2, [F

    .line 217
    .local v3, "returnPoints":[F
    iget-object v4, p0, Landroid/graphics/PathIterator;->mPointsArray:[F

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    new-instance v2, Landroid/graphics/PathIterator$Segment;

    invoke-direct {v2, v0, v3, v1}, Landroid/graphics/PathIterator$Segment;-><init>(I[FF)V

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Landroid/graphics/PathIterator;->next()Landroid/graphics/PathIterator$Segment;

    move-result-object v0

    return-object v0
.end method

.method public peek()I
    .locals 2

    .line 160
    iget v0, p0, Landroid/graphics/PathIterator;->mPathGenerationId:I

    iget-object v1, p0, Landroid/graphics/PathIterator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->getGenerationId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 164
    iget-boolean v0, p0, Landroid/graphics/PathIterator;->mDone:Z

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x6

    return v0

    .line 167
    :cond_0
    iget-wide v0, p0, Landroid/graphics/PathIterator;->mNativeIterator:J

    invoke-static {v0, v1}, Landroid/graphics/PathIterator;->nPeek(J)I

    move-result v0

    return v0

    .line 161
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Iterator cannot be used on modified Path"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Landroid/content/res/FontScaleConverterFactory;
.super Ljava/lang/Object;
.source "FontScaleConverterFactory.java"


# static fields
.field private static final LOOKUP_TABLES_WRITE_LOCK:Ljava/lang/Object;

.field private static final SCALE_KEY_MULTIPLIER:F = 100.0f

.field public static volatile sLookupTables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/FontScaleConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static sMinScaleBeforeCurvesApplied:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/FontScaleConverterFactory;->LOOKUP_TABLES_WRITE_LOCK:Ljava/lang/Object;

    .line 55
    const v0, 0x3f866666    # 1.05f

    sput v0, Landroid/content/res/FontScaleConverterFactory;->sMinScaleBeforeCurvesApplied:F

    .line 60
    sget-object v1, Landroid/content/res/FontScaleConverterFactory;->LOOKUP_TABLES_WRITE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v2, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    new-instance v3, Landroid/content/res/FontScaleConverterImpl;

    const/16 v4, 0x9

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    new-array v6, v4, [F

    fill-array-data v6, :array_1

    invoke-direct {v3, v5, v6}, Landroid/content/res/FontScaleConverterImpl;-><init>([F[F)V

    invoke-static {v2, v0, v3}, Landroid/content/res/FontScaleConverterFactory;->putInto(Landroid/util/SparseArray;FLandroid/content/res/FontScaleConverter;)V

    .line 71
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    new-instance v2, Landroid/content/res/FontScaleConverterImpl;

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    new-array v5, v4, [F

    fill-array-data v5, :array_3

    invoke-direct {v2, v3, v5}, Landroid/content/res/FontScaleConverterImpl;-><init>([F[F)V

    const v3, 0x3f8ccccd    # 1.1f

    invoke-static {v0, v3, v2}, Landroid/content/res/FontScaleConverterFactory;->putInto(Landroid/util/SparseArray;FLandroid/content/res/FontScaleConverter;)V

    .line 81
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    new-instance v2, Landroid/content/res/FontScaleConverterImpl;

    new-array v3, v4, [F

    fill-array-data v3, :array_4

    new-array v5, v4, [F

    fill-array-data v5, :array_5

    invoke-direct {v2, v3, v5}, Landroid/content/res/FontScaleConverterImpl;-><init>([F[F)V

    const v3, 0x3f933333    # 1.15f

    invoke-static {v0, v3, v2}, Landroid/content/res/FontScaleConverterFactory;->putInto(Landroid/util/SparseArray;FLandroid/content/res/FontScaleConverter;)V

    .line 91
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    new-instance v2, Landroid/content/res/FontScaleConverterImpl;

    new-array v3, v4, [F

    fill-array-data v3, :array_6

    new-array v5, v4, [F

    fill-array-data v5, :array_7

    invoke-direct {v2, v3, v5}, Landroid/content/res/FontScaleConverterImpl;-><init>([F[F)V

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v0, v3, v2}, Landroid/content/res/FontScaleConverterFactory;->putInto(Landroid/util/SparseArray;FLandroid/content/res/FontScaleConverter;)V

    .line 101
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    new-instance v2, Landroid/content/res/FontScaleConverterImpl;

    new-array v3, v4, [F

    fill-array-data v3, :array_8

    new-array v5, v4, [F

    fill-array-data v5, :array_9

    invoke-direct {v2, v3, v5}, Landroid/content/res/FontScaleConverterImpl;-><init>([F[F)V

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v0, v3, v2}, Landroid/content/res/FontScaleConverterFactory;->putInto(Landroid/util/SparseArray;FLandroid/content/res/FontScaleConverter;)V

    .line 111
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    new-instance v2, Landroid/content/res/FontScaleConverterImpl;

    new-array v3, v4, [F

    fill-array-data v3, :array_a

    new-array v5, v4, [F

    fill-array-data v5, :array_b

    invoke-direct {v2, v3, v5}, Landroid/content/res/FontScaleConverterImpl;-><init>([F[F)V

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v0, v3, v2}, Landroid/content/res/FontScaleConverterFactory;->putInto(Landroid/util/SparseArray;FLandroid/content/res/FontScaleConverter;)V

    .line 121
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    new-instance v2, Landroid/content/res/FontScaleConverterImpl;

    new-array v3, v4, [F

    fill-array-data v3, :array_c

    new-array v5, v4, [F

    fill-array-data v5, :array_d

    invoke-direct {v2, v3, v5}, Landroid/content/res/FontScaleConverterImpl;-><init>([F[F)V

    const v3, 0x3fe66666    # 1.8f

    invoke-static {v0, v3, v2}, Landroid/content/res/FontScaleConverterFactory;->putInto(Landroid/util/SparseArray;FLandroid/content/res/FontScaleConverter;)V

    .line 131
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    new-instance v2, Landroid/content/res/FontScaleConverterImpl;

    new-array v3, v4, [F

    fill-array-data v3, :array_e

    new-array v4, v4, [F

    fill-array-data v4, :array_f

    invoke-direct {v2, v3, v4}, Landroid/content/res/FontScaleConverterImpl;-><init>([F[F)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3, v2}, Landroid/content/res/FontScaleConverterFactory;->putInto(Landroid/util/SparseArray;FLandroid/content/res/FontScaleConverter;)V

    .line 140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/FontScaleConverterFactory;->getScaleFromKey(I)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    sub-float/2addr v0, v1

    sput v0, Landroid/content/res/FontScaleConverterFactory;->sMinScaleBeforeCurvesApplied:F

    .line 143
    sget v0, Landroid/content/res/FontScaleConverterFactory;->sMinScaleBeforeCurvesApplied:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    .line 148
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You should only apply non-linear scaling to font scales > 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_1
    .array-data 4
        0x41066666    # 8.4f
        0x41280000    # 10.5f
        0x4149999a    # 12.6f
        0x416ccccd    # 14.8f
        0x4194cccd    # 18.6f
        0x41a4cccd    # 20.6f
        0x41c33333    # 24.4f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_2
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_3
    .array-data 4
        0x410ccccd    # 8.8f
        0x41300000    # 11.0f
        0x41533333    # 13.2f
        0x4179999a    # 15.6f
        0x4199999a    # 19.2f
        0x41a9999a    # 21.2f
        0x41c66666    # 24.8f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_4
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_5
    .array-data 4
        0x41133333    # 9.2f
        0x41380000    # 11.5f
        0x415ccccd    # 13.8f
        0x41833333    # 16.4f
        0x419e6666    # 19.8f
        0x41ae6666    # 21.8f
        0x41c9999a    # 25.2f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_6
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_7
    .array-data 4
        0x4119999a    # 9.6f
        0x41400000    # 12.0f
        0x41666666    # 14.4f
        0x4189999a    # 17.2f
        0x41a33333    # 20.4f
        0x41b33333    # 22.4f
        0x41cccccd    # 25.6f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_8
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_9
    .array-data 4
        0x41266666    # 10.4f
        0x41500000    # 13.0f
        0x4179999a    # 15.6f
        0x41966666    # 18.8f
        0x41accccd    # 21.6f
        0x41bccccd    # 23.6f
        0x41d33333    # 26.4f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_a
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_b
    .array-data 4
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x41900000    # 18.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_c
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_d
    .array-data 4
        0x41666666    # 14.4f
        0x41900000    # 18.0f
        0x41accccd    # 21.6f
        0x41c33333    # 24.4f
        0x41dccccd    # 27.6f
        0x41f66666    # 30.8f
        0x42033333    # 32.8f
        0x420b3333    # 34.8f
        0x42c80000    # 100.0f
    .end array-data

    :array_e
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_f
    .array-data 4
        0x41800000    # 16.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41f00000    # 30.0f
        0x42080000    # 34.0f
        0x42100000    # 36.0f
        0x42180000    # 38.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInterpolatedTableBetween(Landroid/content/res/FontScaleConverter;Landroid/content/res/FontScaleConverter;F)Landroid/content/res/FontScaleConverter;
    .locals 7
    .param p0, "start"    # Landroid/content/res/FontScaleConverter;
    .param p1, "end"    # Landroid/content/res/FontScaleConverter;
    .param p2, "interpolationPoint"    # F

    .line 239
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 240
    .local v0, "commonSpSizes":[F
    array-length v1, v0

    new-array v1, v1, [F

    .line 242
    .local v1, "dpInterpolated":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 243
    aget v3, v0, v2

    .line 244
    .local v3, "sp":F
    invoke-interface {p0, v3}, Landroid/content/res/FontScaleConverter;->convertSpToDp(F)F

    move-result v4

    .line 245
    .local v4, "startDp":F
    invoke-interface {p1, v3}, Landroid/content/res/FontScaleConverter;->convertSpToDp(F)F

    move-result v5

    .line 246
    .local v5, "endDp":F
    invoke-static {v4, v5, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v6

    aput v6, v1, v2

    .line 242
    .end local v3    # "sp":F
    .end local v4    # "startDp":F
    .end local v5    # "endDp":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/content/res/FontScaleConverterImpl;

    invoke-direct {v2, v0, v1}, Landroid/content/res/FontScaleConverterImpl;-><init>([F[F)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public static forScale(F)Landroid/content/res/FontScaleConverter;
    .locals 9
    .param p0, "fontScale"    # F

    .line 174
    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->isNonLinearFontScalingActive(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_0
    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->get(F)Landroid/content/res/FontScaleConverter;

    move-result-object v0

    .line 179
    .local v0, "lookupTable":Landroid/content/res/FontScaleConverter;
    if-eqz v0, :cond_1

    .line 180
    return-object v0

    .line 184
    :cond_1
    sget-object v1, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->getKey(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 185
    .local v1, "index":I
    if-ltz v1, :cond_2

    .line 187
    sget-object v2, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/FontScaleConverter;

    return-object v2

    .line 190
    :cond_2
    add-int/lit8 v2, v1, 0x1

    neg-int v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 191
    .local v2, "lowerIndex":I
    add-int/lit8 v4, v2, 0x1

    .line 192
    .local v4, "higherIndex":I
    const/high16 v5, 0x3f800000    # 1.0f

    if-ltz v2, :cond_5

    sget-object v6, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    goto :goto_0

    .line 209
    :cond_3
    sget-object v3, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/FontScaleConverterFactory;->getScaleFromKey(I)F

    move-result v3

    .line 210
    .local v3, "startScale":F
    sget-object v6, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/FontScaleConverterFactory;->getScaleFromKey(I)F

    move-result v6

    .line 211
    .local v6, "endScale":F
    const/4 v7, 0x0

    invoke-static {v7, v5, v3, v6, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v5

    .line 218
    .local v5, "interpolationPoint":F
    sget-object v7, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    .line 219
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/FontScaleConverter;

    sget-object v8, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    .line 220
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/FontScaleConverter;

    .line 218
    invoke-static {v7, v8, v5}, Landroid/content/res/FontScaleConverterFactory;->createInterpolatedTableBetween(Landroid/content/res/FontScaleConverter;Landroid/content/res/FontScaleConverter;F)Landroid/content/res/FontScaleConverter;

    move-result-object v7

    .line 224
    .local v7, "converter":Landroid/content/res/FontScaleConverter;
    invoke-static {}, Landroid/content/res/Flags;->fontScaleConverterPublic()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 226
    invoke-static {p0, v7}, Landroid/content/res/FontScaleConverterFactory;->put(FLandroid/content/res/FontScaleConverter;)V

    .line 229
    :cond_4
    return-object v7

    .line 197
    .end local v3    # "startScale":F
    .end local v5    # "interpolationPoint":F
    .end local v6    # "endScale":F
    .end local v7    # "converter":Landroid/content/res/FontScaleConverter;
    :cond_5
    :goto_0
    new-instance v6, Landroid/content/res/FontScaleConverterImpl;

    new-array v7, v3, [F

    const/4 v8, 0x0

    aput v5, v7, v8

    new-array v3, v3, [F

    aput p0, v3, v8

    invoke-direct {v6, v7, v3}, Landroid/content/res/FontScaleConverterImpl;-><init>([F[F)V

    .line 202
    .local v6, "converter":Landroid/content/res/FontScaleConverterImpl;
    invoke-static {}, Landroid/content/res/Flags;->fontScaleConverterPublic()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 204
    invoke-static {p0, v6}, Landroid/content/res/FontScaleConverterFactory;->put(FLandroid/content/res/FontScaleConverter;)V

    .line 207
    :cond_6
    return-object v6
.end method

.method private static get(F)Landroid/content/res/FontScaleConverter;
    .locals 2
    .param p0, "scaleKey"    # F

    .line 279
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->getKey(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/FontScaleConverter;

    return-object v0
.end method

.method private static getKey(F)I
    .locals 1
    .param p0, "fontScale"    # F

    .line 253
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static getScaleFromKey(I)F
    .locals 2
    .param p0, "key"    # I

    .line 257
    int-to-float v0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static isNonLinearFontScalingActive(F)Z
    .locals 1
    .param p0, "fontScale"    # F

    .line 161
    sget v0, Landroid/content/res/FontScaleConverterFactory;->sMinScaleBeforeCurvesApplied:F

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static put(FLandroid/content/res/FontScaleConverter;)V
    .locals 2
    .param p0, "scaleKey"    # F
    .param p1, "fontScaleConverter"    # Landroid/content/res/FontScaleConverter;

    .line 262
    sget-object v0, Landroid/content/res/FontScaleConverterFactory;->LOOKUP_TABLES_WRITE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    sget-object v1, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 264
    .local v1, "newTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/FontScaleConverter;>;"
    invoke-static {v1, p0, p1}, Landroid/content/res/FontScaleConverterFactory;->putInto(Landroid/util/SparseArray;FLandroid/content/res/FontScaleConverter;)V

    .line 265
    sput-object v1, Landroid/content/res/FontScaleConverterFactory;->sLookupTables:Landroid/util/SparseArray;

    .line 266
    .end local v1    # "newTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/FontScaleConverter;>;"
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static putInto(Landroid/util/SparseArray;FLandroid/content/res/FontScaleConverter;)V
    .locals 1
    .param p1, "scaleKey"    # F
    .param p2, "fontScaleConverter"    # Landroid/content/res/FontScaleConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/content/res/FontScaleConverter;",
            ">;F",
            "Landroid/content/res/FontScaleConverter;",
            ")V"
        }
    .end annotation

    .line 274
    .local p0, "table":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/FontScaleConverter;>;"
    invoke-static {p1}, Landroid/content/res/FontScaleConverterFactory;->getKey(F)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    return-void
.end method

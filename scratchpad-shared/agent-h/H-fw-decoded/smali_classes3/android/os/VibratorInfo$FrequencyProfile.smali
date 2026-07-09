.class public final Landroid/os/VibratorInfo$FrequencyProfile;
.super Ljava/lang/Object;
.source "VibratorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrequencyProfile"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo$FrequencyProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrequenciesHz:[F

.field private final blacklist mMaxFrequencyHz:F

.field private final blacklist mMaxOutputAccelerationGs:F

.field private final blacklist mMinFrequencyHz:F

.field private final blacklist mOutputAccelerationsGs:[F

.field private final blacklist mResonantFrequencyHz:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfile;)F
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 908
    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfile$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$FrequencyProfile$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo$FrequencyProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(F[F[F)V
    .locals 11
    .param p1, "resonantFrequencyHz"    # F
    .param p2, "frequenciesHz"    # [F
    .param p3, "outputAccelerationsGs"    # [F

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    .line 695
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 701
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 702
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    .line 703
    iput-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    .line 704
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    .line 705
    iput v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    .line 706
    iput v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    .line 707
    return-void

    .line 710
    :cond_1
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 712
    .local v3, "frequencyToOutputAccelerationMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Float;Ljava/lang/Float;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 713
    aget v5, p2, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aget v6, p3, v4

    .line 714
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 713
    invoke-virtual {v3, v5, v6}, Ljava/util/TreeMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 717
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v4

    new-array v4, v4, [F

    .line 718
    .local v4, "frequencies":[F
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v5

    new-array v5, v5, [F

    .line 719
    .local v5, "accelerations":[F
    const/4 v6, 0x0

    .line 720
    .local v6, "maxOutputAccelerationGs":F
    const/4 v7, 0x0

    .line 721
    .local v7, "i":I
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 722
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Ljava/lang/Float;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v4, v7

    .line 723
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v5, v7

    .line 724
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 725
    nop

    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Ljava/lang/Float;>;"
    add-int/lit8 v7, v7, 0x1

    .line 726
    goto :goto_2

    .line 728
    :cond_3
    iput-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    .line 729
    iput-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    .line 730
    iget-object v8, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    aget v1, v8, v1

    iput v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    .line 731
    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    iget-object v8, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    array-length v8, v8

    sub-int/2addr v8, v2

    aget v1, v1, v8

    iput v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    .line 732
    iput v6, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    .line 733
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    .line 680
    return-void
.end method

.method private static blacklist deduplicateAndSortList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 922
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 926
    :cond_0
    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/VibratorInfo$FrequencyProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 929
    const/4 v0, 0x1

    .line 930
    .local v0, "writeIndex":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 931
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 932
    .local v2, "currentPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 934
    .local v3, "previousPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v4, v5}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 935
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "writeIndex":I
    .local v4, "writeIndex":I
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v4

    .line 930
    .end local v2    # "currentPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    .end local v3    # "previousPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    .end local v4    # "writeIndex":I
    .restart local v0    # "writeIndex":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 938
    .end local v1    # "i":I
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 939
    return-void

    .line 923
    .end local v0    # "writeIndex":I
    :cond_3
    :goto_1
    return-void
.end method

.method private static blacklist extractFrequencyToOutputAccelerationData([F[F)Ljava/util/ArrayList;
    .locals 5
    .param p0, "frequencies"    # [F
    .param p1, "outputAccelerations"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 944
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p0

    if-eqz v0, :cond_2

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 950
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 952
    .local v0, "frequencyToOutputAccelerationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 953
    new-instance v2, Landroid/util/Pair;

    aget v3, p0, v1

    .line 954
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 953
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 947
    .end local v0    # "frequencyToOutputAccelerationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$deduplicateAndSortList$0(Landroid/util/Pair;)Ljava/lang/Float;
    .locals 1
    .param p0, "pair"    # Landroid/util/Pair;

    .line 926
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 878
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 879
    return v0

    .line 881
    :cond_0
    instance-of v1, p1, Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/os/VibratorInfo$FrequencyProfile;

    .line 884
    .local v1, "that":Landroid/os/VibratorInfo$FrequencyProfile;
    iget v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    iget v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    iget-object v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    .line 885
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    iget-object v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    .line 886
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 884
    :goto_0
    return v0

    .line 882
    .end local v1    # "that":Landroid/os/VibratorInfo$FrequencyProfile;
    :cond_2
    return v2
.end method

.method public blacklist getFrequenciesHz()[F
    .locals 1

    .line 745
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    return-object v0
.end method

.method public blacklist getFrequencyRangeHz(F)Landroid/util/Range;
    .locals 9
    .param p1, "minOutputAcceleration"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto/16 :goto_5

    .line 816
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 817
    new-instance v0, Landroid/util/Range;

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 820
    :cond_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 821
    .local v0, "minFrequency":F
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 822
    .local v2, "maxFrequency":F
    const/4 v3, 0x0

    .line 824
    .local v3, "lowerFrequencyBoundIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 825
    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v5, v5, v4

    cmpl-float v5, v5, p1

    if-ltz v5, :cond_3

    .line 826
    if-nez v4, :cond_2

    .line 827
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    goto :goto_1

    .line 829
    :cond_2
    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    add-int/lit8 v6, v4, -0x1

    aget v5, v5, v6

    iget-object v6, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    aget v6, v6, v4

    iget-object v7, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    add-int/lit8 v8, v4, -0x1

    aget v7, v7, v8

    iget-object v8, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v8, v8, v4

    invoke-static {v5, v6, v7, v8, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    .line 834
    :goto_1
    move v3, v4

    .line 835
    goto :goto_2

    .line 824
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 839
    .end local v4    # "i":I
    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 841
    return-object v1

    .line 845
    :cond_5
    move v1, v3

    .local v1, "i":I
    :goto_3
    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    array-length v4, v4

    if-ge v1, v4, :cond_7

    .line 846
    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v4, v4, v1

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_6

    .line 847
    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    aget v5, v5, v1

    iget-object v6, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    iget-object v7, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v7, v7, v1

    invoke-static {v4, v5, v6, v7, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v2

    .line 851
    goto :goto_4

    .line 845
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 855
    .end local v1    # "i":I
    :cond_7
    :goto_4
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 858
    iget v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    .line 861
    :cond_8
    new-instance v1, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v1

    .line 813
    .end local v0    # "minFrequency":F
    .end local v2    # "maxFrequency":F
    .end local v3    # "lowerFrequencyBoundIndex":I
    :cond_9
    :goto_5
    return-object v1
.end method

.method public blacklist getMaxFrequencyHz()F
    .locals 1

    .line 799
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    return v0
.end method

.method public blacklist getMaxOutputAccelerationGs()F
    .locals 1

    .line 756
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    return v0
.end method

.method public blacklist getMinFrequencyHz()F
    .locals 1

    .line 794
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    return v0
.end method

.method public blacklist getOutputAccelerationGs(F)F
    .locals 6
    .param p1, "frequencyHz"    # F

    .line 767
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    if-nez v0, :cond_0

    .line 768
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 771
    :cond_0
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 776
    :cond_1
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    .line 777
    .local v0, "idx":I
    if-ltz v0, :cond_2

    .line 778
    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v1, v1, v0

    return v1

    .line 783
    :cond_2
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 786
    .end local v0    # "idx":I
    .local v1, "idx":I
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v0, v0, v1

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    aget v3, v3, v1

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    invoke-static {v0, v2, v3, v4, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    return v0

    .line 773
    .end local v1    # "idx":I
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOutputAccelerationsGs()[F
    .locals 1

    .line 751
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 891
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    .line 892
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 891
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 737
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrequencyProfile{mResonantFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequenciesHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    .line 899
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputAccelerationsGs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    .line 900
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxOutputAccelerationGs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 866
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 867
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 868
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 869
    return-void
.end method

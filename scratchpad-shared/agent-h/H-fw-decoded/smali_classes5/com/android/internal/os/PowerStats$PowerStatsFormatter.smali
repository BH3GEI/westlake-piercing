.class public Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
.super Ljava/lang/Object;
.source "PowerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerStatsFormatter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;
    }
.end annotation


# static fields
.field private static final blacklist NANO_TO_MILLI_MULTIPLIER:D = 1.0E-6

.field private static final blacklist SECTION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 636
    nop

    .line 637
    const-string v0, "([^:]+):(\\d+)(\\[(?<L>\\d+)])?(?<F>\\S*)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->SECTION_PATTERN:Ljava/util/regex/Pattern;

    .line 636
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->parseFormat(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->mSections:Ljava/util/List;

    .line 642
    return-void
.end method

.method private blacklist format(Ljava/util/List;[J)Ljava/lang/String;
    .locals 10
    .param p2, "stats"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;",
            ">;[J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 698
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;>;"
    if-nez p1, :cond_0

    .line 699
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 702
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_b

    .line 704
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;

    .line 705
    .local v3, "section":Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;
    iget v4, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    if-nez v4, :cond_1

    .line 706
    goto/16 :goto_5

    .line 709
    :cond_1
    iget-boolean v4, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->optional:Z

    if-eqz v4, :cond_4

    .line 710
    const/4 v4, 0x0

    .line 711
    .local v4, "nonZero":Z
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_1
    iget v6, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    if-ge v5, v6, :cond_3

    .line 712
    iget v6, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->position:I

    add-int/2addr v6, v5

    aget-wide v6, p2, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 713
    const/4 v4, 0x1

    .line 714
    goto :goto_2

    .line 711
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 717
    .end local v5    # "offset":I
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 718
    goto :goto_5

    .line 722
    .end local v4    # "nonZero":Z
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 723
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 725
    :cond_5
    iget-object v4, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->label:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    iget v4, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    .line 727
    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 729
    :cond_6
    const/4 v4, 0x0

    .local v4, "offset":I
    :goto_3
    iget v6, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    if-ge v4, v6, :cond_9

    .line 730
    if-eqz v4, :cond_7

    .line 731
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_7
    iget-boolean v6, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->typePower:Z

    if-eqz v6, :cond_8

    .line 734
    iget v6, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->position:I

    add-int/2addr v6, v4

    aget-wide v6, p2, v6

    long-to-double v6, v6

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 737
    :cond_8
    iget v6, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->position:I

    add-int/2addr v6, v4

    aget-wide v6, p2, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 729
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 740
    .end local v4    # "offset":I
    :cond_9
    iget v4, v3, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    if-eq v4, v5, :cond_a

    .line 741
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 703
    .end local v3    # "section":Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;
    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 744
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseFormat(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;",
            ">;"
        }
    .end annotation

    .line 653
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isBlank()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 657
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v1, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;>;"
    sget-object v2, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->SECTION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 659
    .local v2, "matcher":Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 660
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v5, "PowerStats"

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-eq v4, v3, :cond_1

    goto/16 :goto_4

    .line 664
    :cond_1
    new-instance v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;

    invoke-direct {v4, v0}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;-><init>(Lcom/android/internal/os/PowerStats-IA;)V

    .line 665
    .local v4, "section":Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->label:Ljava/lang/String;

    .line 666
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->position:I

    .line 667
    const-string v7, "L"

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 668
    .local v7, "length":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 669
    invoke-static {v7}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    goto :goto_1

    .line 671
    :cond_2
    iput v6, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->length:I

    .line 673
    :goto_1
    const-string v8, "F"

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 674
    .local v8, "flags":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 675
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 676
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 677
    .local v10, "flag":C
    sparse-switch v10, :sswitch_data_0

    .line 685
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported format option \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 682
    :sswitch_0
    iput-boolean v6, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->typePower:Z

    .line 683
    goto :goto_3

    .line 679
    :sswitch_1
    iput-boolean v6, v4, Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;->optional:Z

    .line 680
    nop

    .line 675
    .end local v10    # "flag":C
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 691
    .end local v9    # "i":I
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .end local v4    # "section":Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;
    .end local v7    # "length":Ljava/lang/String;
    .end local v8    # "flags":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto/16 :goto_0

    .line 661
    :cond_4
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad power stats format \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-object v0

    .line 694
    .end local v3    # "position":I
    :cond_5
    return-object v1

    .line 654
    .end local v1    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/PowerStats$PowerStatsFormatter$Section;>;"
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_6
    :goto_5
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3f -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist format([J)Ljava/lang/String;
    .locals 1
    .param p1, "stats"    # [J

    .line 649
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->mSections:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format(Ljava/util/List;[J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

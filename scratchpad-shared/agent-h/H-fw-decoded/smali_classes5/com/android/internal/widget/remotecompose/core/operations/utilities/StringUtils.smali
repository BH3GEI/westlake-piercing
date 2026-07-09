.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist floatToString(FIICC)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # F
    .param p1, "beforeDecimalPoint"    # I
    .param p2, "afterDecimalPoint"    # I
    .param p3, "pre"    # C
    .param p4, "post"    # C

    .line 39
    float-to-int v0, p0

    .line 40
    .local v0, "integerPart":I
    const/high16 v1, 0x3f800000    # 1.0f

    rem-float v1, p0, v1

    .line 43
    .local v1, "fractionalPart":F
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "integerPartString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 45
    .local v3, "iLen":I
    if-ge v3, p1, :cond_0

    .line 46
    sub-int v4, p1, v3

    .line 47
    .local v4, "spacesToPad":I
    if-eqz p3, :cond_1

    .line 48
    new-array v5, v4, [C

    .line 49
    .local v5, "pad":[C
    invoke-static {v5, p3}, Ljava/util/Arrays;->fill([CC)V

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 53
    .end local v4    # "spacesToPad":I
    .end local v5    # "pad":[C
    :cond_0
    if-le v3, p1, :cond_1

    .line 54
    sub-int v4, v3, p1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    nop

    .line 56
    :goto_1
    if-nez p2, :cond_2

    .line 57
    return-object v2

    .line 61
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, p2, :cond_3

    .line 62
    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v1, v5

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 65
    .end local v4    # "i":I
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v1, v4

    .line 67
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, p2, :cond_4

    .line 68
    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v5

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 71
    .end local v4    # "i":I
    :cond_4
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "fact":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, p2, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 74
    .local v5, "trim":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_4
    if-ltz v6, :cond_6

    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-eq v7, v8, :cond_5

    .line 76
    goto :goto_5

    .line 78
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 74
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 80
    .end local v6    # "i":I
    :cond_6
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 81
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 83
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 84
    .local v6, "len":I
    if-eqz p4, :cond_8

    if-ge v6, p2, :cond_8

    .line 85
    sub-int v7, p2, v6

    new-array v7, v7, [C

    .line 86
    .local v7, "c":[C
    invoke-static {v7, p4}, Ljava/util/Arrays;->fill([CC)V

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    .end local v7    # "c":[C
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

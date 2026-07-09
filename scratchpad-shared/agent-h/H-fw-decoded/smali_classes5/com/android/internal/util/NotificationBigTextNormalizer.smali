.class public Lcom/android/internal/util/NotificationBigTextNormalizer;
.super Ljava/lang/Object;
.source "NotificationBigTextNormalizer.java"


# static fields
.field private static final blacklist HORIZONTAL_WHITESPACES:Ljava/util/regex/Pattern;

.field private static final blacklist MULTIPLE_NEWLINES:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    const-string v0, "\\v(\\s*\\v)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->MULTIPLE_NEWLINES:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "\\h+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->HORIZONTAL_WHITESPACES:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isSpace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 121
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist normalizeBigText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 45
    :try_start_0
    const-string v0, "NotifBigTextNormalizer#normalizeBigText"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->MULTIPLE_NEWLINES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 47
    sget-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->HORIZONTAL_WHITESPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 48
    invoke-static {p0}, Lcom/android/internal/util/NotificationBigTextNormalizer;->normalizeLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local p0    # "text":Ljava/lang/String;
    .local v0, "text":Ljava/lang/String;
    nop

    .line 51
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 49
    return-object v0

    .line 51
    .end local v0    # "text":Ljava/lang/String;
    .restart local p0    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 52
    throw v0
.end method

.method private static blacklist normalizeLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .line 73
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "lines":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v2, "textSB":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_b

    .line 76
    aget-object v4, v1, v3

    .line 77
    .local v4, "line":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    .local v5, "lineSB":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 79
    .local v6, "spaceSeen":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 80
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 83
    .local v8, "character":C
    const/16 v9, 0x200b

    if-lt v8, v9, :cond_0

    const/16 v9, 0x200d

    if-le v8, v9, :cond_7

    :cond_0
    const v9, 0xfeff

    if-eq v8, v9, :cond_7

    const/16 v9, 0x34f

    if-ne v8, v9, :cond_1

    .line 85
    goto :goto_2

    .line 88
    :cond_1
    const/16 v9, 0x2060

    if-lt v8, v9, :cond_2

    const/16 v9, 0x2065

    if-le v8, v9, :cond_7

    :cond_2
    const/16 v9, 0x206a

    if-lt v8, v9, :cond_3

    const/16 v9, 0x206f

    if-le v8, v9, :cond_7

    :cond_3
    const v9, 0xfff9

    if-lt v8, v9, :cond_4

    const v9, 0xfffb

    if-gt v8, v9, :cond_4

    .line 91
    goto :goto_2

    .line 94
    :cond_4
    invoke-static {v8}, Lcom/android/internal/util/NotificationBigTextNormalizer;->isSpace(C)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 96
    if-nez v6, :cond_5

    .line 97
    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    .line 101
    :cond_6
    const/4 v6, 0x0

    .line 102
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .end local v8    # "character":C
    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 106
    .end local v7    # "j":I
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "currentLine":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_9
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "lineSB":Ljava/lang/StringBuilder;
    .end local v6    # "spaceSeen":Z
    .end local v7    # "currentLine":Ljava/lang/String;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v3    # "i":I
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

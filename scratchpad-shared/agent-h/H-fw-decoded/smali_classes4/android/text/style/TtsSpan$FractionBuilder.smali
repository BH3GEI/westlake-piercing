.class public Landroid/text/style/TtsSpan$FractionBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FractionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$FractionBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 926
    const-string v0, "android.type.fraction"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 927
    return-void
.end method

.method public constructor whitelist <init>(JJJ)V
    .locals 0
    .param p1, "integerPart"    # J
    .param p3, "numerator"    # J
    .param p5, "denominator"    # J

    .line 937
    invoke-direct {p0}, Landroid/text/style/TtsSpan$FractionBuilder;-><init>()V

    .line 938
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$FractionBuilder;->setIntegerPart(J)Landroid/text/style/TtsSpan$FractionBuilder;

    .line 939
    invoke-virtual {p0, p3, p4}, Landroid/text/style/TtsSpan$FractionBuilder;->setNumerator(J)Landroid/text/style/TtsSpan$FractionBuilder;

    .line 940
    invoke-virtual {p0, p5, p6}, Landroid/text/style/TtsSpan$FractionBuilder;->setDenominator(J)Landroid/text/style/TtsSpan$FractionBuilder;

    .line 941
    return-void
.end method


# virtual methods
.method public whitelist setDenominator(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "denominator"    # J

    .line 990
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$FractionBuilder;->setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "denominator"    # Ljava/lang/String;

    .line 1000
    const-string v0, "android.arg.denominator"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$FractionBuilder;

    return-object v0
.end method

.method public whitelist setIntegerPart(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "integerPart"    # J

    .line 950
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$FractionBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "integerPart"    # Ljava/lang/String;

    .line 960
    const-string v0, "android.arg.integer_part"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$FractionBuilder;

    return-object v0
.end method

.method public whitelist setNumerator(J)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "numerator"    # J

    .line 970
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$FractionBuilder;->setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$FractionBuilder;
    .locals 1
    .param p1, "numerator"    # Ljava/lang/String;

    .line 980
    const-string v0, "android.arg.numerator"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$FractionBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$FractionBuilder;

    return-object v0
.end method

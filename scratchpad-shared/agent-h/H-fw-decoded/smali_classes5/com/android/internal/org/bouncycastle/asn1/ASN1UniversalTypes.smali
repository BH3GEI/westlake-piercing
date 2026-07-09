.class final Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalTypes;
.super Ljava/lang/Object;
.source "ASN1UniversalTypes.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method static blacklist get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;
    .locals 1
    .param p0, "tagNumber"    # I

    .line 12
    packed-switch p0, :pswitch_data_0

    .line 69
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 63
    :pswitch_1
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 61
    :pswitch_2
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 59
    :pswitch_3
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 57
    :pswitch_4
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1VisibleString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 55
    :pswitch_5
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 53
    :pswitch_6
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 51
    :pswitch_7
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 49
    :pswitch_8
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 47
    :pswitch_9
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1VideotexString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 45
    :pswitch_a
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 43
    :pswitch_b
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 41
    :pswitch_c
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 39
    :pswitch_d
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 37
    :pswitch_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 35
    :pswitch_f
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 33
    :pswitch_10
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 31
    :pswitch_11
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 29
    :pswitch_12
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 27
    :pswitch_13
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 25
    :pswitch_14
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 23
    :pswitch_15
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 21
    :pswitch_16
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 19
    :pswitch_17
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 17
    :pswitch_18
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    .line 15
    :pswitch_19
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

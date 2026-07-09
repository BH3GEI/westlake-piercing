.class public interface abstract Landroid/hardware/radio/network/SecurityAlgorithm$$;
.super Ljava/lang/Object;
.source "SecurityAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/SecurityAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 103
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 105
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 107
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 108
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 110
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/network/SecurityAlgorithm$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "_aidl_i":I
    :cond_1
    goto :goto_2

    .line 113
    :cond_2
    const-class v3, [I

    if-ne v0, v3, :cond_4

    .line 114
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 115
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/network/SecurityAlgorithm$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 114
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 118
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 113
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    .end local v1    # "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "_aidl_sj":Ljava/util/StringJoiner;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "_aidl_v"    # I

    .line 57
    if-nez p0, :cond_0

    const-string v0, "A50"

    return-object v0

    .line 58
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "A51"

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "A52"

    return-object v0

    .line 60
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "A53"

    return-object v0

    .line 61
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "A54"

    return-object v0

    .line 62
    :cond_4
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5

    const-string v0, "GEA0"

    return-object v0

    .line 63
    :cond_5
    const/16 v0, 0xf

    if-ne p0, v0, :cond_6

    const-string v0, "GEA1"

    return-object v0

    .line 64
    :cond_6
    const/16 v0, 0x10

    if-ne p0, v0, :cond_7

    const-string v0, "GEA2"

    return-object v0

    .line 65
    :cond_7
    const/16 v0, 0x11

    if-ne p0, v0, :cond_8

    const-string v0, "GEA3"

    return-object v0

    .line 66
    :cond_8
    const/16 v0, 0x12

    if-ne p0, v0, :cond_9

    const-string v0, "GEA4"

    return-object v0

    .line 67
    :cond_9
    const/16 v0, 0x13

    if-ne p0, v0, :cond_a

    const-string v0, "GEA5"

    return-object v0

    .line 68
    :cond_a
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_b

    const-string v0, "UEA0"

    return-object v0

    .line 69
    :cond_b
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_c

    const-string v0, "UEA1"

    return-object v0

    .line 70
    :cond_c
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_d

    const-string v0, "UEA2"

    return-object v0

    .line 71
    :cond_d
    const/16 v0, 0x29

    if-ne p0, v0, :cond_e

    const-string v0, "EEA0"

    return-object v0

    .line 72
    :cond_e
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_f

    const-string v0, "EEA1"

    return-object v0

    .line 73
    :cond_f
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_10

    const-string v0, "EEA2"

    return-object v0

    .line 74
    :cond_10
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_11

    const-string v0, "EEA3"

    return-object v0

    .line 75
    :cond_11
    const/16 v0, 0x37

    if-ne p0, v0, :cond_12

    const-string v0, "NEA0"

    return-object v0

    .line 76
    :cond_12
    const/16 v0, 0x38

    if-ne p0, v0, :cond_13

    const-string v0, "NEA1"

    return-object v0

    .line 77
    :cond_13
    const/16 v0, 0x39

    if-ne p0, v0, :cond_14

    const-string v0, "NEA2"

    return-object v0

    .line 78
    :cond_14
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_15

    const-string v0, "NEA3"

    return-object v0

    .line 79
    :cond_15
    const/16 v0, 0x42

    if-ne p0, v0, :cond_16

    const-string v0, "SIP_NO_IPSEC_CONFIG"

    return-object v0

    .line 80
    :cond_16
    const/16 v0, 0x43

    if-ne p0, v0, :cond_17

    const-string v0, "IMS_NULL"

    return-object v0

    .line 81
    :cond_17
    const/16 v0, 0x44

    if-ne p0, v0, :cond_18

    const-string v0, "SIP_NULL"

    return-object v0

    .line 82
    :cond_18
    const/16 v0, 0x45

    if-ne p0, v0, :cond_19

    const-string v0, "AES_GCM"

    return-object v0

    .line 83
    :cond_19
    const/16 v0, 0x46

    if-ne p0, v0, :cond_1a

    const-string v0, "AES_GMAC"

    return-object v0

    .line 84
    :cond_1a
    const/16 v0, 0x47

    if-ne p0, v0, :cond_1b

    const-string v0, "AES_CBC"

    return-object v0

    .line 85
    :cond_1b
    const/16 v0, 0x48

    if-ne p0, v0, :cond_1c

    const-string v0, "DES_EDE3_CBC"

    return-object v0

    .line 86
    :cond_1c
    const/16 v0, 0x49

    if-ne p0, v0, :cond_1d

    const-string v0, "AES_EDE3_CBC"

    return-object v0

    .line 87
    :cond_1d
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_1e

    const-string v0, "HMAC_SHA1_96"

    return-object v0

    .line 88
    :cond_1e
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_1f

    const-string v0, "HMAC_MD5_96"

    return-object v0

    .line 89
    :cond_1f
    const/16 v0, 0x55

    if-ne p0, v0, :cond_20

    const-string v0, "RTP"

    return-object v0

    .line 90
    :cond_20
    const/16 v0, 0x56

    if-ne p0, v0, :cond_21

    const-string v0, "SRTP_NULL"

    return-object v0

    .line 91
    :cond_21
    const/16 v0, 0x57

    if-ne p0, v0, :cond_22

    const-string v0, "SRTP_AES_COUNTER"

    return-object v0

    .line 92
    :cond_22
    const/16 v0, 0x58

    if-ne p0, v0, :cond_23

    const-string v0, "SRTP_AES_F8"

    return-object v0

    .line 93
    :cond_23
    const/16 v0, 0x59

    if-ne p0, v0, :cond_24

    const-string v0, "SRTP_HMAC_SHA1"

    return-object v0

    .line 94
    :cond_24
    const/16 v0, 0x63

    if-ne p0, v0, :cond_25

    const-string v0, "ENCR_AES_GCM_16"

    return-object v0

    .line 95
    :cond_25
    const/16 v0, 0x64

    if-ne p0, v0, :cond_26

    const-string v0, "ENCR_AES_CBC"

    return-object v0

    .line 96
    :cond_26
    const/16 v0, 0x65

    if-ne p0, v0, :cond_27

    const-string v0, "AUTH_HMAC_SHA2_256_128"

    return-object v0

    .line 97
    :cond_27
    const/16 v0, 0x71

    if-ne p0, v0, :cond_28

    const-string v0, "UNKNOWN"

    return-object v0

    .line 98
    :cond_28
    const/16 v0, 0x72

    if-ne p0, v0, :cond_29

    const-string v0, "OTHER"

    return-object v0

    .line 99
    :cond_29
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_2a

    const-string v0, "ORYX"

    return-object v0

    .line 100
    :cond_2a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

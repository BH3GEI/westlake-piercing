.class Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final blacklist ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field public static final blacklist AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final blacklist BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final blacklist CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final blacklist CRL_NUMBER:Ljava/lang/String;

.field protected static final blacklist CRL_SIGN:I = 0x6

.field public static final blacklist DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final blacklist FRESHEST_CRL:Ljava/lang/String;

.field public static final blacklist INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final blacklist ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final blacklist KEY_CERT_SIGN:I = 0x5

.field public static final blacklist KEY_USAGE:Ljava/lang/String;

.field public static final blacklist NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist POLICY_MAPPINGS:Ljava/lang/String;

.field public static final blacklist SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final blacklist crlReasons:[Ljava/lang/String;

.field private static final blacklist revChkClass:Ljava/lang/Class;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 68
    const-class v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->revChkClass:Ljava/lang/Class;

    .line 389
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 391
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 393
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 395
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 397
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 399
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 401
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 403
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 405
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 407
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 409
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 411
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 413
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 415
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 2235
    const-string/jumbo v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    const-string/jumbo v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string/jumbo v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string/jumbo v8, "unknown"

    const-string/jumbo v9, "removeFromCRL"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkCRL(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 23
    .param p0, "params"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p2, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p3, "currentDate"    # Ljava/util/Date;
    .param p4, "validityDate"    # Ljava/util/Date;
    .param p5, "cert"    # Ljava/security/cert/X509Certificate;
    .param p6, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p8, "certStatus"    # Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .param p9, "reasonMask"    # Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .param p10, "certPathCerts"    # Ljava/util/List;
    .param p11, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;,
            Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1678
    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p4

    move-object/from16 v3, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    if-nez p3, :cond_0

    .line 1680
    nop

    .line 1682
    :cond_0
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-gtz v0, :cond_c

    .line 1695
    move-object/from16 v12, p0

    invoke-static {v12, v1, v3, v6, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v13

    .line 1696
    .local v13, "crls":Ljava/util/Set;
    const/4 v0, 0x0

    .line 1697
    .local v0, "validCrlFound":Z
    const/4 v2, 0x0

    .line 1698
    .local v2, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v0

    move-object/from16 v16, v2

    .line 1700
    .end local v0    # "validCrlFound":Z
    .end local v2    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v14, "crl_iter":Ljava/util/Iterator;
    .local v15, "validCrlFound":Z
    .local v16, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_a

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1704
    :try_start_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 1707
    .local v0, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v4

    .line 1715
    .local v4, "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual {v4, v11}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v5
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v5, :cond_1

    .line 1717
    goto :goto_0

    .line 1721
    :cond_1
    move-object/from16 v5, p7

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move v12, v2

    move-object v2, v0

    move-object v0, v4

    move-object/from16 v4, p6

    .end local v4    # "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .local v0, "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .local v2, "crl":Ljava/security/cert/X509CRL;
    :try_start_1
    invoke-static/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v17
    :try_end_1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v4, v17

    .line 1724
    .local v4, "keys":Ljava/util/Set;
    :try_start_2
    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v5

    .line 1726
    .local v5, "key":Ljava/security/PublicKey;
    const/4 v7, 0x0

    .line 1728
    .local v7, "deltaCRL":Ljava/security/cert/X509CRL;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1731
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v12
    :try_end_2
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v18, v4

    move-object/from16 v4, p11

    .end local v4    # "keys":Ljava/util/Set;
    .local v18, "keys":Ljava/util/Set;
    :try_start_3
    invoke-static {v9, v2, v8, v12, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v8

    .line 1734
    .local v8, "deltaCRLs":Ljava/util/Set;
    invoke-static {v8, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v12

    move-object v7, v12

    goto :goto_1

    .line 1728
    .end local v8    # "deltaCRLs":Ljava/util/Set;
    .end local v18    # "keys":Ljava/util/Set;
    .restart local v4    # "keys":Ljava/util/Set;
    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v4, p11

    .line 1750
    .end local v4    # "keys":Ljava/util/Set;
    .restart local v18    # "keys":Ljava/util/Set;
    :goto_1
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_4

    .line 1757
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    cmp-long v8, v19, v21

    if-ltz v8, :cond_3

    goto :goto_2

    .line 1759
    :cond_3
    new-instance v8, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "No valid CRL for current time found."

    invoke-direct {v8, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v13    # "crls":Ljava/util/Set;
    .end local v14    # "crl_iter":Ljava/util/Iterator;
    .end local v15    # "validCrlFound":Z
    .end local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p3    # "currentDate":Ljava/util/Date;
    .end local p4    # "validityDate":Ljava/util/Date;
    .end local p5    # "cert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local p10    # "certPathCerts":Ljava/util/List;
    .end local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v8

    .line 1763
    .restart local v13    # "crls":Ljava/util/Set;
    .restart local v14    # "crl_iter":Ljava/util/Iterator;
    .restart local v15    # "validCrlFound":Z
    .restart local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p3    # "currentDate":Ljava/util/Date;
    .restart local p4    # "validityDate":Ljava/util/Date;
    .restart local p5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local p10    # "certPathCerts":Ljava/util/List;
    .restart local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_4
    :goto_2
    invoke-static {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1766
    invoke-static {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1769
    invoke-static {v7, v2, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1772
    invoke-static {v9, v7, v3, v10, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1775
    invoke-static {v9, v2, v3, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;)V

    .line 1778
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v8

    const/16 v12, 0x8

    if-ne v8, v12, :cond_5

    .line 1780
    const/16 v12, 0xb

    invoke-virtual {v10, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1784
    :cond_5
    invoke-virtual {v11, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)V

    .line 1786
    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    .line 1787
    .local v8, "criticalExtensions":Ljava/util/Set;
    if-eqz v8, :cond_7

    .line 1789
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v8, v12

    .line 1790
    sget-object v12, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1791
    sget-object v12, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1793
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v17, v0

    goto :goto_3

    .line 1795
    :cond_6
    new-instance v12, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v17, v0

    .end local v0    # "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .local v17, "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    const-string v0, "CRL contains unsupported critical extensions."

    invoke-direct {v12, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v13    # "crls":Ljava/util/Set;
    .end local v14    # "crl_iter":Ljava/util/Iterator;
    .end local v15    # "validCrlFound":Z
    .end local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p3    # "currentDate":Ljava/util/Date;
    .end local p4    # "validityDate":Ljava/util/Date;
    .end local p5    # "cert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local p10    # "certPathCerts":Ljava/util/List;
    .end local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v12

    .line 1787
    .end local v17    # "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v0    # "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v13    # "crls":Ljava/util/Set;
    .restart local v14    # "crl_iter":Ljava/util/Iterator;
    .restart local v15    # "validCrlFound":Z
    .restart local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p3    # "currentDate":Ljava/util/Date;
    .restart local p4    # "validityDate":Ljava/util/Date;
    .restart local p5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local p10    # "certPathCerts":Ljava/util/List;
    .restart local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_7
    move-object/from16 v17, v0

    .line 1799
    .end local v0    # "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v17    # "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    :goto_3
    if-eqz v7, :cond_9

    .line 1801
    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    move-object v8, v0

    .line 1802
    if-eqz v8, :cond_9

    .line 1804
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    .line 1805
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1806
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1807
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 1809
    :cond_8
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Delta CRL contains unsupported critical extension."

    invoke-direct {v0, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v13    # "crls":Ljava/util/Set;
    .end local v14    # "crl_iter":Ljava/util/Iterator;
    .end local v15    # "validCrlFound":Z
    .end local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p3    # "currentDate":Ljava/util/Date;
    .end local p4    # "validityDate":Ljava/util/Date;
    .end local p5    # "cert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local p10    # "certPathCerts":Ljava/util/List;
    .end local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v0
    :try_end_3
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1814
    .restart local v13    # "crls":Ljava/util/Set;
    .restart local v14    # "crl_iter":Ljava/util/Iterator;
    .restart local v15    # "validCrlFound":Z
    .restart local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p3    # "currentDate":Ljava/util/Date;
    .restart local p4    # "validityDate":Ljava/util/Date;
    .restart local p5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local p10    # "certPathCerts":Ljava/util/List;
    .restart local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_9
    :goto_4
    const/4 v15, 0x1

    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    .end local v5    # "key":Ljava/security/PublicKey;
    .end local v7    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v8    # "criticalExtensions":Ljava/util/Set;
    .end local v17    # "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v18    # "keys":Ljava/util/Set;
    goto :goto_6

    .line 1816
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v4, v8

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v4, p11

    .line 1818
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_5
    move-object/from16 v16, v0

    .line 1819
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_6
    move-object/from16 v12, p0

    goto/16 :goto_0

    .line 1700
    :cond_a
    move-object/from16 v4, p11

    .line 1821
    if-eqz v15, :cond_b

    .line 1825
    return-void

    .line 1823
    :cond_b
    throw v16

    .line 1684
    .end local v13    # "crls":Ljava/util/Set;
    .end local v14    # "crl_iter":Ljava/util/Iterator;
    .end local v15    # "validCrlFound":Z
    .end local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_c
    move-object/from16 v4, p11

    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Validation time is in future."

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist checkCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 22
    .param p0, "params"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "validityDate"    # Ljava/util/Date;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .param p5, "sign"    # Ljava/security/cert/X509Certificate;
    .param p6, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p7, "certPathCerts"    # Ljava/util/List;
    .param p8, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;,
            Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1860
    const/4 v1, 0x0

    .line 1861
    .local v1, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v2, 0x0

    .line 1864
    .local v2, "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v8, p4

    invoke-static {v8, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v2, v0

    .line 1870
    nop

    .line 1872
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v15, p1

    invoke-direct {v0, v15}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    move-object v3, v0

    .line 1875
    .local v3, "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    nop

    .line 1876
    :try_start_1
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v0

    .line 1875
    move-object/from16 v7, p3

    move-object/from16 v14, p8

    invoke-static {v2, v0, v7, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/List;

    move-result-object v0

    .line 1877
    .local v0, "extras":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v5, :cond_0

    .line 1879
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_2
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1882
    .end local v0    # "extras":Ljava/util/List;
    .end local v4    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v1

    goto/16 :goto_8

    .line 1886
    :cond_0
    nop

    .line 1887
    new-instance v11, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;-><init>()V

    .line 1888
    .local v11, "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    new-instance v12, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1889
    .local v12, "reasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v5

    .line 1891
    .local v5, "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    const/4 v4, 0x0

    .line 1893
    .local v4, "validCrlFound":Z
    const/16 v6, 0xb

    if-eqz v2, :cond_3

    .line 1895
    const/4 v9, 0x0

    .line 1898
    .local v9, "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v9, v0

    .line 1903
    nop

    .line 1904
    if-eqz v9, :cond_2

    .line 1906
    const/4 v0, 0x0

    move-object/from16 v16, v1

    move/from16 v17, v4

    move v1, v0

    .end local v4    # "validCrlFound":Z
    .local v1, "i":I
    .local v16, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v17, "validCrlFound":Z
    :goto_1
    array-length v0, v9

    if-ge v1, v0, :cond_1

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1910
    :try_start_4
    aget-object v4, v9, v1
    :try_end_4
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v10, p6

    move-object/from16 v13, p7

    move/from16 v20, v1

    move-object/from16 v18, v3

    move v1, v6

    move-object/from16 v19, v9

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v9, p5

    .end local v1    # "i":I
    .end local v3    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v9    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .local v18, "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v19, "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .local v20, "i":I
    :try_start_5
    invoke-static/range {v3 .. v14}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_5
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v21, v5

    .line 1912
    .end local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v21, "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    const/4 v0, 0x1

    .line 1917
    .end local v17    # "validCrlFound":Z
    .local v0, "validCrlFound":Z
    move/from16 v17, v0

    goto :goto_3

    .line 1914
    .end local v0    # "validCrlFound":Z
    .end local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v17    # "validCrlFound":Z
    :catch_1
    move-exception v0

    move-object/from16 v21, v5

    .end local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_2

    .end local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v19    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v20    # "i":I
    .end local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v1    # "i":I
    .restart local v3    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v9    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    :catch_2
    move-exception v0

    move/from16 v20, v1

    move-object/from16 v18, v3

    move v1, v6

    move-object/from16 v19, v9

    move-object/from16 v21, v5

    .line 1916
    .end local v1    # "i":I
    .end local v3    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v9    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v19    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v20    # "i":I
    .restart local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_2
    move-object v3, v0

    move-object/from16 v16, v3

    .line 1906
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_3
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v14, p8

    move v6, v1

    move-object/from16 v3, v18

    move-object/from16 v9, v19

    move-object/from16 v5, v21

    move v1, v0

    .end local v20    # "i":I
    .local v0, "i":I
    goto :goto_1

    .end local v0    # "i":I
    .end local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v19    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v1    # "i":I
    .restart local v3    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v9    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    :cond_1
    move/from16 v20, v1

    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move v1, v6

    move-object/from16 v19, v9

    .end local v1    # "i":I
    .end local v3    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v9    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v19    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v20    # "i":I
    .restart local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_5

    .line 1904
    .end local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v19    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v20    # "i":I
    .end local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v1, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v3    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v4    # "validCrlFound":Z
    .restart local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v9    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move-object/from16 v19, v9

    move-object v3, v1

    move v1, v6

    .end local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v9    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .local v3, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v19    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_4

    .line 1900
    .end local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v19    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v3, "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v9    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    :catch_3
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move-object v3, v1

    .line 1902
    .end local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v0, "e":Ljava/lang/Exception;
    .local v3, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Distribution points could not be read."

    invoke-direct {v1, v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1893
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v3, "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move-object v3, v1

    move v1, v6

    .line 1928
    .end local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v5    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v3, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_4
    move-object/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v4    # "validCrlFound":Z
    .restart local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v17    # "validCrlFound":Z
    :goto_5
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1940
    :try_start_6
    invoke-static/range {p4 .. p4}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1945
    .local v0, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    nop

    .line 1946
    :try_start_7
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    const/4 v6, 0x0

    invoke-direct {v3, v6, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V

    .line 1948
    .local v4, "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 1949
    .local v5, "paramsPKIXClone":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v3 .. v14}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    .line 1951
    const/16 v17, 0x1

    .line 1956
    .end local v0    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v4    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v5    # "paramsPKIXClone":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v0, v16

    goto :goto_7

    .line 1953
    :catch_4
    move-exception v0

    goto :goto_6

    .line 1942
    :catch_5
    move-exception v0

    .line 1944
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v3, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v11    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v12    # "reasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p2    # "currentDate":Ljava/util/Date;
    .end local p3    # "validityDate":Ljava/util/Date;
    .end local p4    # "cert":Ljava/security/cert/X509Certificate;
    .end local p5    # "sign":Ljava/security/cert/X509Certificate;
    .end local p6    # "workingPublicKey":Ljava/security/PublicKey;
    .end local p7    # "certPathCerts":Ljava/util/List;
    .end local p8    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v3
    :try_end_7
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1955
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v11    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v12    # "reasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v17    # "validCrlFound":Z
    .restart local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "currentDate":Ljava/util/Date;
    .restart local p3    # "validityDate":Ljava/util/Date;
    .restart local p4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p5    # "sign":Ljava/security/cert/X509Certificate;
    .restart local p6    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local p7    # "certPathCerts":Ljava/util/List;
    .restart local p8    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    :goto_6
    move-object/from16 v16, v0

    goto :goto_7

    .line 1959
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_4
    move-object/from16 v0, v16

    .end local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v0, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_7
    if-nez v17, :cond_6

    .line 1961
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v1, :cond_5

    .line 1963
    throw v0

    .line 1966
    :cond_5
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "No valid CRL found."

    invoke-direct {v1, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1968
    :cond_6
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    if-ne v3, v1, :cond_9

    .line 1976
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    const/16 v4, 0xc

    if-nez v3, :cond_7

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    if-ne v3, v1, :cond_7

    .line 1978
    invoke-virtual {v11, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1980
    :cond_7
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 1984
    return-void

    .line 1982
    :cond_8
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Certificate status could not be determined."

    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1970
    :cond_9
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1971
    .local v1, "df":Ljava/text/SimpleDateFormat;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate revocation after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1973
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1974
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1882
    .end local v0    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v11    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v12    # "reasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v21    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v1, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v3, "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :catch_6
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v1

    .line 1884
    .end local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v3, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :goto_8
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v1, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1867
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v3    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v18    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_7
    move-exception v0

    move-object/from16 v15, p1

    move-object v3, v1

    .line 1869
    .end local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v1, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 26
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyNodes"    # [Ljava/util/List;
    .param p3, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 792
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 793
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 794
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 796
    .local v6, "n":I
    sub-int v9, v6, v2

    .line 799
    .local v9, "i":I
    const/4 v7, 0x0

    .line 802
    .local v7, "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v15, v0

    .line 809
    .end local v7    # "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v15, "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 810
    move-object/from16 v0, p3

    .line 811
    .local v0, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-eqz v15, :cond_13

    .line 813
    move-object v7, v15

    .line 814
    .local v7, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 815
    .local v8, "m_idp":Ljava/util/Map;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 817
    .local v10, "s_idp":Ljava/util/Set;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 819
    invoke-virtual {v7, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 820
    .local v12, "mapping":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v13

    .line 821
    .local v13, "id_p":Ljava/lang/String;
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    .line 824
    .local v14, "sd_p":Ljava/lang/String;
    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 826
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v17, v16

    .line 827
    .local v17, "tmp":Ljava/util/Set;
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "tmp":Ljava/util/Set;
    .local v0, "tmp":Ljava/util/Set;
    .local v16, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-interface {v8, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 833
    .end local v16    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v0, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    move-object/from16 v16, v0

    .end local v0    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v16    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 834
    .local v0, "tmp":Ljava/util/Set;
    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 817
    .end local v0    # "tmp":Ljava/util/Set;
    .end local v12    # "mapping":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v13    # "id_p":Ljava/lang/String;
    .end local v14    # "sd_p":Ljava/lang/String;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v16

    goto :goto_0

    .end local v16    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v0, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    move-object/from16 v16, v0

    .line 838
    .end local v0    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "j":I
    .restart local v16    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 839
    .local v17, "it_idp":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 841
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 846
    .restart local v13    # "id_p":Ljava/lang/String;
    if-lez p4, :cond_b

    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "idp_found":Z
    aget-object v11, v3, v9

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 850
    .local v11, "nodes_i":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 852
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 853
    .local v12, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 855
    const/4 v0, 0x1

    .line 856
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    iput-object v14, v12, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 857
    move/from16 v18, v0

    goto :goto_4

    .line 859
    .end local v12    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2
    goto :goto_3

    .line 850
    :cond_3
    move/from16 v18, v0

    .line 861
    .end local v0    # "idp_found":Z
    .local v18, "idp_found":Z
    :goto_4
    if-nez v18, :cond_a

    .line 863
    aget-object v0, v3, v9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 864
    .end local v11    # "nodes_i":Ljava/util/Iterator;
    .local v19, "nodes_i":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 866
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 867
    .local v20, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v11, "2.5.29.32.0"

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 869
    const/4 v12, 0x0

    .line 870
    .local v12, "pq":Ljava/util/Set;
    const/4 v14, 0x0

    .line 873
    .local v14, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_1
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v21, v0

    .line 880
    .end local v14    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v21, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 881
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v22

    .line 882
    .local v22, "e":Ljava/util/Enumeration;
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 884
    const/4 v14, 0x0

    .line 887
    .local v14, "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v14, v0

    .line 893
    nop

    .line 894
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 898
    nop

    .line 899
    :try_start_3
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v12, v0

    .line 907
    move-object/from16 v23, v4

    goto :goto_7

    .line 901
    :catch_0
    move-exception v0

    .line 904
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v11, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    move-object/from16 v23, v4

    .end local v4    # "certs":Ljava/util/List;
    .local v23, "certs":Ljava/util/List;
    const-string v4, "Policy qualifier info set could not be decoded."

    invoke-direct {v11, v4, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v11

    .line 894
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v23    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :cond_4
    move-object/from16 v23, v4

    .line 910
    .end local v4    # "certs":Ljava/util/List;
    .end local v14    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v23    # "certs":Ljava/util/List;
    goto :goto_6

    .line 889
    .end local v23    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    .restart local v14    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_1
    move-exception v0

    move-object/from16 v23, v4

    .line 891
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v23    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Policy information could not be decoded."

    invoke-direct {v4, v11, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 882
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v14    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v23    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :cond_5
    move-object/from16 v23, v4

    .line 911
    .end local v4    # "certs":Ljava/util/List;
    .restart local v23    # "certs":Ljava/util/List;
    :goto_7
    const/4 v0, 0x0

    .line 912
    .local v0, "ci":Z
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 914
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    sget-object v14, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v14, v0

    goto :goto_8

    .line 912
    :cond_6
    move v14, v0

    .line 918
    .end local v0    # "ci":Z
    .local v14, "ci":Z
    :goto_8
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 919
    .local v0, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 921
    move-object v4, v7

    .end local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v4, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 922
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Set;

    move-object/from16 v25, v10

    move-object/from16 v10, v24

    move-object/from16 v24, v8

    move-object v8, v11

    move-object v11, v0

    .end local v0    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .local v11, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v24, "m_idp":Ljava/util/Map;
    .local v25, "s_idp":Ljava/util/Set;
    invoke-direct/range {v7 .. v14}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 923
    .local v7, "c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11, v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 924
    aget-object v0, v3, v9

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    .end local v7    # "c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_9

    .line 919
    .end local v4    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .restart local v0    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v7, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    :cond_7
    move-object v11, v0

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .end local v0    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .restart local v4    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    goto :goto_9

    .line 876
    .end local v11    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .restart local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    .local v14, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v0

    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .line 878
    .end local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v4, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Certificate policies extension could not be decoded."

    invoke-direct {v7, v8, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 867
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v12    # "pq":Ljava/util/Set;
    .end local v14    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .restart local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    :cond_8
    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .line 928
    .end local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .end local v20    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v4, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    move-object/from16 v4, v23

    goto/16 :goto_5

    .line 864
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .restart local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    :cond_9
    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .end local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .local v4, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    goto :goto_9

    .line 861
    .end local v19    # "nodes_i":Ljava/util/Iterator;
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .restart local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    .local v11, "nodes_i":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .line 934
    .end local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .end local v11    # "nodes_i":Ljava/util/Iterator;
    .end local v18    # "idp_found":Z
    .local v4, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    :goto_9
    goto/16 :goto_f

    .line 935
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .restart local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    :cond_b
    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .end local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .local v4, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    if-gtz p4, :cond_11

    .line 937
    aget-object v0, v3, v9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 938
    .local v0, "nodes_i":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 940
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 941
    .local v7, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 943
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 944
    .local v8, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8, v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 945
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 946
    add-int/lit8 v10, v9, -0x1

    .local v10, "k":I
    :goto_b
    if-ltz v10, :cond_e

    .line 948
    aget-object v11, v3, v10

    .line 949
    .local v11, "nodes":Ljava/util/List;
    const/4 v12, 0x0

    move-object/from16 v14, v16

    .end local v16    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v12, "l":I
    .local v14, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_c
    move-object/from16 v18, v0

    .end local v0    # "nodes_i":Ljava/util/Iterator;
    .local v18, "nodes_i":Ljava/util/Iterator;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_d

    .line 951
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 952
    .local v0, "node2":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v16

    if-nez v16, :cond_c

    .line 954
    invoke-static {v14, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v14

    .line 956
    if-nez v14, :cond_c

    .line 958
    move-object/from16 v16, v14

    goto :goto_d

    .line 949
    .end local v0    # "node2":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v18

    goto :goto_c

    :cond_d
    move-object/from16 v16, v14

    .line 946
    .end local v11    # "nodes":Ljava/util/List;
    .end local v12    # "l":I
    .end local v14    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v16    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_d
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, v18

    goto :goto_b

    .end local v18    # "nodes_i":Ljava/util/Iterator;
    .local v0, "nodes_i":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v18, v0

    .end local v0    # "nodes_i":Ljava/util/Iterator;
    .restart local v18    # "nodes_i":Ljava/util/Iterator;
    goto :goto_e

    .line 941
    .end local v8    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "k":I
    .end local v18    # "nodes_i":Ljava/util/Iterator;
    .restart local v0    # "nodes_i":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v18, v0

    .line 964
    .end local v0    # "nodes_i":Ljava/util/Iterator;
    .end local v7    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v18    # "nodes_i":Ljava/util/Iterator;
    :goto_e
    move-object/from16 v0, v18

    goto :goto_a

    .line 938
    .end local v18    # "nodes_i":Ljava/util/Iterator;
    .restart local v0    # "nodes_i":Ljava/util/Iterator;
    :cond_10
    move-object/from16 v18, v0

    .line 966
    .end local v0    # "nodes_i":Ljava/util/Iterator;
    .end local v13    # "id_p":Ljava/lang/String;
    :cond_11
    :goto_f
    move-object v7, v4

    move-object/from16 v4, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    goto/16 :goto_2

    .line 839
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .local v7, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v8, "m_idp":Ljava/util/Map;
    .local v10, "s_idp":Ljava/util/Set;
    :cond_12
    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .end local v7    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .local v4, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    move-object/from16 v0, v16

    goto :goto_10

    .line 811
    .end local v16    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v17    # "it_idp":Ljava/util/Iterator;
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v0, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v4, "certs":Ljava/util/List;
    :cond_13
    move-object/from16 v16, v0

    move-object/from16 v23, v4

    .line 968
    .end local v4    # "certs":Ljava/util/List;
    .restart local v23    # "certs":Ljava/util/List;
    :goto_10
    return-object v0

    .line 805
    .end local v0    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v15    # "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v23    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    .local v7, "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_3
    move-exception v0

    move-object/from16 v23, v4

    .line 807
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "ex":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v23    # "certs":Ljava/util/List;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy mappings extension could not be decoded."

    invoke-direct {v4, v8, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .locals 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 976
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 977
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 982
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 985
    .local v2, "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 992
    .end local v2    # "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v3, "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 993
    if-eqz v3, :cond_2

    .line 995
    move-object v2, v3

    .line 997
    .local v2, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 999
    const/4 v5, 0x0

    .line 1000
    .local v5, "issuerDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v6, 0x0

    .line 1003
    .local v6, "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_1
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1005
    .local v7, "mapping":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    move-object v5, v8

    .line 1006
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1012
    .end local v6    # "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "mapping":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v8, "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    nop

    .line 1014
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2.5.29.32.0"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x0

    if-nez v6, :cond_1

    .line 1020
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 997
    .end local v5    # "issuerDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v8    # "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1023
    .restart local v5    # "issuerDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v8    # "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "SubjectDomainPolicy is anyPolicy"

    invoke-direct {v6, v7, v9, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1017
    :cond_1
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v6, v7, v9, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1008
    .end local v8    # "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v6    # "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_0
    move-exception v7

    .line 1010
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v9, "Policy mappings extension contents could not be decoded."

    invoke-direct {v8, v9, v7, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 1027
    .end local v2    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "j":I
    .end local v5    # "issuerDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 988
    .end local v3    # "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v2, "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v3

    .line 990
    .local v3, "ex":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy mappings extension could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1576
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1577
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1581
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1584
    .local v2, "nc":Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 1586
    .local v3, "ncSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v3, :cond_0

    .line 1588
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v4

    .line 1595
    .end local v3    # "ncSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_0
    nop

    .line 1596
    if-eqz v2, :cond_2

    .line 1602
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v3

    .line 1603
    .local v3, "permitted":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v3, :cond_1

    .line 1607
    :try_start_1
    invoke-virtual {p2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1613
    goto :goto_0

    .line 1609
    :catch_0
    move-exception v4

    .line 1611
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v5, v6, v4, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1619
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    .line 1620
    .local v4, "excluded":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v4, :cond_2

    .line 1622
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-eq v5, v6, :cond_2

    .line 1625
    :try_start_2
    aget-object v6, v4, v5

    invoke-virtual {p2, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1631
    nop

    .line 1622
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1627
    :catch_1
    move-exception v6

    .line 1629
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v7, v8, v6, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1634
    .end local v3    # "permitted":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v4    # "excluded":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 1591
    :catch_2
    move-exception v3

    .line 1593
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Name constraints extension could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I

    .line 2171
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2172
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2176
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2181
    if-eqz p2, :cond_0

    .line 2183
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2186
    :cond_0
    return p2
.end method

.method protected static blacklist prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I

    .line 2194
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2195
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2199
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2204
    if-eqz p2, :cond_0

    .line 2206
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2209
    :cond_0
    return p2
.end method

.method protected static blacklist prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I

    .line 2217
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2218
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2222
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2227
    if-eqz p2, :cond_0

    .line 2229
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2232
    :cond_0
    return p2
.end method

.method protected static blacklist prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1468
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1469
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1473
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1476
    .local v2, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1483
    .end local v2    # "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v3, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1487
    if-eqz v3, :cond_2

    .line 1489
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 1491
    .local v2, "policyConstraints":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1495
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 1496
    .local v4, "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    if-nez v5, :cond_1

    .line 1498
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1499
    .local v5, "tmpInt":I
    if-ge v5, p2, :cond_0

    .line 1501
    return v5

    .line 1503
    :cond_0
    goto :goto_1

    .line 1510
    .end local v4    # "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "tmpInt":I
    :cond_1
    goto :goto_0

    .line 1506
    :catch_0
    move-exception v4

    .line 1508
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v5, v6, v4, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1513
    .end local v2    # "policyConstraints":Ljava/util/Enumeration;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    return p2

    .line 1479
    .end local v3    # "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v2, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v3

    .line 1481
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1522
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1523
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1527
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1530
    .local v2, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1537
    .end local v2    # "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v3, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1541
    if-eqz v3, :cond_2

    .line 1543
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 1545
    .local v2, "policyConstraints":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1549
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 1550
    .local v4, "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1552
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1553
    .local v5, "tmpInt":I
    if-ge v5, p2, :cond_0

    .line 1555
    return v5

    .line 1557
    :cond_0
    goto :goto_1

    .line 1564
    .end local v4    # "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "tmpInt":I
    :cond_1
    goto :goto_0

    .line 1560
    :catch_0
    move-exception v4

    .line 1562
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v5, v6, v4, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1567
    .end local v2    # "policyConstraints":Ljava/util/Enumeration;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    return p2

    .line 1533
    .end local v3    # "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v2, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v3

    .line 1535
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1992
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1993
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1997
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2000
    .local v2, "iap":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2007
    .end local v2    # "iap":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .local v3, "iap":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    nop

    .line 2009
    if-eqz v3, :cond_0

    .line 2011
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    .line 2013
    .local v2, "_inhibitAnyPolicy":I
    if-ge v2, p2, :cond_0

    .line 2015
    return v2

    .line 2018
    .end local v2    # "_inhibitAnyPolicy":I
    :cond_0
    return p2

    .line 2003
    .end local v3    # "iap":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .local v2, "iap":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :catch_0
    move-exception v3

    .line 2005
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2026
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2027
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2031
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2034
    .local v2, "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2041
    .end local v2    # "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .local v3, "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    nop

    .line 2042
    const/4 v2, 0x0

    if-eqz v3, :cond_1

    .line 2044
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2053
    return-void

    .line 2046
    :cond_0
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Not a CA certificate"

    invoke-direct {v4, v5, v2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2051
    :cond_1
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v4, v5, v2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2037
    .end local v3    # "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .restart local v2    # "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    :catch_0
    move-exception v3

    .line 2039
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .locals 5
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2061
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2062
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2066
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2068
    if-lez p2, :cond_0

    .line 2073
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2070
    :cond_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Max path length not greater than zero"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 2075
    :cond_1
    return p2
.end method

.method protected static blacklist prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2084
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2085
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2090
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2093
    .local v2, "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    .end local v2    # "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .local v3, "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    nop

    .line 2101
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2103
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    .line 2104
    .local v2, "pathLenConstraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    if-eqz v2, :cond_0

    .line 2106
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2109
    .end local v2    # "pathLenConstraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :cond_0
    return p2

    .line 2096
    .end local v3    # "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .local v2, "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    :catch_0
    move-exception v3

    .line 2098
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2117
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2118
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2123
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    .line 2125
    .local v2, "keyUsage":[Z
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    aget-boolean v3, v2, v4

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2127
    :cond_0
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 2131
    :cond_1
    :goto_0
    return-void
.end method

.method protected static blacklist prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "criticalExtensions"    # Ljava/util/Set;
    .param p3, "pathCheckers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2140
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2141
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2147
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2148
    .local v2, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2152
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v3, v1, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2157
    goto :goto_0

    .line 2154
    :catch_0
    move-exception v3

    .line 2156
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2159
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2164
    return-void

    .line 2161
    :cond_1
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate has unsupported critical extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
.end method

.method protected static blacklist processCRLB1(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 9
    .param p0, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 290
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 291
    .local v0, "idp":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v1, 0x0

    .line 292
    .local v1, "isIndirect":Z
    if-eqz v0, :cond_0

    .line 294
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v1, 0x1

    .line 303
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    .local v2, "issuerBytes":[B
    nop

    .line 310
    const/4 v3, 0x0

    .line 311
    .local v3, "matchIssuer":Z
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 314
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 316
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 320
    :try_start_1
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_1

    .line 322
    const/4 v3, 0x1

    .line 329
    :cond_1
    goto :goto_1

    .line 325
    :catch_0
    move-exception v6

    .line 327
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 314
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 332
    .end local v5    # "j":I
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    .line 334
    :cond_4
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 336
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 340
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    goto :goto_3

    .line 338
    .restart local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_6
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 343
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_7
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    .line 344
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .line 343
    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 346
    const/4 v3, 0x1

    .line 349
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 353
    return-void

    .line 351
    :cond_9
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    .end local v2    # "issuerBytes":[B
    .end local v3    # "matchIssuer":Z
    :catch_1
    move-exception v2

    .line 307
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception encoding CRL issuer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static blacklist processCRLB2(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 11
    .param p0, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .line 110
    .local v0, "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 116
    .end local v0    # "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v1, "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 119
    if-eqz v1, :cond_15

    .line 121
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 124
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 125
    .local v0, "dpName":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, "names":Ljava/util/List;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 130
    .local v3, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 132
    aget-object v5, v3, v4

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "j":I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 137
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 140
    .local v3, "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 141
    .local v5, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 149
    .end local v5    # "e":Ljava/util/Enumeration;
    :cond_1
    nop

    .line 150
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 146
    :catch_0
    move-exception v4

    .line 148
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Could not read CRL issuer."

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 153
    .end local v3    # "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 156
    .local v3, "matches":Z
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v5

    const-string v6, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    if-eqz v5, :cond_a

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 159
    const/4 v5, 0x0

    .line 160
    .local v5, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_3

    .line 162
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 164
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-ne v7, v4, :cond_6

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    move-object v5, v4

    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    goto :goto_3

    .line 172
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_4
    new-array v4, v4, [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 175
    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_2
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    const/4 v7, 0x0

    aput-object v5, v4, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 180
    move-object v5, v4

    .line 182
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :goto_3
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    array-length v7, v5

    if-ge v4, v7, :cond_6

    .line 184
    aget-object v7, v5, v4

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 185
    .local v7, "e":Ljava/util/Enumeration;
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 186
    .local v8, "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 188
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    .line 190
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 191
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    aput-object v9, v5, v4

    .line 182
    .end local v7    # "e":Ljava/util/Enumeration;
    .end local v8    # "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 177
    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :catch_1
    move-exception v5

    .line 179
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Could not read certificate issuer."

    invoke-direct {v6, v7, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 194
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .local v5, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_6
    if-eqz v5, :cond_8

    .line 196
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    array-length v7, v5

    if-ge v4, v7, :cond_8

    .line 198
    aget-object v7, v5, v4

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 200
    const/4 v3, 0x1

    .line 201
    goto :goto_7

    .line 196
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 205
    .end local v4    # "j":I
    :cond_8
    :goto_7
    if-eqz v3, :cond_9

    .line 210
    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    goto :goto_a

    .line 207
    .restart local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_9
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 222
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_8
    array-length v7, v4

    if-ge v5, v7, :cond_c

    .line 224
    aget-object v7, v4, v5

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 226
    const/4 v3, 0x1

    .line 227
    goto :goto_9

    .line 222
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 230
    .end local v5    # "j":I
    :cond_c
    :goto_9
    if-eqz v3, :cond_d

    goto :goto_a

    .line 232
    :cond_d
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_e
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 237
    .end local v0    # "dpName":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v2    # "names":Ljava/util/List;
    .end local v3    # "matches":Z
    :cond_f
    :goto_a
    const/4 v0, 0x0

    .line 240
    .local v0, "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_3
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Extension;

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 246
    .end local v0    # "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .local v2, "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    nop

    .line 248
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_13

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_b

    .line 253
    :cond_10
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "CA Cert CRL only contains user certificates."

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_11
    :goto_b
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_c

    .line 259
    :cond_12
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "End CRL only contains CA certificates."

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_13
    :goto_c
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_d

    .line 266
    :cond_14
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    .end local v2    # "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .restart local v0    # "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    :catch_2
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Basic constraints extension could not be decoded."

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 269
    .end local v0    # "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_d
    return-void

    .line 113
    .end local v1    # "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v0, "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_3
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static blacklist processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 8
    .param p0, "deltaCRL"    # Ljava/security/cert/X509CRL;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p2, "pkixParams"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 651
    if-nez p0, :cond_0

    .line 653
    return-void

    .line 656
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->hasUnsupportedCriticalExtension()Z

    move-result v0

    if-nez v0, :cond_9

    .line 661
    const/4 v0, 0x0

    .line 664
    .local v0, "completeidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 670
    .end local v0    # "completeidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v1, "completeidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 672
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 675
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 681
    const/4 v0, 0x0

    .line 684
    .local v0, "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 691
    .end local v0    # "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v2, "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, "match":Z
    if-nez v1, :cond_1

    .line 696
    if-nez v2, :cond_2

    .line 698
    const/4 v0, 0x1

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 705
    const/4 v0, 0x1

    .line 708
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 715
    const/4 v3, 0x0

    .line 718
    .local v3, "completeKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_2
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_2
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 725
    .end local v3    # "completeKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .local v4, "completeKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 727
    const/4 v3, 0x0

    .line 730
    .local v3, "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_3
    sget-object v5, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5
    :try_end_3
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 737
    .end local v3    # "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .local v5, "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 739
    if-eqz v4, :cond_5

    .line 744
    if-eqz v5, :cond_4

    .line 749
    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 751
    :cond_3
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 746
    :cond_4
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL authority key identifier is null."

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 741
    :cond_5
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL authority key identifier is null."

    invoke-direct {v3, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 733
    .end local v5    # "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v3    # "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v5

    .line 735
    .local v5, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 721
    .end local v4    # "completeKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v3, "completeKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :catch_1
    move-exception v4

    .line 723
    .local v4, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 710
    .end local v3    # "completeKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v4    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_6
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 687
    .end local v2    # "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v0, "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_2
    move-exception v2

    .line 689
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 677
    .end local v0    # "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_8
    :goto_1
    return-void

    .line 667
    .end local v1    # "completeidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v0, "completeidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_3
    move-exception v1

    .line 669
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 658
    .end local v0    # "completeidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "delta CRL has unsupported critical extensions"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist processCRLD(Ljava/security/cert/X509CRL;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .locals 4
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 360
    const/4 v0, 0x0

    .line 363
    .local v0, "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v0    # "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v1, "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 371
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v0

    return-object v0

    .line 376
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_2

    .line 378
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    return-object v0

    .line 381
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_3

    .line 382
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_0

    .line 383
    :cond_3
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V

    :goto_0
    if-nez v1, :cond_4

    .line 384
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_1

    .line 385
    :cond_4
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V

    .line 383
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v0

    .line 381
    return-object v0

    .line 366
    .end local v1    # "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .restart local v0    # "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static blacklist processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .locals 17
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p4, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .param p6, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 458
    move-object/from16 v1, p2

    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    move-object v2, v0

    .line 461
    .local v2, "certSelector":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v0

    .line 462
    .local v0, "issuerPrincipal":[B
    invoke-virtual {v2, v0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d

    .line 468
    .end local v0    # "issuerPrincipal":[B
    nop

    .line 470
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v3

    .line 473
    .local v3, "selector":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v4, v0

    .line 476
    .local v4, "coll":Ljava/util/LinkedHashSet;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 477
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_c

    .line 482
    nop

    .line 484
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 488
    .local v5, "cert_it":Ljava/util/Iterator;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 489
    .local v6, "validCerts":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 491
    .local v7, "validKeys":Ljava/util/List;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 499
    .local v8, "signingCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    move-object/from16 v9, p3

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    goto :goto_0

    .line 511
    :cond_0
    move-object/from16 v9, p3

    :try_start_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;

    const/4 v10, 0x1

    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>(Z)V

    .line 512
    .local v0, "builder":Ljava/security/cert/CertPathBuilderSpi;
    new-instance v11, Ljava/security/cert/X509CertSelector;

    invoke-direct {v11}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 513
    .local v11, "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v11, v8}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 515
    new-instance v12, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-object/from16 v13, p4

    :try_start_3
    invoke-direct {v12, v13}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    new-instance v14, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v14, v11}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    .line 516
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v12
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 527
    .local v12, "paramsBuilder":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v14, p5

    :try_start_4
    invoke-interface {v14, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/4 v10, 0x0

    if-eqz v15, :cond_1

    .line 529
    invoke-virtual {v12, v10}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    goto :goto_1

    .line 533
    :cond_1
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    .line 536
    :goto_1
    new-instance v15, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v10

    invoke-direct {v15, v10}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v10

    .line 538
    .local v10, "extParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    invoke-virtual {v0, v10}, Ljava/security/cert/CertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v15

    .line 539
    .local v15, "certs":Ljava/util/List;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 540
    move-object/from16 v1, p6

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "builder":Ljava/security/cert/CertPathBuilderSpi;
    .local v16, "builder":Ljava/security/cert/CertPathBuilderSpi;
    :try_start_5
    invoke-static {v15, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 553
    nop

    .line 554
    .end local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v10    # "extParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v11    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    .end local v12    # "paramsBuilder":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v15    # "certs":Ljava/util/List;
    .end local v16    # "builder":Ljava/security/cert/CertPathBuilderSpi;
    move-object/from16 v1, p2

    goto :goto_0

    .line 550
    .restart local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 546
    :catch_1
    move-exception v0

    goto :goto_7

    .line 542
    :catch_2
    move-exception v0

    goto :goto_a

    .line 550
    :catch_3
    move-exception v0

    goto :goto_3

    .line 546
    :catch_4
    move-exception v0

    goto :goto_6

    .line 542
    :catch_5
    move-exception v0

    goto :goto_9

    .line 550
    :catch_6
    move-exception v0

    goto :goto_2

    .line 546
    :catch_7
    move-exception v0

    goto :goto_5

    .line 542
    :catch_8
    move-exception v0

    goto :goto_8

    .line 550
    :catch_9
    move-exception v0

    move-object/from16 v13, p4

    :goto_2
    move-object/from16 v14, p5

    :goto_3
    move-object/from16 v1, p6

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v10, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 546
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v0

    move-object/from16 v13, p4

    :goto_5
    move-object/from16 v14, p5

    :goto_6
    move-object/from16 v1, p6

    .line 548
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    :goto_7
    new-instance v10, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Public key of issuer certificate of CRL could not be retrieved."

    invoke-direct {v10, v11, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 542
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_b
    move-exception v0

    move-object/from16 v13, p4

    :goto_8
    move-object/from16 v14, p5

    :goto_9
    move-object/from16 v1, p6

    .line 544
    .local v0, "e":Ljava/security/cert/CertPathBuilderException;
    :goto_a
    new-instance v10, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "CertPath for CRL signer failed to validate."

    invoke-direct {v10, v11, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 556
    .end local v0    # "e":Ljava/security/cert/CertPathBuilderException;
    .end local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_2
    move-object/from16 v9, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v1, p6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 558
    .local v0, "checkKeys":Ljava/util/Set;
    const/4 v8, 0x0

    .line 559
    .local v8, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 561
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 562
    .local v11, "signCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v12

    .line 564
    .local v12, "keyUsage":[Z
    if-eqz v12, :cond_4

    array-length v15, v12

    const/4 v1, 0x6

    if-le v15, v1, :cond_3

    aget-boolean v1, v12, v1

    if-nez v1, :cond_4

    .line 566
    :cond_3
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v15, "Issuer certificate key usage extension does not permit CRL signing."

    invoke-direct {v1, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .end local v8    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v1, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_c

    .line 571
    .end local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v8    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_4
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v11    # "signCert":Ljava/security/cert/X509Certificate;
    .end local v12    # "keyUsage":[Z
    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p6

    goto :goto_b

    .line 575
    .end local v10    # "i":I
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v8, :cond_6

    goto :goto_d

    .line 577
    :cond_6
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Cannot find a valid issuer certificate."

    invoke-direct {v1, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_7
    :goto_d
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v8, :cond_8

    goto :goto_e

    .line 581
    :cond_8
    throw v8

    .line 584
    :cond_9
    :goto_e
    return-object v0

    .line 479
    .end local v0    # "checkKeys":Ljava/util/Set;
    .end local v5    # "cert_it":Ljava/util/Iterator;
    .end local v6    # "validCerts":Ljava/util/List;
    .end local v7    # "validKeys":Ljava/util/List;
    .end local v8    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_c
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 481
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Issuer certificate for CRL cannot be searched."

    invoke-direct {v1, v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 464
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v3    # "selector":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v4    # "coll":Ljava/util/LinkedHashSet;
    :catch_d
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 466
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    invoke-direct {v1, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "keys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "lastException":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 598
    .local v2, "key":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    return-object v2

    .line 601
    :catch_0
    move-exception v3

    .line 603
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 605
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 606
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot verify CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 4
    .param p0, "deltacrls"    # Ljava/util/Set;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 614
    const/4 v0, 0x0

    .line 616
    .local v0, "lastException":Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 621
    .local v2, "crl":Ljava/security/cert/X509CRL;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    return-object v2

    .line 624
    :catch_0
    move-exception v3

    .line 626
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 628
    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 630
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    if-nez v0, :cond_1

    .line 634
    const/4 v1, 0x0

    return-object v1

    .line 632
    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot verify delta CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 1
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "deltacrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .param p4, "pkixParams"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 765
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 767
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;)V

    .line 769
    :cond_0
    return-void
.end method

.method protected static blacklist processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;)V
    .locals 2
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "completecrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 778
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 780
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;)V

    .line 782
    :cond_0
    return-void
.end method

.method protected static blacklist processCertA(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V
    .locals 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "validityDate"    # Ljava/util/Date;
    .param p3, "revocationChecker"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .param p4, "index"    # I
    .param p5, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p6, "verificationAlreadyPerformed"    # Z
    .param p7, "workingIssuerName"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p8, "sign"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1394
    move v4, p4

    move-object/from16 v7, p7

    const-string v1, "Could not validate certificate: "

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v8

    .line 1395
    .local v8, "certs":Ljava/util/List;
    invoke-interface {v8, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 1399
    .local v9, "cert":Ljava/security/cert/X509Certificate;
    if-nez p6, :cond_0

    .line 1405
    nop

    .line 1406
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1405
    move-object v6, p5

    :try_start_1
    invoke-static {v9, p5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1411
    goto :goto_1

    .line 1408
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, p5

    .line 1410
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v1, v2, v0, p0, p4}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1399
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    move-object v6, p5

    .line 1417
    :goto_1
    nop

    .line 1418
    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v0

    .line 1417
    invoke-static {p2, v0, p0, p4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Ljava/util/Date;ILjava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2
    :try_end_2
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1423
    .local v2, "validCertDate":Ljava/util/Date;
    nop

    .line 1429
    :try_start_3
    invoke-virtual {v9, v2}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1438
    nop

    .line 1443
    if-eqz p3, :cond_1

    .line 1445
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    move-object v3, p0

    move-object v1, p1

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V

    invoke-interface {p3, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;->initialize(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V

    .line 1448
    invoke-interface {p3, v9}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;->check(Ljava/security/cert/Certificate;)V

    .line 1454
    :cond_1
    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 1455
    .local v0, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1460
    return-void

    .line 1457
    :cond_2
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IssuerName("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") does not match SubjectName("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") of signing certificate."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6, p0, p4}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1435
    .end local v0    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :catch_2
    move-exception v0

    .line 1437
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0, p0, p4}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1431
    .end local v0    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_3
    move-exception v0

    .line 1433
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0, p0, p4}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1420
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    .end local v2    # "validCertDate":Ljava/util/Date;
    :catch_4
    move-exception v0

    .line 1422
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v1, v2, v0, p0, p4}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static blacklist processCertBC(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V
    .locals 17
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .param p3, "isForCRLCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1082
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 1083
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1084
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 1086
    .local v6, "n":I
    sub-int v7, v6, v2

    .line 1095
    .local v7, "i":I
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lt v7, v6, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v4

    goto/16 :goto_3

    .line 1097
    :cond_1
    :goto_0
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    .line 1102
    .local v8, "principal":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :try_start_0
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v9, v0

    .line 1108
    .local v9, "dns":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1112
    :try_start_1
    invoke-virtual {v3, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 1113
    invoke-virtual {v3, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1119
    nop

    .line 1121
    const/4 v10, 0x0

    .line 1124
    .local v10, "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :try_start_2
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v10, v0

    .line 1131
    nop

    .line 1132
    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    sget-object v11, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v11}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v11

    .line 1133
    .local v11, "emails":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "eI":I
    :goto_1
    array-length v0, v11

    if-eq v12, v0, :cond_2

    .line 1136
    aget-object v0, v11, v12

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v13

    .line 1137
    .local v13, "email":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v14, 0x1

    invoke-direct {v0, v14, v13}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    move-object v14, v0

    .line 1140
    .local v14, "emailAsGeneralName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_3
    invoke-virtual {v3, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1141
    invoke-virtual {v3, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1147
    nop

    .line 1133
    .end local v13    # "email":Ljava/lang/String;
    .end local v14    # "emailAsGeneralName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1143
    .restart local v13    # "email":Ljava/lang/String;
    .restart local v14    # "emailAsGeneralName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "ex":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v16, v4

    .end local v4    # "certs":Ljava/util/List;
    .local v16, "certs":Ljava/util/List;
    const-string v4, "Subtree check for certificate subject alternative email failed."

    invoke-direct {v15, v4, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v15

    .line 1133
    .end local v0    # "ex":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v13    # "email":Ljava/lang/String;
    .end local v14    # "emailAsGeneralName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :cond_2
    move-object/from16 v16, v4

    .line 1149
    .end local v4    # "certs":Ljava/util/List;
    .end local v12    # "eI":I
    .restart local v16    # "certs":Ljava/util/List;
    if-eqz v10, :cond_3

    .line 1151
    const/4 v4, 0x0

    .line 1154
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_4
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v0

    .line 1160
    nop

    .line 1161
    const/4 v0, 0x0

    move v12, v0

    .local v12, "j":I
    :goto_2
    array-length v0, v4

    if-ge v12, v0, :cond_3

    .line 1166
    :try_start_5
    aget-object v0, v4, v12

    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1167
    aget-object v0, v4, v12

    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1173
    nop

    .line 1161
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1169
    :catch_1
    move-exception v0

    .line 1171
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v13, Ljava/security/cert/CertPathValidatorException;

    const-string v14, "Subtree check for certificate subject alternative name failed."

    invoke-direct {v13, v14, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v13

    .line 1156
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v12    # "j":I
    :catch_2
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    const-string v13, "Subject alternative name contents could not be decoded."

    invoke-direct {v12, v13, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v12

    .line 1177
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v8    # "principal":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v9    # "dns":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v10    # "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v11    # "emails":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    :cond_3
    :goto_3
    return-void

    .line 1127
    .end local v16    # "certs":Ljava/util/List;
    .local v4, "certs":Ljava/util/List;
    .restart local v8    # "principal":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .restart local v9    # "dns":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v10    # "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :catch_3
    move-exception v0

    move-object/from16 v16, v4

    .line 1129
    .end local v4    # "certs":Ljava/util/List;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Subject alternative name extension could not be decoded."

    invoke-direct {v4, v11, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1115
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    .line 1117
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v10, "Subtree check for certificate subject failed."

    invoke-direct {v4, v10, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1104
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v9    # "dns":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :catch_5
    move-exception v0

    move-object/from16 v16, v4

    .line 1106
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v9, "Exception extracting subject name when checking subtrees."

    invoke-direct {v4, v9, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 26
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "acceptablePolicies"    # Ljava/util/Set;
    .param p3, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "inhibitAnyPolicy"    # I
    .param p6, "isForCRLCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1189
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1190
    .local v5, "certs":Ljava/util/List;
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1191
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 1193
    .local v7, "n":I
    sub-int v10, v7, v2

    .line 1198
    .local v10, "i":I
    const/4 v8, 0x0

    .line 1201
    .local v8, "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v0

    .line 1208
    .end local v8    # "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v16, "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1209
    if-eqz v16, :cond_16

    if-eqz p3, :cond_16

    .line 1214
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v8

    .line 1215
    .local v8, "e":Ljava/util/Enumeration;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v9, v0

    .line 1217
    .local v9, "pols":Ljava/util/Set;
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const-string v11, "2.5.29.32.0"

    if-eqz v0, :cond_1

    .line 1219
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v12

    .line 1220
    .local v12, "pInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    .line 1222
    .local v13, "pOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1224
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1226
    const/4 v11, 0x0

    .line 1229
    .local v11, "pq":Ljava/util/Set;
    :try_start_1
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1235
    .end local v11    # "pq":Ljava/util/Set;
    .local v0, "pq":Ljava/util/Set;
    nop

    .line 1237
    invoke-static {v10, v4, v13, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v11

    .line 1239
    .local v11, "match":Z
    if-nez v11, :cond_0

    .line 1241
    invoke-static {v10, v4, v13, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_1

    .line 1231
    .end local v0    # "pq":Ljava/util/Set;
    .local v11, "pq":Ljava/util/Set;
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v14, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v15, "Policy qualifier info set could not be build."

    invoke-direct {v14, v15, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v14

    .line 1244
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v11    # "pq":Ljava/util/Set;
    .end local v12    # "pInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v13    # "pOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1246
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 1253
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1254
    .local v0, "it":Ljava/util/Iterator;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1256
    .local v12, "t1":Ljava/util/Set;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1260
    .local v13, "o":Ljava/lang/Object;
    invoke-interface {v9, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1262
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1264
    .end local v13    # "o":Ljava/lang/Object;
    :cond_3
    goto :goto_2

    .line 1265
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1266
    invoke-interface {v3, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1248
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v12    # "t1":Ljava/util/Set;
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1249
    invoke-interface {v3, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1272
    :goto_4
    if-gtz p5, :cond_8

    if-lt v10, v7, :cond_6

    if-eqz p6, :cond_7

    :cond_6
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    .line 1338
    :cond_7
    move-object/from16 v23, v9

    goto/16 :goto_d

    .line 1274
    :cond_8
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1276
    .end local v8    # "e":Ljava/util/Enumeration;
    .local v0, "e":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1278
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v17

    .line 1280
    .local v17, "pInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1282
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v13

    .line 1283
    .local v13, "_apq":Ljava/util/Set;
    add-int/lit8 v8, v10, -0x1

    aget-object v8, v4, v8

    .line 1285
    .local v8, "_nodes":Ljava/util/List;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_f

    .line 1287
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1289
    .local v12, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1290
    .local v18, "_policySetIter":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1292
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 1295
    .local v14, "_tmp":Ljava/lang/Object;
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 1297
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .local v15, "_policy":Ljava/lang/String;
    goto :goto_9

    .line 1299
    .end local v15    # "_policy":Ljava/lang/String;
    :cond_9
    instance-of v15, v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v15, :cond_d

    .line 1301
    move-object v15, v14

    check-cast v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    .line 1308
    .restart local v15    # "_policy":Ljava/lang/String;
    :goto_9
    const/16 v19, 0x0

    .line 1309
    .local v19, "_found":Z
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v20

    .line 1311
    .local v20, "_childrenIter":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1313
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1315
    .local v21, "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v22, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .local v22, "e":Ljava/util/Enumeration;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1317
    const/4 v0, 0x1

    move/from16 v19, v0

    .line 1319
    .end local v21    # "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_a
    move-object/from16 v0, v22

    goto :goto_a

    .line 1321
    .end local v22    # "e":Ljava/util/Enumeration;
    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_b
    move-object/from16 v22, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .restart local v22    # "e":Ljava/util/Enumeration;
    if-nez v19, :cond_c

    .line 1323
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1324
    .local v0, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1326
    move-object/from16 v21, v8

    .end local v8    # "_nodes":Ljava/util/List;
    .local v21, "_nodes":Ljava/util/List;
    new-instance v8, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v23, v9

    .end local v9    # "pols":Ljava/util/Set;
    .local v23, "pols":Ljava/util/Set;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v14

    move-object v14, v15

    .end local v15    # "_policy":Ljava/lang/String;
    .local v14, "_policy":Ljava/lang/String;
    .local v24, "_tmp":Ljava/lang/Object;
    const/4 v15, 0x0

    move/from16 v25, v11

    move-object v11, v0

    move/from16 v0, v25

    .local v0, "k":I
    .local v11, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-direct/range {v8 .. v15}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1328
    .local v8, "_newChild":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12, v8}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1329
    aget-object v9, v4, v10

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1321
    .end local v0    # "k":I
    .end local v21    # "_nodes":Ljava/util/List;
    .end local v23    # "pols":Ljava/util/Set;
    .end local v24    # "_tmp":Ljava/lang/Object;
    .local v8, "_nodes":Ljava/util/List;
    .restart local v9    # "pols":Ljava/util/Set;
    .local v11, "k":I
    .local v14, "_tmp":Ljava/lang/Object;
    .restart local v15    # "_policy":Ljava/lang/String;
    :cond_c
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move v0, v11

    move-object/from16 v24, v14

    move-object v14, v15

    .line 1331
    .end local v8    # "_nodes":Ljava/util/List;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v11    # "k":I
    .end local v14    # "_tmp":Ljava/lang/Object;
    .end local v15    # "_policy":Ljava/lang/String;
    .end local v19    # "_found":Z
    .end local v20    # "_childrenIter":Ljava/util/Iterator;
    .restart local v0    # "k":I
    .restart local v21    # "_nodes":Ljava/util/List;
    .restart local v23    # "pols":Ljava/util/Set;
    :goto_b
    move v11, v0

    move-object/from16 v8, v21

    move-object/from16 v0, v22

    move-object/from16 v9, v23

    goto :goto_8

    .line 1299
    .end local v21    # "_nodes":Ljava/util/List;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "pols":Ljava/util/Set;
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v8    # "_nodes":Ljava/util/List;
    .restart local v9    # "pols":Ljava/util/Set;
    .restart local v11    # "k":I
    .restart local v14    # "_tmp":Ljava/lang/Object;
    :cond_d
    move-object/from16 v22, v0

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move v0, v11

    move-object/from16 v24, v14

    .end local v8    # "_nodes":Ljava/util/List;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v11    # "k":I
    .end local v14    # "_tmp":Ljava/lang/Object;
    .local v0, "k":I
    .restart local v21    # "_nodes":Ljava/util/List;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "pols":Ljava/util/Set;
    .restart local v24    # "_tmp":Ljava/lang/Object;
    move-object/from16 v0, v22

    goto/16 :goto_8

    .line 1290
    .end local v21    # "_nodes":Ljava/util/List;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "pols":Ljava/util/Set;
    .end local v24    # "_tmp":Ljava/lang/Object;
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v8    # "_nodes":Ljava/util/List;
    .restart local v9    # "pols":Ljava/util/Set;
    .restart local v11    # "k":I
    :cond_e
    move-object/from16 v22, v0

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move v0, v11

    .line 1285
    .end local v8    # "_nodes":Ljava/util/List;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v11    # "k":I
    .end local v12    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v18    # "_policySetIter":Ljava/util/Iterator;
    .local v0, "k":I
    .restart local v21    # "_nodes":Ljava/util/List;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "pols":Ljava/util/Set;
    add-int/lit8 v11, v0, 0x1

    move-object/from16 v0, v22

    .end local v0    # "k":I
    .restart local v11    # "k":I
    goto/16 :goto_7

    .end local v21    # "_nodes":Ljava/util/List;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "pols":Ljava/util/Set;
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v8    # "_nodes":Ljava/util/List;
    .restart local v9    # "pols":Ljava/util/Set;
    :cond_f
    move-object/from16 v22, v0

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move v0, v11

    .line 1333
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v8    # "_nodes":Ljava/util/List;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v11    # "k":I
    .restart local v21    # "_nodes":Ljava/util/List;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "pols":Ljava/util/Set;
    goto :goto_c

    .line 1280
    .end local v13    # "_apq":Ljava/util/Set;
    .end local v21    # "_nodes":Ljava/util/List;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "pols":Ljava/util/Set;
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v9    # "pols":Ljava/util/Set;
    :cond_10
    move-object/from16 v22, v0

    move-object/from16 v23, v9

    .line 1335
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v17    # "pInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "pols":Ljava/util/Set;
    goto/16 :goto_6

    .line 1276
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "pols":Ljava/util/Set;
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v9    # "pols":Ljava/util/Set;
    :cond_11
    move-object/from16 v22, v0

    move-object/from16 v23, v9

    .line 1338
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v9    # "pols":Ljava/util/Set;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "pols":Ljava/util/Set;
    :goto_c
    move-object/from16 v8, v22

    .end local v22    # "e":Ljava/util/Enumeration;
    .local v8, "e":Ljava/util/Enumeration;
    :goto_d
    move-object/from16 v0, p3

    .line 1342
    .local v0, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v9, v10, -0x1

    .local v9, "j":I
    :goto_e
    if-ltz v9, :cond_14

    .line 1344
    aget-object v11, v4, v9

    .line 1346
    .local v11, "nodes":Ljava/util/List;
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_13

    .line 1348
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1349
    .local v13, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v14

    if-nez v14, :cond_12

    .line 1351
    invoke-static {v0, v4, v13}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 1353
    if-nez v0, :cond_12

    .line 1355
    goto :goto_10

    .line 1346
    .end local v13    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 1342
    .end local v11    # "nodes":Ljava/util/List;
    .end local v12    # "k":I
    :cond_13
    :goto_10
    add-int/lit8 v9, v9, -0x1

    goto :goto_e

    .line 1364
    .end local v9    # "j":I
    :cond_14
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v9

    .line 1366
    .local v9, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v9, :cond_15

    .line 1368
    sget-object v11, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 1370
    .local v11, "critical":Z
    aget-object v12, v4, v10

    .line 1371
    .local v12, "nodes":Ljava/util/List;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_11
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_15

    .line 1373
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1374
    .local v14, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v14, v11}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1371
    .end local v14    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 1377
    .end local v11    # "critical":Z
    .end local v12    # "nodes":Ljava/util/List;
    .end local v13    # "j":I
    :cond_15
    return-object v0

    .line 1379
    .end local v0    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v9    # "criticalExtensionOids":Ljava/util/Set;
    .end local v23    # "pols":Ljava/util/Set;
    :cond_16
    const/4 v0, 0x0

    return-object v0

    .line 1204
    .end local v16    # "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v8, "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v0

    .line 1206
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v9, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Could not read certificate policies extension from certificate."

    invoke-direct {v9, v11, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9
.end method

.method protected static blacklist processCertE(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1052
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1053
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1057
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1060
    .local v2, "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    .end local v2    # "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v3, "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1068
    if-nez v3, :cond_0

    .line 1070
    const/4 p2, 0x0

    .line 1072
    :cond_0
    return-object p2

    .line 1063
    .end local v3    # "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v2    # "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v3

    .line 1065
    .local v3, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist processCertF(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p3, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1039
    if-gtz p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1044
    :cond_1
    :goto_0
    return-void
.end method

.method protected static blacklist wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .locals 1
    .param p0, "explicitPolicy"    # I
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 2256
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2258
    add-int/lit8 p0, p0, -0x1

    .line 2260
    :cond_0
    return p0
.end method

.method protected static blacklist wrapupCertB(Ljava/security/cert/CertPath;II)I
    .locals 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2269
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2270
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2275
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2278
    .local v2, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2284
    .end local v2    # "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v3, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 2285
    if-eqz v3, :cond_1

    .line 2287
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 2289
    .local v2, "policyConstraints":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2291
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 2292
    .local v4, "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 2297
    :pswitch_0
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2304
    .local v6, "tmpInt":I
    nop

    .line 2305
    if-nez v6, :cond_0

    .line 2307
    return v5

    .line 2299
    .end local v6    # "tmpInt":I
    :catch_0
    move-exception v5

    .line 2301
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 2311
    .end local v4    # "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    goto :goto_0

    .line 2313
    .end local v2    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    return p2

    .line 2281
    .end local v3    # "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v2, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v3

    .line 2283
    .local v3, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected static blacklist wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "pathCheckers"    # Ljava/util/List;
    .param p3, "criticalExtensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2323
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2324
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2326
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2327
    .local v2, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2331
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v3, v1, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    goto :goto_0

    .line 2337
    :catch_0
    move-exception v3

    .line 2339
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v3, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2333
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 2335
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2343
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2348
    return-void

    .line 2345
    :cond_1
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate has unsupported critical extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
.end method

.method protected static blacklist wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 13
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "userInitialPolicySet"    # Ljava/util/Set;
    .param p3, "index"    # I
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p6, "acceptablePolicies"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2360
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2369
    .local v2, "n":I
    const/4 v3, 0x0

    const-string v4, "Explicit policy requested but none available."

    if-nez p5, :cond_1

    .line 2371
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2376
    const/4 v3, 0x0

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    .local v3, "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_c

    .line 2373
    .end local v3    # "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v5, v4, v3, p0, v0}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 2378
    :cond_1
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v5

    const-string v6, "2.5.29.32.0"

    if-eqz v5, :cond_c

    .line 2381
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2383
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2390
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2392
    .local v3, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 2394
    aget-object v5, v1, v4

    .line 2396
    .local v5, "_nodeDepth":Ljava/util/List;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 2398
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2400
    .local v8, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2402
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v9

    .line 2403
    .local v9, "_iter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2405
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2396
    .end local v8    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_iter":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2392
    .end local v5    # "_nodeDepth":Ljava/util/List;
    .end local v7    # "k":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2411
    .end local v4    # "j":I
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2412
    .local v4, "_vpnsIter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2414
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2415
    .local v5, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    .line 2417
    .local v6, "_validPolicy":Ljava/lang/String;
    move-object/from16 v7, p6

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2423
    .end local v5    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_validPolicy":Ljava/lang/String;
    goto :goto_3

    .line 2424
    :cond_5
    move-object/from16 v7, p6

    if-eqz p5, :cond_a

    .line 2426
    add-int/lit8 v5, v2, -0x1

    move v6, v5

    move-object/from16 v5, p5

    .end local p5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v5, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v6, "j":I
    :goto_4
    if-ltz v6, :cond_b

    .line 2428
    aget-object v8, v1, v6

    .line 2430
    .local v8, "nodes":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 2432
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2433
    .local v10, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v11

    if-nez v11, :cond_6

    .line 2435
    invoke-static {v5, v1, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 2430
    .end local v10    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2426
    .end local v8    # "nodes":Ljava/util/List;
    .end local v9    # "k":I
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 2385
    .end local v3    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v4    # "_vpnsIter":Ljava/util/Iterator;
    .end local v5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "j":I
    .restart local p5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_8
    move-object/from16 v7, p6

    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v5, v4, v3, p0, v0}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 2381
    :cond_9
    move-object/from16 v7, p6

    .line 2444
    :cond_a
    move-object/from16 v5, p5

    .end local p5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    move-object v3, v5

    .local v3, "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_c

    .line 2461
    .end local v3    # "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local p5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    move-object/from16 v7, p6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2463
    .local v3, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    array-length v5, v1

    if-ge v4, v5, :cond_10

    .line 2465
    aget-object v5, v1, v4

    .line 2467
    .local v5, "_nodeDepth":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 2469
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2471
    .local v9, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2473
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v10

    .line 2474
    .local v10, "_iter":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2476
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2477
    .local v11, "_c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 2479
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2481
    .end local v11    # "_c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_d
    goto :goto_8

    .line 2467
    .end local v9    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "_iter":Ljava/util/Iterator;
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 2463
    .end local v5    # "_nodeDepth":Ljava/util/List;
    .end local v8    # "k":I
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2489
    .end local v4    # "j":I
    :cond_10
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v5, p5

    .line 2490
    .end local p5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v4, "_vpnsIter":Ljava/util/Iterator;
    .local v5, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2492
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2493
    .local v6, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    .line 2495
    .local v8, "_validPolicy":Ljava/lang/String;
    invoke-interface {p2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 2497
    invoke-static {v5, v1, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 2499
    .end local v6    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_validPolicy":Ljava/lang/String;
    :cond_11
    goto :goto_9

    .line 2504
    :cond_12
    if-eqz v5, :cond_15

    .line 2506
    add-int/lit8 v6, v2, -0x1

    .local v6, "j":I
    :goto_a
    if-ltz v6, :cond_15

    .line 2508
    aget-object v8, v1, v6

    .line 2510
    .local v8, "nodes":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_14

    .line 2512
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2513
    .local v10, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v11

    if-nez v11, :cond_13

    .line 2515
    invoke-static {v5, v1, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 2510
    .end local v10    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 2506
    .end local v8    # "nodes":Ljava/util/List;
    .end local v9    # "k":I
    :cond_14
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    .line 2522
    .end local v6    # "j":I
    :cond_15
    move-object v6, v5

    move-object v3, v6

    .line 2524
    .end local v4    # "_vpnsIter":Ljava/util/Iterator;
    .local v3, "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_c
    return-object v3
.end method

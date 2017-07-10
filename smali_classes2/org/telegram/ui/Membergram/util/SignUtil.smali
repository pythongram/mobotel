.class public Lorg/telegram/ui/Membergram/util/SignUtil;
.super Ljava/lang/Object;
.source "SignUtil.java"


# static fields
.field public static final B:Ljava/lang/String; = "B"

.field private static SIGN:Ljava/lang/String; = null

.field public static final Y:Ljava/lang/String; = "Y"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "72:C7:21:85:66:D8:41:05:0A:7A:9F:87:F3:49:A2:AF"

    sput-object v0, Lorg/telegram/ui/Membergram/util/SignUtil;->SIGN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private AppSignList(Landroid/content/Context;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 64
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v11, 0x40

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 66
    .local v4, "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_46

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 67
    .local v3, "p":Landroid/content/pm/PackageInfo;
    iget-object v11, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "strName":Ljava/lang/String;
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 72
    .local v9, "strVendor":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 73
    .local v0, "arrSignatures":[Landroid/content/pm/Signature;
    array-length v13, v0

    const/4 v11, 0x0

    :goto_2a
    if-ge v11, v13, :cond_e

    aget-object v7, v0, v11

    .line 77
    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    .line 78
    .local v6, "rawCert":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    .local v2, "certStream":Ljava/io/InputStream;
    :try_start_37
    const-string v14, "X509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 84
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;
    :try_end_43
    .catch Ljava/security/cert/CertificateException; {:try_start_37 .. :try_end_43} :catch_47

    .line 73
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_43
    add-int/lit8 v11, v11, 0x1

    goto :goto_2a

    .line 96
    .end local v0    # "arrSignatures":[Landroid/content/pm/Signature;
    .end local v2    # "certStream":Ljava/io/InputStream;
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    .end local v6    # "rawCert":[B
    .end local v7    # "sig":Landroid/content/pm/Signature;
    .end local v8    # "strName":Ljava/lang/String;
    .end local v9    # "strVendor":Ljava/lang/String;
    :cond_46
    return-void

    .line 91
    .restart local v0    # "arrSignatures":[Landroid/content/pm/Signature;
    .restart local v2    # "certStream":Ljava/io/InputStream;
    .restart local v3    # "p":Landroid/content/pm/PackageInfo;
    .restart local v6    # "rawCert":[B
    .restart local v7    # "sig":Landroid/content/pm/Signature;
    .restart local v8    # "strName":Ljava/lang/String;
    .restart local v9    # "strVendor":Ljava/lang/String;
    :catch_47
    move-exception v14

    goto :goto_43
.end method

.method public static TraceSign(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 29
    new-array v3, v4, [Landroid/content/pm/Signature;

    .line 31
    .local v3, "sigs":[Landroid/content/pm/Signature;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 32
    array-length v5, v3

    :goto_14
    if-ge v4, v5, :cond_41

    aget-object v2, v3, v4

    .line 35
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    const-string v7, "MD5"

    invoke-static {v6, v7}, Lorg/telegram/ui/Membergram/util/SignUtil;->doFingerprint([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "md5Fingerprint":Ljava/lang/String;
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Signature MD5: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_3d

    .line 32
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 38
    .end local v1    # "md5Fingerprint":Ljava/lang/String;
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :catch_3d
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_41
    return-void
.end method

.method protected static doFingerprint([BLjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "certificateBytes"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 46
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 47
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 49
    .local v1, "digest":[B
    const-string v5, ""

    .line 50
    .local v5, "toRet":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    array-length v6, v1

    if-ge v3, v6, :cond_5c

    .line 51
    if-eqz v3, :cond_26

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    :cond_26
    aget-byte v6, v1, v3

    and-int/lit16 v0, v6, 0xff

    .line 54
    .local v0, "b":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "hex":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_48

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    :cond_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 59
    .end local v0    # "b":I
    .end local v2    # "hex":Ljava/lang/String;
    :cond_5c
    return-object v5
.end method

.method private static getSignChecker(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 99
    new-array v2, v3, [Landroid/content/pm/Signature;

    .line 102
    .local v2, "signature":[Landroid/content/pm/Signature;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 103
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    const-string v4, "MD5"

    invoke-static {v3, v4}, Lorg/telegram/ui/Membergram/util/SignUtil;->doFingerprint([BLjava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_33

    move-result-object v1

    .line 110
    .local v1, "md5Fingerprint":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Membergram/util/SignUtil;->SIGN:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 111
    const-string v3, "Y"

    .line 114
    .end local v1    # "md5Fingerprint":Ljava/lang/String;
    :goto_32
    return-object v3

    .line 105
    :catch_33
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const-string v3, "B"

    goto :goto_32

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "md5Fingerprint":Ljava/lang/String;
    :cond_3a
    const-string v3, "B"

    goto :goto_32
.end method

.method public static isSignCorrect(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-static {p0}, Lorg/telegram/ui/Membergram/util/SignUtil;->getSignChecker(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

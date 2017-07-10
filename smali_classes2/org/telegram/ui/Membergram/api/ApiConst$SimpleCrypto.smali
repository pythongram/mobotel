.class public Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;
.super Ljava/lang/Object;
.source "ApiConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Membergram/api/ApiConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleCrypto"
.end annotation


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .registers 5
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 127
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "encrypted"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;->getRawKey([B)[B

    move-result-object v1

    .line 67
    .local v1, "rawKey":[B
    invoke-static {p1}, Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 68
    .local v0, "enc":[B
    invoke-static {v1, v0}, Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;->decrypt([B[B)[B

    move-result-object v2

    .line 69
    .local v2, "result":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method private static decrypt([B[B)[B
    .registers 6
    .param p0, "raw"    # [B
    .param p1, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 92
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 93
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 94
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 95
    .local v1, "decrypted":[B
    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "cleartext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;->getRawKey([B)[B

    move-result-object v0

    .line 61
    .local v0, "rawKey":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;->encrypt([B[B)[B

    move-result-object v1

    .line 62
    .local v1, "result":[B
    invoke-static {v1}, Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static encrypt([B[B)[B
    .registers 6
    .param p0, "raw"    # [B
    .param p1, "clear"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 84
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 85
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 86
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 87
    .local v1, "encrypted":[B
    return-object v1
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static getRawKey([B)[B
    .registers 7
    .param p0, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 74
    .local v0, "kgen":Ljavax/crypto/KeyGenerator;
    const-string v4, "SHA1PRNG"

    const-string v5, "Crypto"

    invoke-static {v4, v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 75
    .local v3, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 76
    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 77
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 78
    .local v2, "skey":Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 79
    .local v1, "raw":[B
    return-object v1
.end method

.method public static toByte(Ljava/lang/String;)[B
    .registers 6
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 108
    .local v1, "len":I
    new-array v2, v1, [B

    .line 109
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_24

    .line 110
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 111
    :cond_24
    return-object v2
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 4
    .param p0, "buf"    # [B

    .prologue
    .line 115
    if-nez p0, :cond_5

    .line 116
    const-string v2, ""

    .line 121
    :goto_4
    return-object v2

    .line 117
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 118
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 119
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/Membergram/api/ApiConst$SimpleCrypto;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 121
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

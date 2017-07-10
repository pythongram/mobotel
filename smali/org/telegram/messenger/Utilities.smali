.class public Lorg/telegram/messenger/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static volatile globalQueue:Lorg/telegram/messenger/DispatchQueue;

.field protected static final hexArray:[C

.field public static pattern:Ljava/util/regex/Pattern;

.field public static volatile phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static random:Ljava/security/SecureRandom;

.field public static volatile searchQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static volatile stageQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 31
    const-string v4, "[\\-0-9]+"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    .line 32
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    sput-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    .line 34
    new-instance v4, Lorg/telegram/messenger/DispatchQueue;

    const-string v5, "stageQueue"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 35
    new-instance v4, Lorg/telegram/messenger/DispatchQueue;

    const-string v5, "globalQueue"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 36
    new-instance v4, Lorg/telegram/messenger/DispatchQueue;

    const-string v5, "searchQueue"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 37
    new-instance v4, Lorg/telegram/messenger/DispatchQueue;

    const-string v5, "photoBookQueue"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 39
    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/Utilities;->hexArray:[C

    .line 43
    :try_start_3b
    new-instance v0, Ljava/io/File;

    const-string v4, "/dev/urandom"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "URANDOM_FILE":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 45
    .local v3, "sUrandomIn":Ljava/io/FileInputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 46
    .local v1, "buffer":[B
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 47
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 48
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->setSeed([B)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_56} :catch_57

    .line 52
    .end local v1    # "buffer":[B
    .end local v3    # "sUrandomIn":Ljava/io/FileInputStream;
    :goto_56
    return-void

    .line 49
    :catch_57
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_56
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "md5"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 256
    if-nez p0, :cond_4

    .line 270
    :goto_3
    return-object v5

    .line 260
    :cond_4
    :try_start_4
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 261
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 262
    .local v1, "array":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_18
    array-length v6, v1

    if-ge v0, v6, :cond_31

    .line 264
    aget-byte v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v6, v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 266
    :cond_31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_34} :catch_36

    move-result-object v5

    goto :goto_3

    .line 267
    .end local v0    # "a":I
    .end local v1    # "array":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_36
    move-exception v2

    .line 268
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static native aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZII)V
.end method

.method public static aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V
    .registers 13
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "key"    # [B
    .param p2, "iv"    # [B
    .param p3, "encrypt"    # Z
    .param p4, "changeIv"    # Z
    .param p5, "offset"    # I
    .param p6, "length"    # I

    .prologue
    .line 64
    if-eqz p4, :cond_c

    move-object v2, p2

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZII)V

    .line 65
    return-void

    .line 64
    :cond_c
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v2, v0

    goto :goto_3
.end method

.method public static arraysEquals([BI[BI)Z
    .registers 8
    .param p0, "arr1"    # [B
    .param p1, "offset1"    # I
    .param p2, "arr2"    # [B
    .param p3, "offset2"    # I

    .prologue
    .line 190
    if-eqz p0, :cond_16

    if-eqz p2, :cond_16

    if-ltz p1, :cond_16

    if-ltz p3, :cond_16

    array-length v2, p0

    sub-int/2addr v2, p1

    array-length v3, p2

    sub-int/2addr v3, p3

    if-ne v2, v3, :cond_16

    array-length v2, p0

    sub-int/2addr v2, p1

    if-ltz v2, :cond_16

    array-length v2, p2

    sub-int/2addr v2, p3

    if-gez v2, :cond_18

    .line 191
    :cond_16
    const/4 v1, 0x0

    .line 199
    :cond_17
    return v1

    .line 193
    :cond_18
    const/4 v1, 0x1

    .line 194
    .local v1, "result":Z
    move v0, p1

    .local v0, "a":I
    :goto_1a
    array-length v2, p0

    if-ge v0, v2, :cond_17

    .line 195
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    add-int v3, v0, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_28

    .line 196
    const/4 v1, 0x0

    .line 194
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public static native blurBitmap(Ljava/lang/Object;IIIII)V
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .prologue
    .line 110
    if-nez p0, :cond_5

    .line 111
    const-string v3, ""

    .line 120
    :goto_4
    return-object v3

    .line 113
    :cond_5
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 115
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_b
    array-length v3, p0

    if-ge v1, v3, :cond_2b

    .line 116
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 117
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lorg/telegram/messenger/Utilities;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 118
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lorg/telegram/messenger/Utilities;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 120
    .end local v2    # "v":I
    :cond_2b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_4
.end method

.method public static bytesToLong([B)J
    .registers 9
    .param p0, "bytes"    # [B

    .prologue
    const-wide/16 v6, 0xff

    .line 251
    const/4 v0, 0x7

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static native calcCDT(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
.end method

.method public static computeSHA1(Ljava/nio/ByteBuffer;)[B
    .registers 3
    .param p0, "convertme"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/Utilities;->computeSHA1(Ljava/nio/ByteBuffer;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static computeSHA1(Ljava/nio/ByteBuffer;II)[B
    .registers 8
    .param p0, "convertme"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 215
    .local v3, "oldp":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 217
    .local v2, "oldl":I
    :try_start_8
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 218
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 220
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 221
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_22
    .catchall {:try_start_8 .. :try_end_1a} :catchall_31

    move-result-object v4

    .line 225
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 226
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_21
    return-object v4

    .line 222
    :catch_22
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    :try_start_23
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_31

    .line 225
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 226
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    const/16 v4, 0x14

    new-array v4, v4, [B

    goto :goto_21

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_31
    move-exception v4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 226
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4
.end method

.method public static computeSHA1([B)[B
    .registers 3
    .param p0, "convertme"    # [B

    .prologue
    .line 236
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/Utilities;->computeSHA1([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static computeSHA1([BII)[B
    .registers 6
    .param p0, "convertme"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 204
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 205
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 206
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v2

    .line 210
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_d
    return-object v2

    .line 207
    :catch_e
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 210
    const/16 v2, 0x14

    new-array v2, v2, [B

    goto :goto_d
.end method

.method public static computeSHA256([BII)[B
    .registers 6
    .param p0, "convertme"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 241
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 242
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 243
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v2

    .line 247
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_d
    return-object v2

    .line 244
    :catch_e
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 247
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static native convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .registers 8
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 124
    if-nez p0, :cond_6

    .line 125
    const/4 v0, 0x0

    .line 132
    :cond_5
    return-object v0

    .line 127
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 128
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 129
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_5

    .line 130
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 129
    add-int/lit8 v1, v1, 0x2

    goto :goto_f
.end method

.method public static isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 6
    .param p0, "g_a"    # Ljava/math/BigInteger;
    .param p1, "p"    # Ljava/math/BigInteger;

    .prologue
    const-wide/16 v2, 0x1

    const/4 v0, 0x1

    .line 186
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ne v1, v0, :cond_1d

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static isGoodPrime([BI)Z
    .registers 15
    .param p0, "prime"    # [B
    .param p1, "g"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 136
    if-lt p1, v10, :cond_9

    if-le p1, v11, :cond_a

    .line 182
    :cond_9
    :goto_9
    return v6

    .line 140
    :cond_a
    array-length v7, p0

    const/16 v8, 0x100

    if-ne v7, v8, :cond_9

    aget-byte v7, p0, v6

    if-gez v7, :cond_9

    .line 144
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v5, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 146
    .local v0, "dhBI":Ljava/math/BigInteger;
    if-ne p1, v10, :cond_38

    .line 147
    const-wide/16 v8, 0x8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 148
    .local v3, "res":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    if-ne v7, v11, :cond_9

    .line 176
    .end local v3    # "res":Ljava/math/BigInteger;
    :cond_2a
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "hex":Ljava/lang/String;
    const-string v7, "C71CAEB9C6B1C9048E6C522F70F13F73980D40238E3E21C14934D037563D930F48198A0AA7C14058229493D22530F4DBFA336F6E0AC925139543AED44CCE7C3720FD51F69458705AC68CD4FE6B6B13ABDC9746512969328454F18FAF8C595F642477FE96BB2A941D5BCD1D4AC8CC49880708FA9B378E3C4F3A9060BEE67CF9A4A4A695811051907E162753B56B0F6B410DBA74D8A84B2A14B3144E0EF1284754FD17ED950D5965B4B9DD46582DB1178D169C6BC465B0D6FF9CA3928FEF5B9AE4E418FC15E83EBEA0F87FA9FF5EED70050DED2849F47BF959D956850CE929851F0D8115F635B105EE2E4E15D04B2454BF6F4FADF034B10403119CD8E3B92FCC5B"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    move v6, v5

    .line 178
    goto :goto_9

    .line 151
    .end local v2    # "hex":Ljava/lang/String;
    :cond_38
    if-ne p1, v12, :cond_4b

    .line 152
    const-wide/16 v8, 0x3

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 153
    .restart local v3    # "res":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    if-eq v7, v10, :cond_2a

    goto :goto_9

    .line 156
    .end local v3    # "res":Ljava/math/BigInteger;
    :cond_4b
    const/4 v7, 0x5

    if-ne p1, v7, :cond_62

    .line 157
    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 158
    .restart local v3    # "res":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 159
    .local v4, "val":I
    if-eq v4, v5, :cond_2a

    const/4 v7, 0x4

    if-eq v4, v7, :cond_2a

    goto :goto_9

    .line 162
    .end local v3    # "res":Ljava/math/BigInteger;
    .end local v4    # "val":I
    :cond_62
    const/4 v7, 0x6

    if-ne p1, v7, :cond_7c

    .line 163
    const-wide/16 v8, 0x18

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 164
    .restart local v3    # "res":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 165
    .restart local v4    # "val":I
    const/16 v7, 0x13

    if-eq v4, v7, :cond_2a

    const/16 v7, 0x17

    if-eq v4, v7, :cond_2a

    goto :goto_9

    .line 168
    .end local v3    # "res":Ljava/math/BigInteger;
    .end local v4    # "val":I
    :cond_7c
    if-ne p1, v11, :cond_2a

    .line 169
    const-wide/16 v8, 0x7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 170
    .restart local v3    # "res":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 171
    .restart local v4    # "val":I
    if-eq v4, v12, :cond_2a

    const/4 v7, 0x5

    if-eq v4, v7, :cond_2a

    const/4 v7, 0x6

    if-eq v4, v7, :cond_2a

    goto/16 :goto_9

    .line 181
    .end local v3    # "res":Ljava/math/BigInteger;
    .end local v4    # "val":I
    .restart local v2    # "hex":Ljava/lang/String;
    :cond_96
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 182
    .local v1, "dhBI2":Ljava/math/BigInteger;
    const/16 v7, 0x1e

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v7

    if-eqz v7, :cond_bd

    const/16 v7, 0x1e

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v7

    if-eqz v7, :cond_bd

    :goto_ba
    move v6, v5

    goto/16 :goto_9

    :cond_bd
    move v5, v6

    goto :goto_ba
.end method

.method public static native loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z
.end method

.method public static parseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 68
    if-nez p0, :cond_8

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 81
    :cond_7
    :goto_7
    return-object v3

    .line 71
    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 73
    .local v3, "val":Ljava/lang/Integer;
    :try_start_c
    sget-object v4, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 74
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 75
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "num":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_26

    move-result-object v3

    goto :goto_7

    .line 78
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "num":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static parseIntToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-object v1, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 103
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static parseLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 85
    if-nez p0, :cond_9

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 98
    :cond_8
    :goto_8
    return-object v3

    .line 88
    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 90
    .local v3, "val":Ljava/lang/Long;
    :try_start_d
    sget-object v4, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 91
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 92
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "num":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_27

    move-result-object v3

    goto :goto_8

    .line 95
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "num":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public static native pinBitmap(Landroid/graphics/Bitmap;)I
.end method

.method public static native readlink(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static restartApp()V
    .registers 10

    .prologue
    .line 274
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v2, "mRestartApp":Landroid/content/Intent;
    const v1, 0x1e240

    .line 276
    .local v1, "mPendingIntentId":I
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v5, 0x10000000

    invoke-static {v4, v1, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 277
    .local v0, "mPendingIntent":Landroid/app/PendingIntent;
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 278
    .local v3, "mgr":Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 279
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 280
    return-void
.end method

.method public static native unpinBitmap(Landroid/graphics/Bitmap;)V
.end method

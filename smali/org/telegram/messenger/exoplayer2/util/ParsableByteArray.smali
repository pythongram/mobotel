.class public final Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# instance fields
.field public data:[B

.field private limit:I

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "limit"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 44
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    .line 45
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 54
    array-length v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    .line 55
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 65
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    .line 66
    return-void
.end method


# virtual methods
.method public bytesLeft()I
    .registers 3

    .prologue
    .line 102
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v0, v0

    goto :goto_5
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    return v0
.end method

.method public limit()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    return v0
.end method

.method public peekUnsignedByte()I
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 194
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 195
    return-void
.end method

.method public readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V
    .registers 5
    .param p1, "bitArray"    # Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-virtual {p0, v0, v1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 169
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 170
    return-void
.end method

.method public readBytes([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 183
    return-void
.end method

.method public readDouble()D
    .registers 3

    .prologue
    .line 413
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .registers 5

    .prologue
    .line 292
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    .line 468
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-nez v2, :cond_c

    .line 469
    const/4 v0, 0x0

    .line 494
    :cond_b
    :goto_b
    return-object v0

    .line 471
    :cond_c
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 472
    .local v1, "lineLimit":I
    :goto_e
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    if-ge v1, v2, :cond_21

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    if-eq v2, v5, :cond_21

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    if-eq v2, v6, :cond_21

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 475
    :cond_21
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    sub-int v2, v1, v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_50

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    const/16 v3, -0x11

    if-ne v2, v3, :cond_50

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, -0x45

    if-ne v2, v3, :cond_50

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    const/16 v3, -0x41

    if-ne v2, v3, :cond_50

    .line 478
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 480
    :cond_50
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    sub-int v4, v1, v4

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 481
    .local v0, "line":Ljava/lang/String;
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 482
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    if-eq v2, v3, :cond_b

    .line 485
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    if-ne v2, v6, :cond_79

    .line 486
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 487
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    if-eq v2, v3, :cond_b

    .line 491
    :cond_79
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_b

    .line 492
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    goto :goto_b
.end method

.method public readLittleEndianInt()I
    .registers 5

    .prologue
    .line 302
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianInt24()I
    .registers 5

    .prologue
    .line 254
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianLong()J
    .registers 9

    .prologue
    const-wide/16 v6, 0xff

    .line 326
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readLittleEndianShort()S
    .registers 5

    .prologue
    .line 238
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readLittleEndianUnsignedInt()J
    .registers 9

    .prologue
    const-wide/16 v6, 0xff

    .line 282
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readLittleEndianUnsignedInt24()I
    .registers 5

    .prologue
    .line 263
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public readLittleEndianUnsignedIntToInt()I
    .registers 5

    .prologue
    .line 382
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    .line 383
    .local v0, "result":I
    if-gez v0, :cond_1f

    .line 384
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_1f
    return v0
.end method

.method public readLittleEndianUnsignedShort()I
    .registers 5

    .prologue
    .line 223
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .registers 9

    .prologue
    const-wide/16 v6, 0xff

    .line 312
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readNullTerminatedString(I)Ljava/lang/String;
    .registers 8
    .param p1, "length"    # I

    .prologue
    .line 434
    move v2, p1

    .line 435
    .local v2, "stringLength":I
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v3, p1

    add-int/lit8 v0, v3, -0x1

    .line 436
    .local v0, "lastIndex":I
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    if-ge v0, v3, :cond_12

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_12

    .line 437
    add-int/lit8 v2, v2, -0x1

    .line 439
    :cond_12
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v1, v3, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 440
    .local v1, "result":Ljava/lang/String;
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v3, p1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 441
    return-object v1
.end method

.method public readShort()S
    .registers 5

    .prologue
    .line 230
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .registers 3
    .param p1, "length"    # I

    .prologue
    .line 423
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 452
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 453
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 454
    return-object v0
.end method

.method public readSynchSafeInt()I
    .registers 7

    .prologue
    .line 355
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 356
    .local v0, "b1":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 357
    .local v1, "b2":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 358
    .local v2, "b3":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 359
    .local v3, "b4":I
    shl-int/lit8 v4, v0, 0x15

    shl-int/lit8 v5, v1, 0xe

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x7

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method

.method public readUnsignedByte()I
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedFixedPoint1616()I
    .registers 6

    .prologue
    .line 340
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 342
    .local v0, "result":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 343
    return v0
.end method

.method public readUnsignedInt()J
    .registers 9

    .prologue
    const-wide/16 v6, 0xff

    .line 272
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedInt24()I
    .registers 5

    .prologue
    .line 245
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUnsignedIntToInt()I
    .registers 5

    .prologue
    .line 368
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 369
    .local v0, "result":I
    if-gez v0, :cond_1f

    .line 370
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_1f
    return v0
.end method

.method public readUnsignedLongToLong()J
    .registers 6

    .prologue
    .line 395
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    .line 396
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 397
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top bit not zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_23
    return-wide v0
.end method

.method public readUnsignedShort()I
    .registers 5

    .prologue
    .line 215
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUtf8EncodedLong()J
    .registers 13

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x1

    .line 504
    const/4 v2, 0x0

    .line 505
    .local v2, "length":I
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    aget-byte v6, v6, v7

    int-to-long v4, v6

    .line 507
    .local v4, "value":J
    const/4 v1, 0x7

    .local v1, "j":I
    :goto_b
    if-ltz v1, :cond_21

    .line 508
    shl-int v6, v10, v1

    int-to-long v6, v6

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_41

    .line 509
    if-ge v1, v11, :cond_3c

    .line 510
    shl-int v6, v10, v1

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    and-long/2addr v4, v6

    .line 511
    rsub-int/lit8 v2, v1, 0x7

    .line 518
    :cond_21
    :goto_21
    if-nez v2, :cond_44

    .line 519
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 512
    :cond_3c
    const/4 v6, 0x7

    if-ne v1, v6, :cond_21

    .line 513
    const/4 v2, 0x1

    goto :goto_21

    .line 507
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 521
    :cond_44
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_45
    if-ge v0, v2, :cond_77

    .line 522
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v7, v0

    aget-byte v3, v6, v7

    .line 523
    .local v3, "x":I
    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-eq v6, v7, :cond_6d

    .line 524
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 526
    :cond_6d
    shl-long v6, v4, v11

    and-int/lit8 v8, v3, 0x3f

    int-to-long v8, v8

    or-long v4, v6, v8

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 528
    .end local v3    # "x":I
    :cond_77
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 529
    return-wide v4
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 95
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    .line 96
    return-void
.end method

.method public reset(I)V
    .registers 3
    .param p1, "limit"    # I

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_c

    new-array v0, p1, [B

    :goto_8
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 76
    return-void

    .line 75
    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    goto :goto_8
.end method

.method public reset([BI)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    .line 85
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 86
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 88
    return-void
.end method

.method public setLimit(I)V
    .registers 3
    .param p1, "limit"    # I

    .prologue
    .line 118
    if-ltz p1, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_e

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 119
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    .line 120
    return-void

    .line 118
    :cond_e
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 145
    if-ltz p1, :cond_d

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit:I

    if-gt p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 146
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    .line 147
    return-void

    .line 145
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public skipBytes(I)V
    .registers 3
    .param p1, "bytes"    # I

    .prologue
    .line 157
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 158
    return-void
.end method

.class final Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# static fields
.field private static final STATE_BEGIN_READING:I = 0x0

.field private static final STATE_READ_CONTENTS:I = 0x1

.field private static final VARINT_LENGTH_MASKS:[J


# instance fields
.field private length:I

.field private final scratch:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void

    :array_a
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    .line 48
    return-void
.end method

.method public static assembleVarint([BIZ)J
    .registers 13
    .param p0, "varintBytes"    # [B
    .param p1, "varintLength"    # I
    .param p2, "removeLengthMask"    # Z

    .prologue
    const-wide/16 v8, 0xff

    .line 145
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    int-to-long v4, v1

    and-long v2, v4, v8

    .line 146
    .local v2, "varint":J
    if-eqz p2, :cond_14

    .line 147
    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v4, p1, -0x1

    aget-wide v4, v1, v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    .line 149
    :cond_14
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_15
    if-ge v0, p1, :cond_24

    .line 150
    const/16 v1, 0x8

    shl-long v4, v2, v1

    aget-byte v1, p0, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    or-long v2, v4, v6

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 152
    :cond_24
    return-wide v2
.end method

.method public static parseUnsignedVarintLength(I)I
    .registers 7
    .param p0, "firstByte"    # I

    .prologue
    .line 125
    const/4 v1, -0x1

    .line 126
    .local v1, "varIntLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 127
    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    aget-wide v2, v2, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    .line 128
    add-int/lit8 v1, v0, 0x1

    .line 132
    :cond_15
    return v1

    .line 126
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getLastLength()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    return v0
.end method

.method public readUnsignedVarint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;ZZI)J
    .registers 10
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "allowEndOfInput"    # Z
    .param p3, "removeLengthMask"    # Z
    .param p4, "maximumAllowedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->state:I

    if-nez v1, :cond_2c

    .line 85
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    invoke-interface {p1, v1, v3, v4, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v1

    if-nez v1, :cond_11

    .line 86
    const-wide/16 v2, -0x1

    .line 107
    :goto_10
    return-wide v2

    .line 88
    :cond_11
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    aget-byte v1, v1, v3

    and-int/lit16 v0, v1, 0xff

    .line 89
    .local v0, "firstByte":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    .line 90
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2a

    .line 91
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_2a
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 96
    .end local v0    # "firstByte":I
    :cond_2c
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    if-le v1, p4, :cond_35

    .line 97
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 98
    const-wide/16 v2, -0x2

    goto :goto_10

    .line 101
    :cond_35
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    if-eq v1, v4, :cond_42

    .line 103
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v1, v4, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 106
    :cond_42
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 107
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    invoke-static {v1, v2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v2

    goto :goto_10
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->state:I

    .line 55
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    .line 56
    return-void
.end method

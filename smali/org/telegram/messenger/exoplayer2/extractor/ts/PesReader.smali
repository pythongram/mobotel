.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;


# static fields
.field private static final HEADER_SIZE:I = 0x9

.field private static final MAX_HEADER_EXTENSION_SIZE:I = 0xa

.field private static final PES_SCRATCH_SIZE:I = 0xa

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_BODY:I = 0x3

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_HEADER_EXTENSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PesReader"


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V
    .registers 4
    .param p1, "reader"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 59
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->state:I

    .line 61
    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z
    .registers 8
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    const/4 v1, 0x1

    .line 161
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    sub-int v3, p3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 162
    .local v0, "bytesToRead":I
    if-gtz v0, :cond_10

    .line 170
    :cond_f
    :goto_f
    return v1

    .line 164
    :cond_10
    if-nez p2, :cond_20

    .line 165
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 169
    :goto_15
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 170
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    if-eq v2, p3, :cond_f

    const/4 v1, 0x0

    goto :goto_f

    .line 167
    :cond_20
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    goto :goto_15
.end method

.method private parseHeader()Z
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 176
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 177
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 178
    .local v1, "startCodePrefix":I
    if-eq v1, v3, :cond_2f

    .line 179
    const-string v3, "PesReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start code prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 202
    :goto_2e
    return v2

    .line 184
    :cond_2f
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 185
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 186
    .local v0, "packetLength":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 187
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 188
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 189
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    .line 190
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    .line 193
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 194
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 196
    if-nez v0, :cond_74

    .line 197
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    :goto_72
    move v2, v3

    .line 202
    goto :goto_2e

    .line 199
    :cond_74
    add-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, -0x9

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    goto :goto_72
.end method

.method private parseHeaderExtension()V
    .registers 12

    .prologue
    const/16 v10, 0x1e

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 206
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 207
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 208
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v4, :cond_8d

    .line 209
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 210
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v2, v4, v10

    .line 211
    .local v2, "pts":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 212
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 213
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 214
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 215
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 216
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v4, :cond_85

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v4, :cond_85

    .line 217
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 218
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v10

    .line 219
    .local v0, "dts":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 220
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 221
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 222
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 223
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 229
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 230
    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 232
    .end local v0    # "dts":J
    :cond_85
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timeUs:J

    .line 234
    .end local v2    # "pts":J
    :cond_8d
    return-void
.end method

.method private setState(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 147
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->state:I

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 149
    return-void
.end method


# virtual methods
.method public final consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)V
    .registers 12
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "payloadUnitStartIndicator"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 82
    if-eqz p2, :cond_d

    .line 83
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->state:I

    packed-switch v2, :pswitch_data_d0

    .line 103
    :goto_a
    :pswitch_a
    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->setState(I)V

    .line 106
    :cond_d
    :goto_d
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_ce

    .line 107
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->state:I

    packed-switch v2, :pswitch_data_dc

    goto :goto_d

    .line 109
    :pswitch_19
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_d

    .line 89
    :pswitch_21
    const-string v2, "PesReader"

    const-string v4, "Unexpected start indicator reading extended header"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 96
    :pswitch_29
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v2, v7, :cond_4d

    .line 97
    const-string v2, "PesReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start indicator: expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " more bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_4d
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_a

    .line 112
    :pswitch_53
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    const/16 v4, 0x9

    invoke-direct {p0, p1, v2, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 113
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->parseHeader()Z

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v2, 0x2

    :goto_66
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_d

    :cond_6a
    move v2, v3

    goto :goto_66

    .line 117
    :pswitch_6c
    const/16 v2, 0xa

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 119
    .local v1, "readLength":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 120
    invoke-direct {p0, p1, v2, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 121
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->parseHeaderExtension()V

    .line 122
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timeUs:J

    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    invoke-interface {v2, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JZ)V

    .line 123
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_d

    .line 127
    .end local v1    # "readLength":I
    :pswitch_99
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 128
    .restart local v1    # "readLength":I
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-ne v2, v7, :cond_c9

    move v0, v3

    .line 129
    .local v0, "padding":I
    :goto_a2
    if-lez v0, :cond_ad

    .line 130
    sub-int/2addr v1, v0

    .line 131
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 133
    :cond_ad
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v2, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    .line 134
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v2, v7, :cond_d

    .line 135
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    .line 136
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-nez v2, :cond_d

    .line 137
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 138
    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_d

    .line 128
    .end local v0    # "padding":I
    :cond_c9
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    sub-int v0, v1, v2

    goto :goto_a2

    .line 144
    .end local v1    # "readLength":I
    :cond_ce
    return-void

    .line 83
    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_21
        :pswitch_29
    .end packed-switch

    .line 107
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_19
        :pswitch_53
        :pswitch_6c
        :pswitch_99
    .end packed-switch
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5
    .param p1, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 68
    return-void
.end method

.method public final seek()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->state:I

    .line 75
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    .line 76
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    .line 78
    return-void
.end method

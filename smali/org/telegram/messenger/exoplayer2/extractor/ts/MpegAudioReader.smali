.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final HEADER_SIZE:I = 0x4

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_FRAME:I = 0x2

.field private static final STATE_READING_HEADER:I = 0x1


# instance fields
.field private frameBytesRead:I

.field private frameDurationUs:J

.field private frameSize:I

.field private hasOutputFormat:Z

.field private final header:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

.field private final headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasFF:Z

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 64
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 65
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    .line 66
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    .line 67
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private findHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .registers 12
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 122
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 123
    .local v1, "data":[B
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 124
    .local v5, "startOffset":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 125
    .local v2, "endOffset":I
    move v4, v5

    .local v4, "i":I
    :goto_d
    if-ge v4, v2, :cond_45

    .line 126
    aget-byte v8, v1, v4

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_3e

    move v0, v6

    .line 127
    .local v0, "byteIsFF":Z
    :goto_18
    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v8, :cond_40

    aget-byte v8, v1, v4

    and-int/lit16 v8, v8, 0xe0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_40

    move v3, v6

    .line 128
    .local v3, "found":Z
    :goto_25
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 129
    if-eqz v3, :cond_42

    .line 130
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 132
    iput-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 133
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v7, v7, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v8, v1, v4

    aput-byte v8, v7, v6

    .line 134
    const/4 v7, 0x2

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 135
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 140
    .end local v0    # "byteIsFF":Z
    .end local v3    # "found":Z
    :goto_3d
    return-void

    :cond_3e
    move v0, v7

    .line 126
    goto :goto_18

    .restart local v0    # "byteIsFF":Z
    :cond_40
    move v3, v7

    .line 127
    goto :goto_25

    .line 125
    .restart local v3    # "found":Z
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 139
    .end local v0    # "byteIsFF":Z
    .end local v3    # "found":Z
    :cond_45
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_3d
.end method

.method private readFrameRemainder(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .registers 10
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v6, 0x0

    .line 204
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 205
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 206
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 207
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge v1, v2, :cond_1f

    .line 216
    :goto_1e
    return-void

    .line 212
    :cond_1f
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 213
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    .line 214
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 215
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    goto :goto_1e
.end method

.method private readHeaderRemainder(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .registers 16
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 159
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 160
    .local v11, "bytesToRead":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v0, v1, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 161
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v0, v11

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 162
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_20

    .line 189
    :goto_1f
    return-void

    .line 167
    :cond_20
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 168
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;)Z

    move-result v13

    .line 169
    .local v13, "parsedHeader":Z
    if-nez v13, :cond_3b

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    goto :goto_1f

    .line 176
    :cond_3b
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    .line 177
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v0, :cond_78

    .line 178
    const-wide/32 v0, 0xf4240

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 179
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x1000

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->channels:I

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v12

    .line 182
    .local v12, "format":Lorg/telegram/messenger/exoplayer2/Format;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    .line 186
    .end local v12    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_78
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 187
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 188
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    goto :goto_1f
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .registers 3
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 89
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_18

    .line 90
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_0

    .line 92
    :pswitch_c
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->findHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 95
    :pswitch_10
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->readHeaderRemainder(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 98
    :pswitch_14
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->readFrameRemainder(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 102
    :cond_18
    return-void

    .line 90
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4
    .param p1, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 79
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 80
    return-void
.end method

.method public packetFinished()V
    .registers 1

    .prologue
    .line 107
    return-void
.end method

.method public packetStarted(JZ)V
    .registers 5
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 84
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    .line 85
    return-void
.end method

.method public seek()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 73
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 74
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 75
    return-void
.end method

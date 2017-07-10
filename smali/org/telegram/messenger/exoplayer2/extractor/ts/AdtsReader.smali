.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final CRC_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x5

.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final ID3_IDENTIFIER:[B

.field private static final ID3_SIZE_OFFSET:I = 0x6

.field private static final MATCH_STATE_FF:I = 0x200

.field private static final MATCH_STATE_I:I = 0x300

.field private static final MATCH_STATE_ID:I = 0x400

.field private static final MATCH_STATE_START:I = 0x100

.field private static final MATCH_STATE_VALUE_SHIFT:I = 0x8

.field private static final STATE_FINDING_SAMPLE:I = 0x0

.field private static final STATE_READING_ADTS_HEADER:I = 0x2

.field private static final STATE_READING_ID3_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AdtsReader"


# instance fields
.field private final adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field private bytesRead:I

.field private currentOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private final exposeId3:Z

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private final language:Ljava/lang/String;

.field private matchState:I

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "exposeId3"    # Z

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 6
    .param p1, "exposeId3"    # Z
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 98
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 99
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 100
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    .line 101
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z
    .registers 7
    .param p1, "source"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    .line 166
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    .local v0, "bytesToRead":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 168
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 169
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    if-ne v1, p3, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private findNextSample(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .registers 10
    .param p1, "pesBuffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/16 v7, 0x200

    const/16 v6, 0x100

    .line 224
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 225
    .local v0, "adtsData":[B
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 226
    .local v3, "position":I
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .local v2, "endOffset":I
    move v4, v3

    .line 227
    .end local v3    # "position":I
    .local v4, "position":I
    :goto_f
    if-ge v4, v2, :cond_57

    .line 228
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "position":I
    .restart local v3    # "position":I
    aget-byte v5, v0, v4

    and-int/lit16 v1, v5, 0xff

    .line 229
    .local v1, "data":I
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    if-ne v5, v7, :cond_33

    const/16 v5, 0xf0

    if-lt v1, v5, :cond_33

    const/16 v5, 0xff

    if-eq v1, v5, :cond_33

    .line 230
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_31

    const/4 v5, 0x1

    :goto_28
    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    .line 231
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 232
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 260
    .end local v1    # "data":I
    :goto_30
    return-void

    .line 230
    .restart local v1    # "data":I
    :cond_31
    const/4 v5, 0x0

    goto :goto_28

    .line 235
    :cond_33
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v5, v1

    sparse-switch v5, :sswitch_data_5c

    .line 250
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    if-eq v5, v6, :cond_41

    .line 253
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 254
    add-int/lit8 v3, v3, -0x1

    :cond_41
    :goto_41
    move v4, v3

    .line 258
    .end local v3    # "position":I
    .restart local v4    # "position":I
    goto :goto_f

    .line 237
    .end local v4    # "position":I
    .restart local v3    # "position":I
    :sswitch_43
    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    goto :goto_41

    .line 240
    :sswitch_46
    const/16 v5, 0x300

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    goto :goto_41

    .line 243
    :sswitch_4b
    const/16 v5, 0x400

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    goto :goto_41

    .line 246
    :sswitch_50
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 247
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_30

    .line 259
    .end local v1    # "data":I
    .end local v3    # "position":I
    .restart local v4    # "position":I
    :cond_57
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v3, v4

    .line 260
    .end local v4    # "position":I
    .restart local v3    # "position":I
    goto :goto_30

    .line 235
    :sswitch_data_5c
    .sparse-switch
        0x149 -> :sswitch_46
        0x1ff -> :sswitch_43
        0x344 -> :sswitch_4b
        0x433 -> :sswitch_50
    .end sparse-switch
.end method

.method private parseAdtsHeader()V
    .registers 20

    .prologue
    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 278
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    if-nez v2, :cond_cd

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    .line 280
    .local v13, "audioObjectType":I
    const/4 v2, 0x2

    if-eq v13, v2, :cond_3b

    .line 290
    const-string v2, "AdtsReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but assuming AAC LC."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v13, 0x2

    .line 294
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    .line 295
    .local v18, "sampleRateIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    .line 298
    .local v16, "channelConfig":I
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v13, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v15

    .line 300
    .local v15, "audioSpecificConfig":[B
    invoke-static {v15}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v14

    .line 303
    .local v14, "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    const-string v3, "audio/mp4a-latm"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget-object v8, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 304
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 305
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 303
    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v17

    .line 308
    .local v17, "format":Lorg/telegram/messenger/exoplayer2/Format;
    const-wide/32 v2, 0x3d090000

    move-object/from16 v0, v17

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 310
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->hasOutputFormat:Z

    .line 315
    .end local v13    # "audioObjectType":I
    .end local v14    # "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v15    # "audioSpecificConfig":[B
    .end local v16    # "channelConfig":I
    .end local v17    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .end local v18    # "sampleRateIndex":I
    :goto_a0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v7, v2, -0x5

    .line 317
    .local v7, "sampleSize":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v2, :cond_be

    .line 318
    add-int/lit8 v7, v7, -0x2

    .line 321
    :cond_be
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setReadingSampleState(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;JII)V

    .line 322
    return-void

    .line 312
    .end local v7    # "sampleSize":I
    :cond_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_a0
.end method

.method private parseId3Header()V
    .registers 7

    .prologue
    const/16 v4, 0xa

    .line 266
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 267
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 268
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 269
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    move-object v0, p0

    .line 268
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setReadingSampleState(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;JII)V

    .line 270
    return-void
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .registers 10
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 328
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 329
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 330
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 331
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    if-ne v1, v2, :cond_33

    .line 332
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 333
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 334
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 336
    :cond_33
    return-void
.end method

.method private setFindingSampleState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 177
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 178
    const/16 v0, 0x100

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->matchState:I

    .line 179
    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 215
    return-void
.end method

.method private setReadingId3HeaderState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 187
    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 188
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    .line 189
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 190
    return-void
.end method

.method private setReadingSampleState(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;JII)V
    .registers 8
    .param p1, "outputToUse"    # Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .param p2, "currentSampleDuration"    # J
    .param p4, "priorReadBytes"    # I
    .param p5, "sampleSize"    # I

    .prologue
    .line 202
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->state:I

    .line 203
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->bytesRead:I

    .line 204
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->currentOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 205
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 206
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->sampleSize:I

    .line 207
    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .registers 5
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 128
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_39

    .line 129
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->state:I

    packed-switch v1, :pswitch_data_3a

    goto :goto_0

    .line 131
    :pswitch_c
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->findNextSample(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 134
    :pswitch_10
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0xa

    invoke-direct {p0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_0

    .line 139
    :pswitch_20
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v1, :cond_33

    const/4 v0, 0x7

    .line 140
    .local v0, "targetLength":I
    :goto_25
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_0

    .line 139
    .end local v0    # "targetLength":I
    :cond_33
    const/4 v0, 0x5

    goto :goto_25

    .line 145
    :pswitch_35
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->readSample(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 149
    :cond_39
    return-void

    .line 129
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_20
        :pswitch_35
    .end packed-switch
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 7
    .param p1, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 112
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_26

    .line 113
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const-string v1, "application/id3"

    const/4 v2, -0x1

    invoke-static {v3, v1, v3, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 119
    :goto_25
    return-void

    .line 117
    :cond_26
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    goto :goto_25
.end method

.method public packetFinished()V
    .registers 1

    .prologue
    .line 154
    return-void
.end method

.method public packetStarted(JZ)V
    .registers 5
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 123
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->timeUs:J

    .line 124
    return-void
.end method

.method public seek()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;->setFindingSampleState()V

    .line 107
    return-void
.end method

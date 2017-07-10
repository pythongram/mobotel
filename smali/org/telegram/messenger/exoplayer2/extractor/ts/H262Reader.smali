.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_RATE_VALUES:[D

.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3


# instance fields
.field private final csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

.field private foundFirstFrameInGroup:Z

.field private frameDurationUs:J

.field private framePosition:J

.field private frameTimeUs:J

.field private hasOutputFormat:Z

.field private isKeyframe:Z

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private pesPtsUsAvailable:Z

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private totalBytesWritten:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_a

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_a
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 67
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    .line 68
    return-void
.end method

.method private static parseCsdBuffer(Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;)Landroid/util/Pair;
    .registers 29
    .param p0, "csdBuffer"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    .line 175
    .local v15, "csdData":[B
    const/4 v2, 0x4

    aget-byte v2, v15, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 176
    .local v16, "firstByte":I
    const/4 v2, 0x5

    aget-byte v2, v15, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v25, v0

    .line 177
    .local v25, "secondByte":I
    const/4 v2, 0x6

    aget-byte v2, v15, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v27, v0

    .line 178
    .local v27, "thirdByte":I
    shl-int/lit8 v2, v16, 0x4

    shr-int/lit8 v3, v25, 0x4

    or-int v7, v2, v3

    .line 179
    .local v7, "width":I
    and-int/lit8 v2, v25, 0xf

    shl-int/lit8 v2, v2, 0x8

    or-int v8, v2, v27

    .line 181
    .local v8, "height":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 182
    .local v12, "pixelWidthHeightRatio":F
    const/4 v2, 0x7

    aget-byte v2, v15, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v14, v2, 0x4

    .line 183
    .local v14, "aspectRatioCode":I
    packed-switch v14, :pswitch_data_b8

    .line 198
    :goto_39
    const/4 v2, 0x0

    const-string v3, "video/mpeg2"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    .line 200
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v13, 0x0

    .line 198
    invoke-static/range {v2 .. v13}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v17

    .line 202
    .local v17, "format":Lorg/telegram/messenger/exoplayer2/Format;
    const-wide/16 v18, 0x0

    .line 203
    .local v18, "frameDurationUs":J
    const/4 v2, 0x7

    aget-byte v2, v15, v2

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v22, v2, -0x1

    .line 204
    .local v22, "frameRateCodeMinusOne":I
    if-ltz v22, :cond_91

    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_91

    .line 205
    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    aget-wide v20, v2, v22

    .line 206
    .local v20, "frameRate":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    move/from16 v26, v0

    .line 207
    .local v26, "sequenceExtensionPosition":I
    add-int/lit8 v2, v26, 0x9

    aget-byte v2, v15, v2

    and-int/lit8 v2, v2, 0x60

    shr-int/lit8 v24, v2, 0x5

    .line 208
    .local v24, "frameRateExtensionN":I
    add-int/lit8 v2, v26, 0x9

    aget-byte v2, v15, v2

    and-int/lit8 v23, v2, 0x1f

    .line 209
    .local v23, "frameRateExtensionD":I
    move/from16 v0, v24

    move/from16 v1, v23

    if-eq v0, v1, :cond_87

    .line 210
    move/from16 v0, v24

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    add-int/lit8 v4, v23, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double v20, v20, v2

    .line 212
    :cond_87
    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double v2, v2, v20

    double-to-long v0, v2

    move-wide/from16 v18, v0

    .line 215
    .end local v20    # "frameRate":D
    .end local v23    # "frameRateExtensionD":I
    .end local v24    # "frameRateExtensionN":I
    .end local v26    # "sequenceExtensionPosition":I
    :cond_91
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 185
    .end local v17    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .end local v18    # "frameDurationUs":J
    .end local v22    # "frameRateCodeMinusOne":I
    :pswitch_9c
    mul-int/lit8 v2, v8, 0x4

    int-to-float v2, v2

    mul-int/lit8 v3, v7, 0x3

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 186
    goto :goto_39

    .line 188
    :pswitch_a5
    mul-int/lit8 v2, v8, 0x10

    int-to-float v2, v2

    mul-int/lit8 v3, v7, 0x9

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 189
    goto :goto_39

    .line 191
    :pswitch_ae
    mul-int/lit8 v2, v8, 0x79

    int-to-float v2, v2

    mul-int/lit8 v3, v7, 0x64

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 192
    goto :goto_39

    .line 183
    nop

    :pswitch_data_b8
    .packed-switch 0x2
        :pswitch_9c
        :pswitch_a5
        :pswitch_ae
    .end packed-switch
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .registers 22
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 94
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v13

    .line 95
    .local v13, "offset":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v12

    .line 96
    .local v12, "limit":I
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 99
    .local v10, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 102
    move v15, v13

    .line 104
    .local v15, "searchOffset":I
    :goto_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v10, v15, v12, v3}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v16

    .line 106
    .local v16, "startCodeOffset":I
    move/from16 v0, v16

    if-ne v0, v12, :cond_45

    .line 108
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v3, :cond_44

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v3, v10, v13, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 111
    :cond_44
    return-void

    .line 115
    :cond_45
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v16, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    .line 117
    .local v17, "startCodeValue":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v3, :cond_97

    .line 120
    sub-int v11, v16, v13

    .line 121
    .local v11, "lengthToStartCode":I
    if-lez v11, :cond_64

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v16

    invoke-virtual {v3, v10, v13, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 126
    :cond_64
    if-gez v11, :cond_ea

    neg-int v2, v11

    .line 127
    .local v2, "bytesAlreadyPassed":I
    :goto_67
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->parseCsdBuffer(Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;)Landroid/util/Pair;

    move-result-object v14

    .line 130
    .local v14, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v4, v3}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 131
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->frameDurationUs:J

    .line 132
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 136
    .end local v2    # "bytesAlreadyPassed":I
    .end local v11    # "lengthToStartCode":I
    .end local v14    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/Long;>;"
    :cond_97
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v3, :cond_e4

    const/16 v3, 0xb8

    move/from16 v0, v17

    if-eq v0, v3, :cond_a5

    if-nez v17, :cond_e4

    .line 137
    :cond_a5
    sub-int v8, v12, v16

    .line 138
    .local v8, "bytesWrittenPastStartCode":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    if-eqz v3, :cond_d4

    .line 139
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->isKeyframe:Z

    if-eqz v3, :cond_ed

    const/4 v6, 0x1

    .line 140
    .local v6, "flags":I
    :goto_b4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->framePosition:J

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    long-to-int v3, v4

    sub-int v7, v3, v8

    .line 141
    .local v7, "size":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->frameTimeUs:J

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 142
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->isKeyframe:Z

    .line 144
    .end local v6    # "flags":I
    .end local v7    # "size":I
    :cond_d4
    const/16 v3, 0xb8

    move/from16 v0, v17

    if-ne v0, v3, :cond_ef

    .line 145
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 146
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->isKeyframe:Z

    .line 155
    .end local v8    # "bytesWrittenPastStartCode":I
    :cond_e4
    :goto_e4
    move/from16 v13, v16

    .line 156
    add-int/lit8 v15, v13, 0x3

    .line 157
    goto/16 :goto_2b

    .line 126
    .restart local v11    # "lengthToStartCode":I
    :cond_ea
    const/4 v2, 0x0

    goto/16 :goto_67

    .line 139
    .end local v11    # "lengthToStartCode":I
    .restart local v8    # "bytesWrittenPastStartCode":I
    :cond_ed
    const/4 v6, 0x0

    goto :goto_b4

    .line 148
    :cond_ef
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    if-eqz v3, :cond_115

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesTimeUs:J

    :goto_f9
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->frameTimeUs:J

    .line 149
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v0, v8

    move-wide/from16 v18, v0

    sub-long v4, v4, v18

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->framePosition:J

    .line 150
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    .line 151
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    goto :goto_e4

    .line 148
    :cond_115
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->frameTimeUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->frameDurationUs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    goto :goto_f9
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4
    .param p1, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 81
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 82
    return-void
.end method

.method public packetFinished()V
    .registers 1

    .prologue
    .line 163
    return-void
.end method

.method public packetStarted(JZ)V
    .registers 7
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 86
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    .line 87
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    if-eqz v0, :cond_12

    .line 88
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesTimeUs:J

    .line 90
    :cond_12
    return-void

    .line 86
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public seek()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->csdBuffer:Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 74
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->pesPtsUsAvailable:Z

    .line 75
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 77
    return-void
.end method

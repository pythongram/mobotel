.class final Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# static fields
.field private static final DISPLAY_UNIT_PIXELS:I


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

.field public encryptionKeyId:[B

.field public flagDefault:Z

.field public flagForced:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public nalUnitLengthFieldLength:I

.field public number:I

.field public output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field public projectionData:[B

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public type:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 1317
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 1318
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1319
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 1320
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 1321
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1322
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 1326
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 1327
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 1328
    const/16 v0, 0x1f40

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 1329
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 1330
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 1334
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 1335
    const-string v0, "eng"

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$1;

    .prologue
    .line 1300
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1300
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private static parseFourCcVc1Private(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Ljava/util/List;
    .registers 11
    .param p0, "buffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1510
    const/16 v7, 0x10

    :try_start_2
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1511
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    .line 1512
    .local v2, "compression":J
    const-wide/32 v8, 0x31435657

    cmp-long v7, v2, v8

    if-eqz v7, :cond_12

    .line 1513
    const/4 v7, 0x0

    .line 1525
    :goto_11
    return-object v7

    .line 1518
    :cond_12
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    add-int/lit8 v6, v7, 0x14

    .line 1519
    .local v6, "startOffset":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1520
    .local v0, "bufferData":[B
    move v5, v6

    .local v5, "offset":I
    :goto_1b
    array-length v7, v0

    add-int/lit8 v7, v7, -0x4

    if-ge v5, v7, :cond_46

    .line 1521
    aget-byte v7, v0, v5

    if-nez v7, :cond_43

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_43

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v0, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_43

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v0, v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_43

    .line 1524
    array-length v7, v0

    invoke-static {v0, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1525
    .local v4, "initializationData":[B
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_11

    .line 1520
    .end local v4    # "initializationData":[B
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1529
    :cond_46
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v8, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_4e} :catch_4e

    .line 1530
    .end local v0    # "bufferData":[B
    .end local v2    # "compression":J
    .end local v5    # "offset":I
    .end local v6    # "startOffset":I
    :catch_4e
    move-exception v1

    .line 1531
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v7, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v8, "Error parsing FourCC VC1 codec private"

    invoke-direct {v7, v8}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static parseMsAcmCodecPrivate(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .registers 9
    .param p0, "buffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1594
    :try_start_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v1

    .line 1595
    .local v1, "formatTag":I
    if-ne v1, v2, :cond_9

    .line 1602
    :cond_8
    :goto_8
    return v2

    .line 1597
    :cond_9
    const v4, 0xfffe

    if-ne v1, v4, :cond_35

    .line 1598
    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1599
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->access$300()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_33

    .line 1600
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->access$300()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J
    :try_end_2e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2e} :catch_37

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    :cond_33
    move v2, v3

    goto :goto_8

    :cond_35
    move v2, v3

    .line 1602
    goto :goto_8

    .line 1604
    .end local v1    # "formatTag":I
    :catch_37
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v3, "Error parsing MS/ACM codec private"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .registers 12
    .param p0, "codecPrivate"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    .line 1544
    const/4 v8, 0x0

    :try_start_3
    aget-byte v8, p0, v8

    if-eq v8, v10, :cond_18

    .line 1545
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_f} :catch_f

    .line 1581
    :catch_f
    move-exception v0

    .line 1582
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1547
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_18
    const/4 v2, 0x1

    .line 1548
    .local v2, "offset":I
    const/4 v6, 0x0

    .local v6, "vorbisInfoLength":I
    move v3, v2

    .line 1549
    .end local v2    # "offset":I
    .local v3, "offset":I
    :goto_1b
    :try_start_1b
    aget-byte v8, p0, v3

    if-ne v8, v9, :cond_25

    .line 1550
    add-int/lit16 v6, v6, 0xff

    .line 1551
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1b

    .line 1553
    :cond_25
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v8, p0, v3

    add-int/2addr v6, v8

    .line 1555
    const/4 v7, 0x0

    .local v7, "vorbisSkipLength":I
    move v3, v2

    .line 1556
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :goto_2c
    aget-byte v8, p0, v3

    if-ne v8, v9, :cond_36

    .line 1557
    add-int/lit16 v7, v7, 0xff

    .line 1558
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_2c

    .line 1560
    :cond_36
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v8, p0, v3

    add-int/2addr v7, v8

    .line 1562
    aget-byte v8, p0, v2

    const/4 v9, 0x1

    if-eq v8, v9, :cond_48

    .line 1563
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1565
    :cond_48
    new-array v5, v6, [B

    .line 1566
    .local v5, "vorbisInfo":[B
    const/4 v8, 0x0

    invoke-static {p0, v2, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1567
    add-int/2addr v2, v6

    .line 1568
    aget-byte v8, p0, v2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_5c

    .line 1569
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1571
    :cond_5c
    add-int/2addr v2, v7

    .line 1572
    aget-byte v8, p0, v2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_6a

    .line 1573
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v9, "Error parsing vorbis codec private"

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1575
    :cond_6a
    array-length v8, p0

    sub-int/2addr v8, v2

    new-array v4, v8, [B

    .line 1576
    .local v4, "vorbisBooks":[B
    const/4 v8, 0x0

    array-length v9, p0

    sub-int/2addr v9, v2

    invoke-static {p0, v2, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1577
    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1578
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1b .. :try_end_80} :catch_f

    .line 1580
    return-object v1
.end method


# virtual methods
.method public initializeOutput(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;I)V
    .registers 33
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "trackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1346
    const/4 v6, -0x1

    .line 1347
    .local v6, "maxInputSize":I
    const/4 v9, -0x1

    .line 1348
    .local v9, "pcmEncoding":I
    const/4 v10, 0x0

    .line 1349
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_3ec

    :cond_f
    :goto_f
    packed-switch v2, :pswitch_data_456

    .line 1458
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v4, "Unrecognized codec identifier."

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1349
    :sswitch_1a
    const-string v5, "V_VP8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x0

    goto :goto_f

    :sswitch_24
    const-string v5, "V_VP9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_f

    :sswitch_2e
    const-string v5, "V_MPEG2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x2

    goto :goto_f

    :sswitch_38
    const-string v5, "V_MPEG4/ISO/SP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x3

    goto :goto_f

    :sswitch_42
    const-string v5, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x4

    goto :goto_f

    :sswitch_4c
    const-string v5, "V_MPEG4/ISO/AP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x5

    goto :goto_f

    :sswitch_56
    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x6

    goto :goto_f

    :sswitch_60
    const-string v5, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x7

    goto :goto_f

    :sswitch_6a
    const-string v5, "V_MS/VFW/FOURCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x8

    goto :goto_f

    :sswitch_75
    const-string v5, "V_THEORA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x9

    goto :goto_f

    :sswitch_80
    const-string v5, "A_VORBIS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xa

    goto :goto_f

    :sswitch_8b
    const-string v5, "A_OPUS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xb

    goto/16 :goto_f

    :sswitch_97
    const-string v5, "A_AAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xc

    goto/16 :goto_f

    :sswitch_a3
    const-string v5, "A_MPEG/L3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xd

    goto/16 :goto_f

    :sswitch_af
    const-string v5, "A_AC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xe

    goto/16 :goto_f

    :sswitch_bb
    const-string v5, "A_EAC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0xf

    goto/16 :goto_f

    :sswitch_c7
    const-string v5, "A_TRUEHD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x10

    goto/16 :goto_f

    :sswitch_d3
    const-string v5, "A_DTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x11

    goto/16 :goto_f

    :sswitch_df
    const-string v5, "A_DTS/EXPRESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x12

    goto/16 :goto_f

    :sswitch_eb
    const-string v5, "A_DTS/LOSSLESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x13

    goto/16 :goto_f

    :sswitch_f7
    const-string v5, "A_FLAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x14

    goto/16 :goto_f

    :sswitch_103
    const-string v5, "A_MS/ACM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x15

    goto/16 :goto_f

    :sswitch_10f
    const-string v5, "A_PCM/INT/LIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x16

    goto/16 :goto_f

    :sswitch_11b
    const-string v5, "S_TEXT/UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x17

    goto/16 :goto_f

    :sswitch_127
    const-string v5, "S_VOBSUB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x18

    goto/16 :goto_f

    :sswitch_133
    const-string v5, "S_HDMV/PGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x19

    goto/16 :goto_f

    .line 1351
    :pswitch_13f
    const-string v3, "video/x-vnd.on2.vp8"

    .line 1462
    .local v3, "mimeType":Ljava/lang/String;
    :cond_141
    :goto_141
    const/4 v12, 0x0

    .line 1463
    .local v12, "selectionFlags":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    if-eqz v2, :cond_300

    const/4 v2, 0x1

    :goto_149
    or-int/2addr v12, v2

    .line 1464
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v2, :cond_303

    const/4 v2, 0x2

    :goto_151
    or-int/2addr v12, v2

    .line 1467
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_306

    .line 1468
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    invoke-static/range {v2 .. v13}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v28

    .line 1494
    .local v28, "format":Lorg/telegram/messenger/exoplayer2/Format;
    :goto_172
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v28

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 1496
    return-void

    .line 1354
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v12    # "selectionFlags":I
    .end local v28    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :pswitch_18a
    const-string v3, "video/x-vnd.on2.vp9"

    .line 1355
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_141

    .line 1357
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_18d
    const-string v3, "video/mpeg2"

    .line 1358
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_141

    .line 1362
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_190
    const-string v3, "video/mp4v-es"

    .line 1363
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v2, :cond_19a

    const/4 v10, 0x0

    .line 1365
    :goto_199
    goto :goto_141

    .line 1363
    :cond_19a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1364
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto :goto_199

    .line 1367
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_1a3
    const-string v3, "video/avc"

    .line 1368
    .restart local v3    # "mimeType":Ljava/lang/String;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->parse(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/video/AvcConfig;

    move-result-object v27

    .line 1369
    .local v27, "avcConfig":Lorg/telegram/messenger/exoplayer2/video/AvcConfig;
    move-object/from16 v0, v27

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1370
    move-object/from16 v0, v27

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    goto :goto_141

    .line 1373
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v27    # "avcConfig":Lorg/telegram/messenger/exoplayer2/video/AvcConfig;
    :pswitch_1bf
    const-string v3, "video/hevc"

    .line 1374
    .restart local v3    # "mimeType":Ljava/lang/String;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->parse(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/video/HevcConfig;

    move-result-object v29

    .line 1375
    .local v29, "hevcConfig":Lorg/telegram/messenger/exoplayer2/video/HevcConfig;
    move-object/from16 v0, v29

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1376
    move-object/from16 v0, v29

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    goto/16 :goto_141

    .line 1379
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v29    # "hevcConfig":Lorg/telegram/messenger/exoplayer2/video/HevcConfig;
    :pswitch_1dc
    new-instance v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseFourCcVc1Private(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Ljava/util/List;

    move-result-object v10

    .line 1380
    if-nez v10, :cond_1ef

    const-string v3, "video/x-unknown"

    .line 1381
    .restart local v3    # "mimeType":Ljava/lang/String;
    :goto_1ed
    goto/16 :goto_141

    .line 1380
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_1ef
    const-string v3, "video/wvc1"

    goto :goto_1ed

    .line 1385
    :pswitch_1f2
    const-string v3, "video/x-unknown"

    .line 1386
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_141

    .line 1388
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_1f6
    const-string v3, "audio/vorbis"

    .line 1389
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/16 v6, 0x2000

    .line 1390
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v10

    .line 1391
    goto/16 :goto_141

    .line 1393
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_204
    const-string v3, "audio/opus"

    .line 1394
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/16 v6, 0x1680

    .line 1395
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x3

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1396
    .restart local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1397
    const/16 v2, 0x8

    .line 1398
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1397
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1399
    const/16 v2, 0x8

    .line 1400
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1399
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_141

    .line 1403
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_251
    const-string v3, "audio/mp4a-latm"

    .line 1404
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1405
    goto/16 :goto_141

    .line 1407
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_25d
    const-string v3, "audio/mpeg"

    .line 1408
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/16 v6, 0x1000

    .line 1409
    goto/16 :goto_141

    .line 1411
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_263
    const-string v3, "audio/ac3"

    .line 1412
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_141

    .line 1414
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_267
    const-string v3, "audio/eac3"

    .line 1415
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_141

    .line 1417
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_26b
    const-string v3, "audio/true-hd"

    .line 1418
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_141

    .line 1421
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_26f
    const-string v3, "audio/vnd.dts"

    .line 1422
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_141

    .line 1424
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_273
    const-string v3, "audio/vnd.dts.hd"

    .line 1425
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_141

    .line 1427
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_277
    const-string v3, "audio/x-flac"

    .line 1428
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1429
    goto/16 :goto_141

    .line 1431
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_283
    const-string v3, "audio/raw"

    .line 1432
    .restart local v3    # "mimeType":Ljava/lang/String;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v2

    if-nez v2, :cond_29c

    .line 1433
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v4, "Non-PCM MS/ACM is unsupported"

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1435
    :cond_29c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v9

    .line 1436
    if-nez v9, :cond_141

    .line 1437
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported PCM bit depth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1441
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_2c3
    const-string v3, "audio/raw"

    .line 1442
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v9

    .line 1443
    if-nez v9, :cond_141

    .line 1444
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported PCM bit depth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1448
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_2ec
    const-string v3, "application/x-subrip"

    .line 1449
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_141

    .line 1451
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_2f0
    const-string v3, "application/vobsub"

    .line 1452
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1453
    goto/16 :goto_141

    .line 1455
    .end local v3    # "mimeType":Ljava/lang/String;
    :pswitch_2fc
    const-string v3, "application/pgs"

    .line 1456
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto/16 :goto_141

    .line 1463
    .restart local v12    # "selectionFlags":I
    :cond_300
    const/4 v2, 0x0

    goto/16 :goto_149

    .line 1464
    :cond_303
    const/4 v2, 0x0

    goto/16 :goto_151

    .line 1471
    :cond_306
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_394

    .line 1472
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v2, :cond_330

    .line 1473
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_38a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    :goto_31d
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 1474
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_38f

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    :goto_32c
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    .line 1476
    :cond_330
    const/high16 v23, -0x40800000    # -1.0f

    .line 1477
    .local v23, "pixelWidthHeightRatio":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_356

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_356

    .line 1478
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float v23, v2, v4

    .line 1480
    :cond_356
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    move/from16 v19, v0

    const/high16 v20, -0x40800000    # -1.0f

    const/16 v22, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v26, v0

    move-object v14, v3

    move/from16 v17, v6

    move-object/from16 v21, v10

    invoke-static/range {v13 .. v26}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v28

    .line 1483
    .restart local v28    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    goto/16 :goto_172

    .line 1473
    .end local v23    # "pixelWidthHeightRatio":F
    .end local v28    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_38a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    goto :goto_31d

    .line 1474
    :cond_38f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_32c

    .line 1483
    :cond_394
    const-string v2, "application/x-subrip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b8

    .line 1484
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v19, v0

    move-object v14, v3

    move/from16 v17, v12

    invoke-static/range {v13 .. v19}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v28

    .restart local v28    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    goto/16 :goto_172

    .line 1486
    .end local v28    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_3b8
    const-string v2, "application/vobsub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c8

    const-string v2, "application/pgs"

    .line 1487
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e4

    .line 1488
    :cond_3c8
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object/from16 v19, v0

    move-object v14, v3

    move-object/from16 v17, v10

    invoke-static/range {v13 .. v19}, Lorg/telegram/messenger/exoplayer2/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v28

    .restart local v28    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    goto/16 :goto_172

    .line 1491
    .end local v28    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_3e4
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v4, "Unexpected MIME type."

    invoke-direct {v2, v4}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1349
    :sswitch_data_3ec
    .sparse-switch
        -0x7ce7f5de -> :sswitch_4c
        -0x7ce7f3b0 -> :sswitch_38
        -0x76567dc0 -> :sswitch_103
        -0x6a615338 -> :sswitch_c7
        -0x672350af -> :sswitch_80
        -0x585f4fcd -> :sswitch_a3
        -0x51dc40b2 -> :sswitch_6a
        -0x2016c535 -> :sswitch_42
        -0x2016c4e5 -> :sswitch_56
        -0x19552dbd -> :sswitch_127
        -0x1538b2ba -> :sswitch_eb
        0x3c02325 -> :sswitch_97
        0x3c02353 -> :sswitch_af
        0x3c030c5 -> :sswitch_d3
        0x4e86155 -> :sswitch_1a
        0x4e86156 -> :sswitch_24
        0x5e8da3e -> :sswitch_133
        0x1a8350d6 -> :sswitch_75
        0x2056f406 -> :sswitch_df
        0x2b453ce4 -> :sswitch_10f
        0x32fdf009 -> :sswitch_60
        0x54c61e47 -> :sswitch_11b
        0x6bd6c624 -> :sswitch_2e
        0x7446132a -> :sswitch_bb
        0x7446b0a6 -> :sswitch_f7
        0x744ad97d -> :sswitch_8b
    .end sparse-switch

    :pswitch_data_456
    .packed-switch 0x0
        :pswitch_13f
        :pswitch_18a
        :pswitch_18d
        :pswitch_190
        :pswitch_190
        :pswitch_190
        :pswitch_1a3
        :pswitch_1bf
        :pswitch_1dc
        :pswitch_1f2
        :pswitch_1f6
        :pswitch_204
        :pswitch_251
        :pswitch_25d
        :pswitch_263
        :pswitch_267
        :pswitch_26b
        :pswitch_26f
        :pswitch_26f
        :pswitch_273
        :pswitch_277
        :pswitch_283
        :pswitch_2c3
        :pswitch_2ec
        :pswitch_2f0
        :pswitch_2fc
    .end packed-switch
.end method

.class final Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;
.source "HlsMediaChunk.java"


# static fields
.field private static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field private static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field private static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field private static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field private static final UID_SOURCE:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field private static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private adjustedEndTimeUs:J

.field private bytesLoaded:I

.field public final discontinuitySequenceNumber:I

.field private extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field public final hlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final initDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final initDataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field private initLoadCompleted:Z

.field private initSegmentBytesLoaded:I

.field private final isEncrypted:Z

.field private final isMasterTimestampSource:Z

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

.field private final timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->UID_SOURCE:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;IZLorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;[B[B)V
    .registers 27
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "initDataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p4, "hlsUrl"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "segment"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .param p8, "chunkIndex"    # I
    .param p9, "isMasterTimestampSource"    # Z
    .param p10, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    .param p11, "previousChunk"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    .param p12, "encryptionKey"    # [B
    .param p13, "encryptionIv"    # [B

    .prologue
    .line 104
    move-object/from16 v0, p12

    move-object/from16 v1, p13

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->buildDataSource(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[B[B)Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    move-object/from16 v0, p7

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    move-object/from16 v0, p7

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v10, v6

    move-object v2, p0

    move-object v4, p2

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 107
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 108
    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 109
    move/from16 v0, p9

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    .line 110
    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    .line 111
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    .line 113
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    instance-of v2, v2, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->isEncrypted:Z

    .line 114
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 115
    move-object/from16 v0, p7

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    .line 116
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J

    .line 117
    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->UID_SOURCE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    .line 118
    return-void
.end method

.method private static buildDataSource(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[B[B)Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .registers 4
    .param p0, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p1, "encryptionKey"    # [B
    .param p2, "encryptionIv"    # [B

    .prologue
    .line 303
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 306
    .end local p0    # "dataSource":Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    :cond_4
    :goto_4
    return-object p0

    .restart local p0    # "dataSource":Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    :cond_5
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[B[B)V

    move-object p0, v0

    goto :goto_4
.end method

.method private buildExtractor()Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 183
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v8, :cond_16

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    if-ne v8, v9, :cond_16

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-eq v8, v9, :cond_37

    :cond_16
    move v4, v7

    .line 186
    .local v4, "needNewExtractor":Z
    :goto_17
    const/4 v5, 0x1

    .line 187
    .local v5, "usingNewExtractor":Z
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "lastPathSegment":Ljava/lang/String;
    const-string v8, ".aac"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 192
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-direct {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 227
    .local v2, "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :goto_2f
    if-eqz v5, :cond_36

    .line 228
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractorOutput:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-interface {v2, v6}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V

    .line 230
    :cond_36
    return-object v2

    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .end local v3    # "lastPathSegment":Ljava/lang/String;
    .end local v4    # "needNewExtractor":Z
    .end local v5    # "usingNewExtractor":Z
    :cond_37
    move v4, v6

    .line 183
    goto :goto_17

    .line 193
    .restart local v3    # "lastPathSegment":Ljava/lang/String;
    .restart local v4    # "needNewExtractor":Z
    .restart local v5    # "usingNewExtractor":Z
    :cond_39
    const-string v8, ".ac3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_49

    const-string v8, ".ec3"

    .line 194
    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 195
    :cond_49
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-direct {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;-><init>(J)V

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_2f

    .line 196
    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_51
    const-string v8, ".mp3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 197
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-direct {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(J)V

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_2f

    .line 198
    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_61
    const-string v8, ".webvtt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_71

    const-string v8, ".vtt"

    .line 199
    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 200
    :cond_71
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-direct {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_2f

    .line 201
    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_7d
    if-nez v4, :cond_85

    .line 203
    const/4 v5, 0x0

    .line 204
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v2, v6, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_2f

    .line 205
    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_85
    const-string v8, ".mp4"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 206
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-direct {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_2f

    .line 211
    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_95
    const/4 v1, 0x0

    .line 212
    .local v1, "esReaderFactoryFlags":I
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, v6, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 213
    .local v0, "codecs":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bc

    .line 217
    const-string v6, "audio/mp4a-latm"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ae

    .line 218
    or-int/lit8 v1, v1, 0x2

    .line 220
    :cond_ae
    const-string v6, "video/avc"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    .line 221
    or-int/lit8 v1, v1, 0x4

    .line 224
    :cond_bc
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    new-instance v8, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v8, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    invoke-direct {v2, v6, v8, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;Z)V

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto/16 :goto_2f
.end method

.method private loadMedia()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 263
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->isEncrypted:Z

    if-eqz v1, :cond_40

    .line 264
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 265
    .local v8, "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    if-eqz v1, :cond_3e

    move v10, v11

    .line 271
    .local v10, "skipLoadedBytes":Z
    :goto_c
    :try_start_c
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v2, v8, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 272
    invoke-interface {v4, v8}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V

    .line 273
    .local v0, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    if-eqz v10, :cond_22

    .line 274
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_7a

    .line 277
    :cond_22
    const/4 v9, 0x0

    .line 278
    .local v9, "result":I
    :try_start_23
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    if-nez v1, :cond_30

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    if-eqz v1, :cond_30

    .line 279
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->waitUntilInitialized()V

    .line 281
    :cond_30
    :goto_30
    if-nez v9, :cond_4a

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_4a

    .line 282
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_6c

    move-result v9

    goto :goto_30

    .line 265
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .end local v9    # "result":I
    .end local v10    # "skipLoadedBytes":Z
    :cond_3e
    const/4 v10, 0x0

    goto :goto_c

    .line 267
    .end local v8    # "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :cond_40
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v8

    .line 268
    .restart local v8    # "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    const/4 v10, 0x0

    .restart local v10    # "skipLoadedBytes":Z
    goto :goto_c

    .line 284
    .restart local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .restart local v9    # "result":I
    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractorOutput:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .line 285
    .local v6, "adjustedEndTimeUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v1, v6, v2

    if-eqz v1, :cond_58

    .line 286
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_6c

    .line 289
    :cond_58
    :try_start_58
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_7a

    .line 292
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    .line 294
    iput-boolean v11, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    .line 295
    return-void

    .line 289
    .end local v6    # "adjustedEndTimeUs":J
    :catchall_6c
    move-exception v1

    :try_start_6d
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    throw v1
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_7a

    .line 292
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .end local v9    # "result":I
    :catchall_7a
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    throw v1
.end method

.method private maybeLoadInitData()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    if-ne v1, v2, :cond_14

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initLoadCompleted:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    if-nez v1, :cond_15

    .line 254
    :cond_14
    :goto_14
    return-void

    .line 238
    :cond_15
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v6

    .line 240
    .local v6, "initSegmentDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :try_start_1d
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 241
    invoke-interface {v4, v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_64

    .line 243
    .local v0, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    const/4 v7, 0x0

    .line 244
    .local v7, "result":I
    :goto_2d
    if-nez v7, :cond_3b

    :try_start_2f
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_3b

    .line 245
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_53

    move-result v7

    goto :goto_2d

    .line 248
    :cond_3b
    :try_start_3b
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_64

    .line 251
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initLoadCompleted:Z

    goto :goto_14

    .line 248
    :catchall_53
    move-exception v1

    :try_start_54
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v8, v3, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v4, v8

    long-to-int v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    throw v1
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_64

    .line 251
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .end local v7    # "result":I
    :catchall_64
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    throw v1
.end method


# virtual methods
.method public bytesLoaded()J
    .registers 3

    .prologue
    .line 152
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    .line 160
    return-void
.end method

.method public getAdjustedEndTimeUs()J
    .registers 3

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J

    return-wide v0
.end method

.method public getAdjustedStartTimeUs()J
    .registers 5

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getDurationUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .registers 5
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractorOutput:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 128
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eq v0, v2, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->init(IZ)V

    .line 129
    return-void

    .line 128
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isLoadCanceled()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    if-nez v0, :cond_a

    .line 170
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->buildExtractor()Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 172
    :cond_a
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->maybeLoadInitData()V

    .line 173
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_14

    .line 174
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadMedia()V

    .line 176
    :cond_14
    return-void
.end method

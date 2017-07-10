.class public final Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private volatile bytesLoaded:I

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJILorg/telegram/messenger/exoplayer2/Format;)V
    .registers 12
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # I
    .param p11, "sampleFormat"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 54
    iput-object p11, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 55
    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .registers 3

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    .line 72
    return-void
.end method

.method public isLoadCanceled()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v6

    .line 85
    .local v6, "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :try_start_8
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1, v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    .line 86
    .local v4, "length":J
    const-wide/16 v2, -0x1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_18

    .line 87
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v2, v1

    add-long/2addr v4, v2

    .line 89
    :cond_18
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v2, v2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V

    .line 90
    .local v0, "extractorInput":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->getTrackOutput()Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    move-result-object v7

    .line 91
    .local v7, "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    const-wide/16 v2, 0x0

    invoke-virtual {v7, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->formatWithOffset(Lorg/telegram/messenger/exoplayer2/Format;J)V

    .line 93
    const/4 v14, 0x0

    .line 94
    .local v14, "result":I
    :goto_2e
    const/4 v1, -0x1

    if-eq v14, v1, :cond_3f

    .line 95
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    add-int/2addr v1, v14

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    .line 96
    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v14

    goto :goto_2e

    .line 98
    :cond_3f
    iget v11, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    .line 99
    .local v11, "sampleSize":I
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->sampleMetadata(JIII[B)V
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_52

    .line 101
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    .line 104
    return-void

    .line 101
    .end local v0    # "extractorInput":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .end local v4    # "length":J
    .end local v7    # "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    .end local v11    # "sampleSize":I
    .end local v14    # "result":I
    :catchall_52
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v1
.end method

.class public Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$SingleTrackMetadataOutput;


# instance fields
.field private volatile bytesLoaded:I

.field private final chunkCount:I

.field private final extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJIIJLorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer2/Format;)V
    .registers 16
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # I
    .param p11, "chunkCount"    # I
    .param p12, "sampleOffsetUs"    # J
    .param p14, "extractorWrapper"    # Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .param p15, "sampleFormat"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 65
    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 67
    iput p11, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    .line 68
    iput-wide p12, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 69
    iput-object p14, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 70
    iput-object p15, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 71
    return-void
.end method


# virtual methods
.method public final bytesLoaded()J
    .registers 3

    .prologue
    .line 85
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    .line 100
    return-void
.end method

.method public getNextChunkIndex()I
    .registers 3

    .prologue
    .line 75
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->chunkIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isLoadCanceled()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v6

    .line 113
    .local v6, "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :try_start_8
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 114
    invoke-interface {v4, v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V

    .line 115
    .local v0, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    if-nez v1, :cond_2b

    .line 117
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->getTrackOutput()Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    move-result-object v8

    .line 118
    .local v8, "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    invoke-virtual {v8, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->formatWithOffset(Lorg/telegram/messenger/exoplayer2/Format;J)V

    .line 119
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, p0, v8}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->init(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$SingleTrackMetadataOutput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_5c

    .line 123
    .end local v8    # "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    :cond_2b
    const/4 v7, 0x0

    .line 124
    .local v7, "result":I
    :goto_2c
    if-nez v7, :cond_39

    :try_start_2e
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_39

    .line 125
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_4e

    move-result v7

    goto :goto_2c

    .line 128
    :cond_39
    :try_start_39
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_5c

    .line 131
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    .line 134
    return-void

    .line 128
    :catchall_4e
    move-exception v1

    :try_start_4f
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    throw v1
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5c

    .line 131
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .end local v7    # "result":I
    :catchall_5c
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v1
.end method

.method public final seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V
    .registers 2
    .param p1, "seekMap"    # Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .prologue
    .line 93
    return-void
.end method

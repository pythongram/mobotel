.class public abstract Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
.source "DataChunk.java"


# static fields
.field private static final READ_GRANULARITY:I = 0x4000


# instance fields
.field private data:[B

.field private limit:I

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;[B)V
    .registers 22
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "type"    # I
    .param p4, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "data"    # [B

    .prologue
    .line 49
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 51
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    .line 52
    return-void
.end method

.method private maybeExpandData()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    if-nez v0, :cond_b

    .line 115
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    .line 121
    :cond_a
    :goto_a
    return-void

    .line 116
    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    array-length v0, v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    add-int/lit16 v1, v1, 0x4000

    if-ge v0, v1, :cond_a

    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x4000

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    goto :goto_a
.end method


# virtual methods
.method public bytesLoaded()J
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    .line 75
    return-void
.end method

.method protected abstract consume([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataHolder()[B
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    return v0
.end method

.method public final load()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 85
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "bytesRead":I
    :cond_c
    :goto_c
    if-eq v0, v5, :cond_30

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v1, :cond_30

    .line 89
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->maybeExpandData()V

    .line 90
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    const/16 v4, 0x4000

    invoke-interface {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 91
    if-eq v0, v5, :cond_c

    .line 92
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_c

    .line 99
    .end local v0    # "bytesRead":I
    :catchall_29
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v1

    .line 95
    .restart local v0    # "bytesRead":I
    :cond_30
    :try_start_30
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v1, :cond_3b

    .line 96
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->limit:I

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->consume([BI)V
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_29

    .line 99
    :cond_3b
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 101
    return-void
.end method

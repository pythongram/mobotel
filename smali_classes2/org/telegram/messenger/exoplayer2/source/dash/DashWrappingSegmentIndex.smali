.class final Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;


# instance fields
.field private final chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;Ljava/lang/String;)V
    .registers 3
    .param p1, "chunkIndex"    # Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    .line 35
    return-void
.end method


# virtual methods
.method public getDurationUs(IJ)J
    .registers 6
    .param p1, "segmentNum"    # I
    .param p2, "periodDurationUs"    # J

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getFirstSegmentNum()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSegmentNum(J)I
    .registers 4
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSegmentNum(JJ)I
    .registers 6
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v0

    return v0
.end method

.method public getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .registers 8
    .param p1, "segmentNum"    # I

    .prologue
    .line 59
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v2, v2, p1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget v4, v4, p1

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public getTimeUs(I)J
    .registers 4
    .param p1, "segmentNum"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public isExplicit()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

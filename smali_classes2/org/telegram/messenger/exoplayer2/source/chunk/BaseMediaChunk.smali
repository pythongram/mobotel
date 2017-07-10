.class public abstract Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;
.source "BaseMediaChunk.java"


# instance fields
.field private firstSampleIndex:I

.field private trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V
    .registers 11
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # I

    .prologue
    .line 46
    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 48
    return-void
.end method


# virtual methods
.method public final getFirstSampleIndex()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndex:I

    return v0
.end method

.method protected final getTrackOutput()Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    return-object v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;)V
    .registers 3
    .param p1, "trackOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    .line 58
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getWriteIndex()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndex:I

    .line 59
    return-void
.end method

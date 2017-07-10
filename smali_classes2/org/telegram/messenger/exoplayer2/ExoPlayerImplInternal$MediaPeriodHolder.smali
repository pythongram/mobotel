.class final Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodHolder"
.end annotation


# instance fields
.field public hasEnabledTracks:Z

.field public index:I

.field public isLast:Z

.field private final loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

.field public final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

.field private final mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field public needsContinueLoading:Z

.field public next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private periodTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

.field public prepared:Z

.field private final rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

.field public final rendererPositionOffsetUs:J

.field private final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field public final sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

.field public startPositionUs:J

.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

.field private trackSelectionsInfo:Ljava/lang/Object;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/Renderer;[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;JLorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/source/MediaSource;Ljava/lang/Object;IZJ)V
    .registers 14
    .param p1, "renderers"    # [Lorg/telegram/messenger/exoplayer2/Renderer;
    .param p2, "rendererCapabilities"    # [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
    .param p3, "rendererPositionOffsetUs"    # J
    .param p5, "trackSelector"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
    .param p6, "loadControl"    # Lorg/telegram/messenger/exoplayer2/LoadControl;
    .param p7, "mediaSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p8, "periodUid"    # Ljava/lang/Object;
    .param p9, "periodIndex"    # I
    .param p10, "isLastPeriod"    # Z
    .param p11, "startPositionUs"    # J

    .prologue
    .line 1344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1345
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    .line 1346
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    .line 1347
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 1348
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    .line 1349
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    .line 1350
    iput-object p7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .line 1351
    invoke-static {p8}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 1352
    iput p9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 1353
    iput-boolean p10, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    .line 1354
    iput-wide p11, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    .line 1355
    array-length v0, p1

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 1356
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    .line 1357
    invoke-interface {p6}, Lorg/telegram/messenger/exoplayer2/LoadControl;->getAllocator()Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    move-result-object v0

    invoke-interface {p7, p9, v0, p11, p12}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 1359
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    return-object v0
.end method


# virtual methods
.method public getRendererOffset()J
    .registers 5

    .prologue
    .line 1370
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackInfo()Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;
    .registers 5

    .prologue
    .line 1437
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectionsInfo:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;Ljava/lang/Object;)V

    return-object v0
.end method

.method public handlePrepared()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    .line 1385
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 1386
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    .line 1387
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    .line 1388
    return-void
.end method

.method public isFullyBuffered()Z
    .registers 5

    .prologue
    .line 1379
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .line 1380
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 1379
    :goto_15
    return v0

    .line 1380
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public release()V
    .registers 4

    .prologue
    .line 1442
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1447
    :goto_7
    return-void

    .line 1443
    :catch_8
    move-exception v0

    .line 1445
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public selectTracks()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 1391
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Landroid/util/Pair;

    move-result-object v1

    .line 1393
    .local v1, "selectorResult":Landroid/util/Pair;, "Landroid/util/Pair<Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;Ljava/lang/Object;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 1394
    .local v0, "newTrackSelections":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1395
    const/4 v2, 0x0

    .line 1399
    :goto_17
    return v2

    .line 1397
    :cond_18
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 1398
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectionsInfo:Ljava/lang/Object;

    .line 1399
    const/4 v2, 0x1

    goto :goto_17
.end method

.method public setIndex(IZ)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "isLast"    # Z

    .prologue
    .line 1374
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 1375
    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    .line 1376
    return-void
.end method

.method public toPeriodTime(J)J
    .registers 6
    .param p1, "rendererTimeUs"    # J

    .prologue
    .line 1366
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public toRendererTime(J)J
    .registers 6
    .param p1, "periodTimeUs"    # J

    .prologue
    .line 1362
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public updatePeriodTrackSelection(JZ)J
    .registers 7
    .param p1, "positionUs"    # J
    .param p3, "forceRecreateStreams"    # Z

    .prologue
    .line 1403
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public updatePeriodTrackSelection(JZ[Z)J
    .registers 16
    .param p1, "positionUs"    # J
    .param p3, "forceRecreateStreams"    # Z
    .param p4, "streamResetFlags"    # [Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v0, v1, :cond_2d

    .line 1410
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p3, :cond_2b

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    if-nez v1, :cond_24

    const/4 v1, 0x0

    .line 1411
    :goto_12
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 1412
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    .line 1411
    invoke-static {v1, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v8

    :goto_1f
    aput-boolean v1, v2, v0

    .line 1409
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1410
    :cond_24
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 1411
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    goto :goto_12

    :cond_2b
    move v1, v9

    goto :goto_1f

    .line 1416
    :cond_2d
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-object v5, p4

    move-wide v6, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide p1

    .line 1418
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->periodTrackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 1421
    iput-boolean v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    .line 1422
    const/4 v0, 0x0

    :goto_46
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    array-length v1, v1

    if-ge v0, v1, :cond_73

    .line 1423
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v1, v1, v0

    if-eqz v1, :cond_64

    .line 1424
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-eqz v1, :cond_62

    move v1, v8

    :goto_5a
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1425
    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    .line 1422
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_62
    move v1, v9

    .line 1424
    goto :goto_5a

    .line 1427
    :cond_64
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-nez v1, :cond_71

    move v1, v8

    :goto_6d
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_5f

    :cond_71
    move v1, v9

    goto :goto_6d

    .line 1432
    :cond_73
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onTracksSelected([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V

    .line 1433
    return-wide p1
.end method

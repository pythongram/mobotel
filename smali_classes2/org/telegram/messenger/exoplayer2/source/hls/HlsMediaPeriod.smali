.class public final Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
.implements Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingHandler:Landroid/os/Handler;

.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final manifestFetcher:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private final minLoadableRetryCount:I

.field private pendingPrepareCount:I

.field private final playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final preparePositionUs:J

.field private sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private seenFirstTrackSelection:Z

.field private sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;J)V
    .registers 10
    .param p1, "playlistTracker"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventDispatcher"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p5, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p6, "positionUs"    # J

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 70
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 71
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    .line 72
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 73
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    .line 74
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 75
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string v1, "Loader:ManifestFetcher"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->manifestFetcher:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 78
    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->preparePositionUs:J

    .line 79
    return-void
.end method

.method private buildAndPrepareSampleStreamWrappers()V
    .registers 23

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v11

    .line 297
    .local v11, "masterPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    new-instance v13, Ljava/util/ArrayList;

    iget-object v0, v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    .local v13, "selectedVariants":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v9, "definiteVideoVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v8, "definiteAudioOnlyVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_20
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_62

    .line 301
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 302
    .local v16, "variant":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    move/from16 v18, v0

    if-gtz v18, :cond_48

    const-string v18, "avc"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_50

    .line 303
    :cond_48
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_4d
    :goto_4d
    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    .line 304
    :cond_50
    const-string v18, "mp4a"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4d

    .line 305
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 308
    .end local v16    # "variant":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_62
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_11e

    .line 312
    move-object v13, v9

    .line 320
    :cond_69
    :goto_69
    iget-object v5, v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 321
    .local v5, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    iget-object v14, v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    .line 322
    .local v14, "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    .line 323
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 324
    const/4 v6, 0x0

    .line 325
    .local v6, "currentWrapperIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 327
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_131

    const/16 v18, 0x1

    :goto_9f
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 328
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v17, v0

    .line 329
    .local v17, "variants":[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 330
    const/16 v18, 0x0

    iget-object v0, v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v19, v0

    iget-object v0, v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v12

    .line 332
    .local v12, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v18, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "currentWrapperIndex":I
    .local v7, "currentWrapperIndex":I
    aput-object v12, v18, v6

    .line 333
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 334
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 339
    const/4 v10, 0x0

    move v6, v7

    .end local v7    # "currentWrapperIndex":I
    .restart local v6    # "currentWrapperIndex":I
    :goto_df
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_135

    .line 340
    const/16 v19, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 341
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aput-object v18, v20, v21

    const/16 v18, 0x0

    const/16 v21, 0x0

    .line 340
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v12

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v18, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "currentWrapperIndex":I
    .restart local v7    # "currentWrapperIndex":I
    aput-object v12, v18, v6

    .line 343
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 339
    add-int/lit8 v10, v10, 0x1

    move v6, v7

    .end local v7    # "currentWrapperIndex":I
    .restart local v6    # "currentWrapperIndex":I
    goto :goto_df

    .line 313
    .end local v5    # "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .end local v6    # "currentWrapperIndex":I
    .end local v12    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v14    # "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .end local v17    # "variants":[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_11e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_69

    .line 316
    invoke-interface {v13, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_69

    .line 327
    .restart local v5    # "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .restart local v6    # "currentWrapperIndex":I
    .restart local v14    # "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    :cond_131
    const/16 v18, 0x0

    goto/16 :goto_9f

    .line 347
    .restart local v12    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .restart local v17    # "variants":[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_135
    const/4 v10, 0x0

    :goto_136
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_17b

    .line 348
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 349
    .local v15, "url":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    const/16 v18, 0x3

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v12

    .line 351
    iget-object v0, v15, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareSingleTrack(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v18, v0

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "currentWrapperIndex":I
    .restart local v7    # "currentWrapperIndex":I
    aput-object v12, v18, v6

    .line 347
    add-int/lit8 v10, v10, 0x1

    move v6, v7

    .end local v7    # "currentWrapperIndex":I
    .restart local v6    # "currentWrapperIndex":I
    goto :goto_136

    .line 354
    .end local v15    # "url":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_17b
    return-void
.end method

.method private buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .registers 17
    .param p1, "trackType"    # I
    .param p2, "variants"    # [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p3, "muxedAudioFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "muxedCaptionFormat"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 358
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v0

    .line 359
    .local v0, "dataSource":Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    new-instance v4, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {v4, v1, p2, v0, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;)V

    .line 361
    .local v4, "defaultChunkSource":Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->preparePositionUs:J

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move v2, p1

    move-object v3, p0

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(ILorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    return-object v1
.end method

.method private static variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z
    .registers 9
    .param p0, "variant"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 368
    .local v2, "codecs":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 377
    :cond_b
    :goto_b
    return v3

    .line 371
    :cond_c
    const-string v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "codecArray":[Ljava/lang/String;
    array-length v5, v1

    move v4, v3

    :goto_14
    if-ge v4, v5, :cond_b

    aget-object v0, v1, v4

    .line 373
    .local v0, "codec":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 374
    const/4 v3, 0x1

    goto :goto_b

    .line 372
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_14
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 4
    .param p1, "positionUs"    # J

    .prologue
    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public getBufferedPositionUs()J
    .registers 12

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 213
    const-wide v0, 0x7fffffffffffffffL

    .line 214
    .local v0, "bufferedPositionUs":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v9, v8

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v9, :cond_1e

    aget-object v4, v8, v5

    .line 215
    .local v4, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getBufferedPositionUs()J

    move-result-wide v2

    .line 216
    .local v2, "rendererBufferedPositionUs":J
    cmp-long v10, v2, v6

    if-eqz v10, :cond_1b

    .line 217
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 214
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 220
    .end local v2    # "rendererBufferedPositionUs":J
    .end local v4    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_1e
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v0, v8

    if-nez v5, :cond_28

    move-wide v0, v6

    .end local v0    # "bufferedPositionUs":J
    :cond_28
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    if-nez v1, :cond_a

    .line 100
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->manifestFetcher:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 106
    :cond_9
    return-void

    .line 102
    :cond_a
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v3, :cond_9

    aget-object v0, v2, v1

    .line 103
    .local v0, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .prologue
    .line 44
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .registers 3
    .param p1, "sampleStreamWrapper"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    .line 263
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_5

    .line 268
    :goto_4
    return-void

    .line 267
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    goto :goto_4
.end method

.method public onPlaylistChanged()V
    .registers 5

    .prologue
    .line 274
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    if-eqz v1, :cond_a

    .line 275
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 282
    :cond_9
    return-void

    .line 278
    :cond_a
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v3, :cond_9

    aget-object v0, v2, v1

    .line 279
    .local v0, "wrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V
    .registers 7
    .param p1, "url"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "error"    # Ljava/io/IOException;

    .prologue
    .line 286
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_e

    aget-object v0, v2, v1

    .line 287
    .local v0, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 289
    .end local v0    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_e
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    .line 290
    return-void
.end method

.method public onPlaylistRefreshRequired(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .registers 3
    .param p1, "url"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .prologue
    .line 258
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->refreshPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;)V

    .line 259
    return-void
.end method

.method public onPrepared()V
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 236
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    if-lez v8, :cond_a

    .line 254
    :goto_9
    return-void

    .line 240
    :cond_a
    const/4 v2, 0x0

    .line 241
    .local v2, "totalTrackGroupCount":I
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v10, v9

    move v8, v7

    :goto_f
    if-ge v8, v10, :cond_1d

    aget-object v1, v9, v8

    .line 242
    .local v1, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v11

    iget v11, v11, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v2, v11

    .line 241
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 244
    .end local v1    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_1d
    new-array v3, v2, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 245
    .local v3, "trackGroupArray":[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v4, 0x0

    .line 246
    .local v4, "trackGroupIndex":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v9, v8

    :goto_23
    if-ge v7, v9, :cond_45

    aget-object v1, v8, v7

    .line 247
    .restart local v1    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    iget v6, v10, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    .line 248
    .local v6, "wrapperTrackGroupCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    move v5, v4

    .end local v4    # "trackGroupIndex":I
    .local v5, "trackGroupIndex":I
    :goto_2f
    if-ge v0, v6, :cond_41

    .line 249
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "trackGroupIndex":I
    .restart local v4    # "trackGroupIndex":I
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v3, v5

    .line 248
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    .end local v4    # "trackGroupIndex":I
    .restart local v5    # "trackGroupIndex":I
    goto :goto_2f

    .line 246
    :cond_41
    add-int/lit8 v7, v7, 0x1

    move v4, v5

    .end local v5    # "trackGroupIndex":I
    .restart local v4    # "trackGroupIndex":I
    goto :goto_23

    .line 252
    .end local v0    # "j":I
    .end local v1    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v6    # "wrapperTrackGroupCount":I
    :cond_45
    new-instance v7, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v7, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 253
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v7, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    goto :goto_9
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .registers 2
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .line 94
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers()V

    .line 95
    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .prologue
    .line 208
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .registers 5

    .prologue
    .line 82
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->manifestFetcher:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    .line 84
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    if-eqz v1, :cond_1d

    .line 85
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v3, :cond_1d

    aget-object v0, v2, v1

    .line 86
    .local v0, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->release()V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 89
    .end local v0    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_1d
    return-void
.end method

.method public seekToUs(J)J
    .registers 8
    .param p1, "positionUs"    # J

    .prologue
    .line 225
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    .line 226
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_13

    aget-object v0, v2, v1

    .line 227
    .local v0, "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekTo(J)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 229
    .end local v0    # "sampleStreamWrapper":Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_13
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .registers 26
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 117
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v15, v3, [I

    .line 118
    .local v15, "streamChildIndices":[I
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v14, v3, [I

    .line 119
    .local v14, "selectionChildIndices":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v10, v3, :cond_58

    .line 120
    aget-object v3, p3, v10

    if-nez v3, :cond_44

    const/4 v3, -0x1

    .line 121
    :goto_15
    aput v3, v15, v10

    .line 122
    const/4 v3, -0x1

    aput v3, v14, v10

    .line 123
    aget-object v3, p1, v10

    if-eqz v3, :cond_41

    .line 124
    aget-object v3, p1, v10

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v16

    .line 125
    .local v16, "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-ge v11, v3, :cond_41

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_55

    .line 127
    aput v11, v14, v10

    .line 119
    .end local v11    # "j":I
    .end local v16    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_41
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 120
    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v5, p3, v10

    .line 121
    invoke-virtual {v3, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_15

    .line 125
    .restart local v11    # "j":I
    .restart local v16    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_55
    add-int/lit8 v11, v11, 0x1

    goto :goto_25

    .line 133
    .end local v11    # "j":I
    .end local v16    # "trackGroup":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    :cond_58
    const/4 v13, 0x0

    .line 134
    .local v13, "selectedNewTracks":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 136
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v12, v3, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 137
    .local v12, "newStreams":[Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v6, v3, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    .line 138
    .local v6, "childStreams":[Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v4, v3, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    .line 139
    .local v4, "childSelections":[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v9, "enabledSampleStreamWrapperList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;>;"
    const/4 v10, 0x0

    :goto_7a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-ge v10, v3, :cond_100

    .line 142
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_82
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_9e

    .line 143
    aget v3, v15, v11

    if-ne v3, v10, :cond_9a

    aget-object v3, p3, v11

    :goto_8d
    aput-object v3, v6, v11

    .line 144
    aget v3, v14, v11

    if-ne v3, v10, :cond_9c

    aget-object v3, p1, v11

    :goto_95
    aput-object v3, v4, v11

    .line 142
    add-int/lit8 v11, v11, 0x1

    goto :goto_82

    .line 143
    :cond_9a
    const/4 v3, 0x0

    goto :goto_8d

    .line 144
    :cond_9c
    const/4 v3, 0x0

    goto :goto_95

    .line 146
    :cond_9e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v10

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    if-nez v5, :cond_de

    const/4 v8, 0x1

    :goto_ab
    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZZ)Z

    move-result v3

    or-int/2addr v13, v3

    .line 148
    const/16 v17, 0x0

    .line 149
    .local v17, "wrapperEnabled":Z
    const/4 v11, 0x0

    :goto_b7
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v11, v3, :cond_f1

    .line 150
    aget v3, v14, v11

    if-ne v3, v10, :cond_e2

    .line 152
    aget-object v3, v6, v11

    if-eqz v3, :cond_e0

    const/4 v3, 0x1

    :goto_c5
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 153
    aget-object v3, v6, v11

    aput-object v3, v12, v11

    .line 154
    const/16 v17, 0x1

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v5, v6, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_db
    :goto_db
    add-int/lit8 v11, v11, 0x1

    goto :goto_b7

    .line 146
    .end local v17    # "wrapperEnabled":Z
    :cond_de
    const/4 v8, 0x0

    goto :goto_ab

    .line 152
    .restart local v17    # "wrapperEnabled":Z
    :cond_e0
    const/4 v3, 0x0

    goto :goto_c5

    .line 156
    :cond_e2
    aget v3, v15, v11

    if-ne v3, v10, :cond_db

    .line 158
    aget-object v3, v6, v11

    if-nez v3, :cond_ef

    const/4 v3, 0x1

    :goto_eb
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_db

    :cond_ef
    const/4 v3, 0x0

    goto :goto_eb

    .line 161
    :cond_f1
    if-eqz v17, :cond_fc

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v10

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_fc
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7a

    .line 166
    .end local v11    # "j":I
    .end local v17    # "wrapperEnabled":Z
    :cond_100
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v7, v12

    move-object/from16 v0, p3

    invoke-static {v12, v3, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-lez v3, :cond_140

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 177
    const/4 v10, 0x1

    :goto_12c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-ge v10, v3, :cond_140

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v10

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 177
    add-int/lit8 v10, v10, 0x1

    goto :goto_12c

    .line 182
    :cond_140
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-direct {v3, v5}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    .line 183
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz v3, :cond_16c

    if-eqz v13, :cond_16c

    .line 184
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seekToUs(J)J

    .line 186
    const/4 v10, 0x0

    :goto_15d
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v10, v3, :cond_16c

    .line 187
    aget-object v3, p3, v10

    if-eqz v3, :cond_169

    .line 188
    const/4 v3, 0x1

    aput-boolean v3, p4, v10

    .line 186
    :cond_169
    add-int/lit8 v10, v10, 0x1

    goto :goto_15d

    .line 192
    :cond_16c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    .line 193
    return-wide p5
.end method

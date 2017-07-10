.class public Lorg/telegram/ui/Components/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
.implements Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;,
        Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;
    }
.end annotation


# static fields
.field private static final BANDWIDTH_METER:Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

.field private static final RENDERER_BUILDING_STATE_BUILDING:I = 0x2

.field private static final RENDERER_BUILDING_STATE_BUILT:I = 0x3

.field private static final RENDERER_BUILDING_STATE_IDLE:I = 0x1


# instance fields
.field private autoplay:Z

.field private delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

.field private lastReportedPlayWhenReady:Z

.field private lastReportedPlaybackState:I

.field private mainHandler:Landroid/os/Handler;

.field private mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

.field private textureView:Landroid/view/TextureView;

.field private trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoPlayer;->BANDWIDTH_METER:Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/ui/Components/VideoPlayer;->BANDWIDTH_METER:Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    const-string v5, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    sget-object v6, Lorg/telegram/ui/Components/VideoPlayer;->BANDWIDTH_METER:Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 82
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection$Factory;

    sget-object v1, Lorg/telegram/ui/Components/VideoPlayer;->BANDWIDTH_METER:Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;)V

    .line 85
    .local v0, "videoTrackSelectionFactory":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;

    .line 87
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    .line 88
    return-void
.end method

.method private ensurePleyaerCreated()V
    .registers 6

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_2d

    .line 92
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;I)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoListener(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;)V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoplay:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 98
    :cond_2d
    return-void
.end method

.method private maybeReportPlayerState()V
    .registers 4

    .prologue
    .line 297
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    .line 298
    .local v0, "playWhenReady":Z
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    .line 299
    .local v1, "playbackState":I
    iget-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlayWhenReady:Z

    if-ne v2, v0, :cond_14

    iget v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    if-eq v2, v1, :cond_1d

    .line 300
    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v2, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onStateChanged(ZI)V

    .line 301
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlayWhenReady:Z

    .line 302
    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    .line 304
    :cond_1d
    return-void
.end method


# virtual methods
.method public getBufferedPercentage()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getBufferedPosition()J
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getCurrentPosition()J
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public isBuffering()Z
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPlayerPrepared()Z
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onLoadingChanged(Z)V
    .registers 2
    .param p1, "isLoading"    # Z

    .prologue
    .line 249
    return-void
.end method

.method public onPlayerError(Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;)V
    .registers 3
    .param p1, "error"    # Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    .prologue
    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onError(Ljava/lang/Exception;)V

    .line 264
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->maybeReportPlayerState()V

    .line 254
    return-void
.end method

.method public onPositionDiscontinuity()V
    .registers 1

    .prologue
    .line 269
    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onRenderedFirstFrame()V

    .line 284
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    return v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 294
    return-void
.end method

.method public onTimelineChanged(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 3
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 259
    return-void
.end method

.method public onTracksChanged(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3
    .param p1, "trackGroups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 274
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onVideoSizeChanged(IIIF)V

    .line 279
    return-void
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_5

    .line 190
    :goto_4
    return-void

    .line 189
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_4
.end method

.method public play()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_5

    .line 183
    :goto_4
    return-void

    .line 182
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_4
.end method

.method public preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 140
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->ensurePleyaerCreated()V

    .line 142
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_72

    :cond_d
    :goto_d
    packed-switch v1, :pswitch_data_80

    .line 153
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 156
    .local v0, "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :goto_1f
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0, v6, v6}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V

    .line 157
    return-void

    .line 142
    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :sswitch_25
    const-string v2, "dash"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :sswitch_2f
    const-string v2, "hls"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v1, v6

    goto :goto_d

    :sswitch_39
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x2

    goto :goto_d

    .line 144
    :pswitch_43
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 145
    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_1f

    .line 147
    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :pswitch_55
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, v2, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 148
    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_1f

    .line 150
    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :pswitch_5f
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 151
    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_1f

    .line 142
    nop

    :sswitch_data_72
    .sparse-switch
        0xe60 -> :sswitch_39
        0x193ef -> :sswitch_2f
        0x2eef92 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_43
        :pswitch_55
        :pswitch_5f
    .end packed-switch
.end method

.method public preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 16
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "videoType"    # Ljava/lang/String;
    .param p3, "audioUri"    # Landroid/net/Uri;
    .param p4, "audioType"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->ensurePleyaerCreated()V

    .line 102
    const/4 v8, 0x0

    .local v8, "mediaSource1":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    const/4 v9, 0x0

    .line 103
    .local v9, "mediaSource2":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_6
    const/4 v2, 0x2

    if-ge v6, v2, :cond_84

    .line 107
    if-nez v6, :cond_32

    .line 108
    move-object v10, p2

    .line 109
    .local v10, "type":Ljava/lang/String;
    move-object v1, p1

    .line 114
    .local v1, "uri":Landroid/net/Uri;
    :goto_d
    const/4 v2, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_9a

    :cond_15
    :goto_15
    packed-switch v2, :pswitch_data_a8

    .line 125
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 128
    .local v0, "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :goto_27
    new-instance v7, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

    invoke-direct {v7, v0}, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V

    .line 129
    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .local v7, "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    if-nez v6, :cond_82

    .line 130
    move-object v8, v7

    .line 103
    :goto_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 111
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .end local v10    # "type":Ljava/lang/String;
    :cond_32
    move-object v10, p4

    .line 112
    .restart local v10    # "type":Ljava/lang/String;
    move-object v1, p3

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_d

    .line 114
    :sswitch_35
    const-string v3, "dash"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v2, 0x0

    goto :goto_15

    :sswitch_3f
    const-string v3, "hls"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v2, 0x1

    goto :goto_15

    :sswitch_49
    const-string v3, "ss"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v2, 0x2

    goto :goto_15

    .line 116
    :pswitch_53
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 117
    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_27

    .line 119
    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :pswitch_65
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 120
    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_27

    .line 122
    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :pswitch_70
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 123
    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_27

    .line 132
    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .restart local v7    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :cond_82
    move-object v9, v7

    goto :goto_2f

    .line 135
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .end local v10    # "type":Ljava/lang/String;
    :cond_84
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;-><init>([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V

    .line 136
    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v8, v3, v4}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V

    .line 137
    return-void

    .line 114
    :sswitch_data_9a
    .sparse-switch
        0xe60 -> :sswitch_49
        0x193ef -> :sswitch_3f
        0x2eef92 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_53
        :pswitch_65
        :pswitch_70
    .end packed-switch
.end method

.method public releasePlayer()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_c

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->release()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .line 168
    :cond_c
    return-void
.end method

.method public seekTo(J)V
    .registers 4
    .param p1, "positionMs"    # J

    .prologue
    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_5

    .line 224
    :goto_4
    return-void

    .line 223
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_4
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V
    .registers 2
    .param p1, "videoPlayerDelegate"    # Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    .prologue
    .line 227
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    .line 228
    return-void
.end method

.method public setMute(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_5

    .line 217
    :goto_4
    return-void

    .line 212
    :cond_5
    if-eqz p1, :cond_e

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    goto :goto_4

    .line 215
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    goto :goto_4
.end method

.method public setPlayWhenReady(Z)V
    .registers 3
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoplay:Z

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_7

    .line 198
    :goto_6
    return-void

    .line 197
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_6
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .registers 4
    .param p1, "texture"    # Landroid/view/TextureView;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_7

    .line 176
    :goto_6
    return-void

    .line 175
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    goto :goto_6
.end method

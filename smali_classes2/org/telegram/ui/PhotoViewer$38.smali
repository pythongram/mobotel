.class Lorg/telegram/ui/PhotoViewer$38;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 2406
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2456
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2457
    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 3

    .prologue
    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10200(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2474
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$10202(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2475
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 2477
    :cond_17
    return-void
.end method

.method public onStateChanged(ZI)V
    .registers 9
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 2409
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    if-nez v1, :cond_c

    .line 2452
    :goto_b
    return-void

    .line 2412
    :cond_c
    if-eq p2, v3, :cond_72

    if-eq p2, v5, :cond_72

    .line 2414
    :try_start_10
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_6d

    .line 2425
    :goto_1f
    const/4 v1, 0x3

    if-ne p2, v1, :cond_37

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_37

    .line 2426
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 2428
    :cond_37
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_87

    if-eq p2, v3, :cond_87

    .line 2429
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->isPlaying:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 2430
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->isPlaying:Z
    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->access$702(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2431
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$10100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020194

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2432
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2451
    :cond_67
    :goto_67
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->updateVideoPlayerTime()V
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$600(Lorg/telegram/ui/PhotoViewer;)V

    goto :goto_b

    .line 2415
    :catch_6d
    move-exception v0

    .line 2416
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 2420
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_72
    :try_start_72
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_81} :catch_82

    goto :goto_1f

    .line 2421
    :catch_82
    move-exception v0

    .line 2422
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 2434
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_87
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->isPlaying:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 2435
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->isPlaying:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/PhotoViewer;->access$702(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2436
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$10100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020195

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2437
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2438
    if-ne p2, v3, :cond_67

    .line 2439
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v1

    if-nez v1, :cond_67

    .line 2440
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 2441
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2442
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->inPreview:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$200(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-nez v1, :cond_112

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_112

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_112

    .line 2443
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    long-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 2447
    :goto_107
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto/16 :goto_67

    .line 2445
    :cond_112
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_107
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2481
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2487
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 2461
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2462
    const/16 v1, 0x5a

    if-eq p3, v1, :cond_10

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_13

    .line 2463
    :cond_10
    move v0, p1

    .line 2464
    .local v0, "temp":I
    move p1, p2

    .line 2465
    move p2, v0

    .line 2467
    .end local v0    # "temp":I
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$38;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    if-nez p2, :cond_21

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1d
    invoke-virtual {v2, v1, p3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 2469
    :cond_20
    return-void

    .line 2467
    :cond_21
    int-to-float v1, p1

    mul-float/2addr v1, p4

    int-to-float v3, p2

    div-float/2addr v1, v3

    goto :goto_1d
.end method

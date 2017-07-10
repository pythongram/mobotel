.class Lorg/telegram/ui/ArticleViewer$29;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->preparePlayer(Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 5056
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 5102
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5103
    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 3

    .prologue
    .line 5119
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$10300(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 5120
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$10302(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 5121
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5123
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

    .line 5059
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    if-nez v1, :cond_c

    .line 5098
    :goto_b
    return-void

    .line 5062
    :cond_c
    if-eq p2, v3, :cond_72

    if-eq p2, v5, :cond_72

    .line 5064
    :try_start_10
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_6d

    .line 5075
    :goto_1f
    const/4 v1, 0x3

    if-ne p2, v1, :cond_37

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_37

    .line 5076
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 5078
    :cond_37
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_87

    if-eq p2, v3, :cond_87

    .line 5079
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->isPlaying:Z
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4900(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 5080
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->isPlaying:Z
    invoke-static {v1, v5}, Lorg/telegram/ui/ArticleViewer;->access$4902(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 5081
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$10200(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020194

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5082
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$9600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5097
    :cond_67
    :goto_67
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->updateVideoPlayerTime()V
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$9500(Lorg/telegram/ui/ArticleViewer;)V

    goto :goto_b

    .line 5065
    :catch_6d
    move-exception v0

    .line 5066
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 5070
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_72
    :try_start_72
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_81} :catch_82

    goto :goto_1f

    .line 5071
    :catch_82
    move-exception v0

    .line 5072
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 5084
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_87
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->isPlaying:Z
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4900(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 5085
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->isPlaying:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/ArticleViewer;->access$4902(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 5086
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$10200(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020195

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5087
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$9600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 5088
    if-ne p2, v3, :cond_67

    .line 5089
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v1

    if-nez v1, :cond_67

    .line 5090
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 5091
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$9400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5092
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 5093
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_67
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 5127
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 5133
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 5107
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 5108
    const/16 v1, 0x5a

    if-eq p3, v1, :cond_10

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_13

    .line 5109
    :cond_10
    move v0, p1

    .line 5110
    .local v0, "temp":I
    move p1, p2

    .line 5111
    move p2, v0

    .line 5113
    .end local v0    # "temp":I
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$29;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    if-nez p2, :cond_21

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1d
    invoke-virtual {v2, v1, p3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 5115
    :cond_20
    return-void

    .line 5113
    :cond_21
    int-to-float v1, p1

    mul-float/2addr v1, p4

    int-to-float v3, p2

    div-float/2addr v1, v3

    goto :goto_1d
.end method

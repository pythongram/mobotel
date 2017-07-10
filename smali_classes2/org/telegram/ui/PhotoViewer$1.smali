.class Lorg/telegram/ui/PhotoViewer$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
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
    .line 208
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 212
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    long-to-float v1, v2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 214
    .local v0, "progress":F
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->inPreview:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$200(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-nez v1, :cond_ea

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_ea

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ea

    .line 215
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_b2

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

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

    .line 233
    :goto_92
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 234
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->updateVideoPlayerTime()V
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$600(Lorg/telegram/ui/PhotoViewer;)V

    .line 237
    .end local v0    # "progress":F
    :cond_a0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->isPlaying:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 238
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 240
    :cond_b1
    return-void

    .line 220
    .restart local v0    # "progress":F
    :cond_b2
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v1

    sub-float/2addr v0, v1

    .line 221
    cmpg-float v1, v0, v4

    if-gez v1, :cond_c2

    .line 222
    const/4 v0, 0x0

    .line 224
    :cond_c2
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 225
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_e0

    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    .line 228
    :cond_e0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    goto :goto_92

    .line 231
    :cond_ea
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$1;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    goto :goto_92
.end method

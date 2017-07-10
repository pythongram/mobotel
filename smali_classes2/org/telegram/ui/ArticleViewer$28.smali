.class Lorg/telegram/ui/ArticleViewer$28;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
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
    .line 4716
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4719
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 4720
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 4721
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    long-to-float v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 4722
    .local v0, "progress":F
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 4723
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$9400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4724
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->updateVideoPlayerTime()V
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$9500(Lorg/telegram/ui/ArticleViewer;)V

    .line 4727
    .end local v0    # "progress":F
    :cond_4b
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->isPlaying:Z
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4900(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 4728
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$28;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$9600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4730
    :cond_5e
    return-void
.end method

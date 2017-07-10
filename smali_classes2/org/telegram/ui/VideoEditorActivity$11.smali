.class Lorg/telegram/ui/VideoEditorActivity$11;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 793
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftProgressChanged(F)V
    .registers 5
    .param p1, "progress"    # F

    .prologue
    .line 796
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 817
    :cond_10
    :goto_10
    return-void

    .line 800
    :cond_11
    :try_start_11
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 801
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 802
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020293

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_32} :catch_80

    .line 804
    :try_start_32
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_41} :catch_7b

    .line 809
    :cond_41
    :goto_41
    :try_start_41
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 810
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5c} :catch_80

    .line 814
    :goto_5c
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/VideoEditorActivity;->access$4202(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 815
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 816
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4300(Lorg/telegram/ui/VideoEditorActivity;)V

    goto :goto_10

    .line 805
    :catch_7b
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_41

    .line 811
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_80
    move-exception v0

    .line 812
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5c
.end method

.method public onRifhtProgressChanged(F)V
    .registers 5
    .param p1, "progress"    # F

    .prologue
    .line 821
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 842
    :cond_10
    :goto_10
    return-void

    .line 825
    :cond_11
    :try_start_11
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 826
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 827
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020293

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_32} :catch_80

    .line 829
    :try_start_32
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_41} :catch_7b

    .line 834
    :cond_41
    :goto_41
    :try_start_41
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 835
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5c} :catch_80

    .line 839
    :goto_5c
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/VideoEditorActivity;->access$4202(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 840
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 841
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4300(Lorg/telegram/ui/VideoEditorActivity;)V

    goto :goto_10

    .line 830
    :catch_7b
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_41

    .line 836
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_80
    move-exception v0

    .line 837
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5c
.end method

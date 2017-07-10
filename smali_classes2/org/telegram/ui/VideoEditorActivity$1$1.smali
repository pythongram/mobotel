.class Lorg/telegram/ui/VideoEditorActivity$1$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VideoEditorActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/VideoEditorActivity$1;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 173
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    if-eqz v6, :cond_c1

    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 177
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 178
    const/4 v5, 0x0

    .line 179
    .local v5, "startTime":F
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->previewViewEnd:I
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$300(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v6

    int-to-float v1, v6

    .line 180
    .local v1, "endTime":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 186
    .local v2, "lrdiff":F
    :goto_2e
    cmpl-float v6, v5, v1

    if-nez v6, :cond_37

    .line 187
    const v6, 0x3c23d70a

    sub-float v5, v1, v6

    .line 189
    :cond_37
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    sub-float v7, v1, v5

    div-float v4, v6, v7

    .line 190
    .local v4, "progress":F
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 191
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    mul-float v7, v2, v4

    add-float v4, v6, v7

    .line 193
    :cond_63
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$600(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_81

    .line 194
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 195
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v6, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    .line 197
    :cond_81
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    .line 198
    .local v3, "position":I
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v1

    if-ltz v6, :cond_c1

    .line 200
    :try_start_9e
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->pause()V

    .line 201
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->onPlayComplete()V
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$800(Lorg/telegram/ui/VideoEditorActivity;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b0} :catch_10f

    .line 203
    :try_start_b0
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c1} :catch_10a

    .line 212
    .end local v1    # "endTime":F
    .end local v2    # "lrdiff":F
    .end local v3    # "position":I
    .end local v4    # "progress":F
    .end local v5    # "startTime":F
    :cond_c1
    :goto_c1
    return-void

    .line 182
    :cond_c2
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v7, v7, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v7}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v7

    mul-float v5, v6, v7

    .line 183
    .restart local v5    # "startTime":F
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v7, v7, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v7}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v7

    mul-float v1, v6, v7

    .line 184
    .restart local v1    # "endTime":F
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v7, v7, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v7}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v7

    sub-float v2, v6, v7

    .restart local v2    # "lrdiff":F
    goto/16 :goto_2e

    .line 204
    .restart local v3    # "position":I
    .restart local v4    # "progress":F
    :catch_10a
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10e} :catch_10f

    goto :goto_c1

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_10f
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c1
.end method

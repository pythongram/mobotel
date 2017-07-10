.class Lorg/telegram/ui/VideoEditorActivity$12;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;


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
    .line 847
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekBarDrag(F)V
    .registers 5
    .param p1, "progress"    # F

    .prologue
    .line 850
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_32

    .line 851
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result p1

    .line 852
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 857
    :cond_21
    :goto_21
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 866
    :cond_31
    :goto_31
    return-void

    .line 853
    :cond_32
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_21

    .line 854
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result p1

    .line 855
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    goto :goto_21

    .line 861
    :cond_54
    :try_start_54
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 862
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v1, p1}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6a} :catch_6b

    goto :goto_31

    .line 863
    :catch_6b
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_31
.end method

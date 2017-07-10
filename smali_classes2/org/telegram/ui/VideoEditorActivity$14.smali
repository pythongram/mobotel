.class Lorg/telegram/ui/VideoEditorActivity$14;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 922
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 925
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4400(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 991
    :cond_20
    :goto_20
    return-void

    .line 928
    :cond_21
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 929
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 930
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020293

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 932
    :try_start_42
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_51} :catch_52

    goto :goto_20

    .line 933
    :catch_52
    move-exception v0

    .line 934
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 938
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    :try_start_57
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 939
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v1, v2}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    .line 940
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 941
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoSeekBarView;->getProgress()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 942
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/VideoEditorActivity;->access$4202(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 944
    :cond_90
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$14$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VideoEditorActivity$14$1;-><init>(Lorg/telegram/ui/VideoEditorActivity$14;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 964
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$14$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VideoEditorActivity$14$2;-><init>(Lorg/telegram/ui/VideoEditorActivity$14;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 975
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_b5} :catch_f2

    .line 977
    :try_start_b5
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c4} :catch_f8

    .line 981
    :goto_c4
    :try_start_c4
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$000(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cb} :catch_f2

    .line 982
    :try_start_cb
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$900(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_ec

    .line 983
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->progressRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$4600(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;
    invoke-static {v1, v3}, Lorg/telegram/ui/VideoEditorActivity;->access$902(Lorg/telegram/ui/VideoEditorActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 984
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$900(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 986
    :cond_ec
    monitor-exit v2

    goto/16 :goto_20

    :catchall_ef
    move-exception v1

    monitor-exit v2
    :try_end_f1
    .catchall {:try_start_cb .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw v1
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f2} :catch_f2

    .line 987
    :catch_f2
    move-exception v0

    .line 988
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 978
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_f8
    move-exception v0

    .line 979
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_f9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fc} :catch_f2

    goto :goto_c4
.end method

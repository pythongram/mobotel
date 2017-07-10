.class Lorg/telegram/ui/VideoEditorActivity$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/VideoEditorActivity;
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
    .line 153
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 159
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$000(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 161
    :try_start_7
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_30
    .catchall {:try_start_7 .. :try_end_18} :catchall_36

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v1, 0x1

    .line 166
    .local v1, "playerCheck":Z
    :goto_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_36

    .line 167
    if-nez v1, :cond_39

    .line 220
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$000(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 221
    :try_start_26
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;
    invoke-static {v2, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$902(Lorg/telegram/ui/VideoEditorActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 222
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_4c

    .line 223
    return-void

    .line 161
    .end local v1    # "playerCheck":Z
    :cond_2e
    const/4 v1, 0x0

    goto :goto_1c

    .line 162
    :catch_30
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 164
    .restart local v1    # "playerCheck":Z
    :try_start_32
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "playerCheck":Z
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_36

    throw v2

    .line 170
    .restart local v1    # "playerCheck":Z
    :cond_39
    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VideoEditorActivity$1$1;-><init>(Lorg/telegram/ui/VideoEditorActivity$1;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 215
    const-wide/16 v2, 0x32

    :try_start_43
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_0

    .line 216
    :catch_47
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2
.end method

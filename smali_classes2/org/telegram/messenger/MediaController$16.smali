.class Lorg/telegram/messenger/MediaController$16;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 2471
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2475
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    .line 2476
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2900(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$5100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MediaController;->access$2802(Lorg/telegram/messenger/MediaController;J)J

    .line 2477
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$5100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->access$4700(Lorg/telegram/messenger/MediaController;F)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_64

    .line 2482
    :cond_38
    :goto_38
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$3400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2483
    :try_start_3f
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2484
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2485
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_69

    .line 2486
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->access$3202(Lorg/telegram/messenger/MediaController;Z)Z

    .line 2487
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$16;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$3300(Lorg/telegram/messenger/MediaController;)V

    .line 2488
    return-void

    .line 2479
    :catch_64
    move-exception v0

    .line 2480
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_38

    .line 2485
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

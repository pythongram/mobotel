.class Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/MessageThreadUtil$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/util/MessageThreadUtil$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    .prologue
    .line 135
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;"
    iput-object p1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 139
    .local p0, "this":Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;, "Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;"
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->next()Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v6

    .line 140
    .local v6, "msg":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    if-nez v6, :cond_13

    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    return-void

    .line 143
    :cond_13
    iget v0, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v0, :pswitch_data_80

    .line 162
    const-string v0, "ThreadUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :pswitch_33
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 146
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    iget v1, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;->refresh(I)V

    goto :goto_0

    .line 149
    :pswitch_45
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->mQueue:Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    iget v1, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v2, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    iget v3, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg3:I

    iget v4, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg4:I

    iget v5, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg5:I

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    goto :goto_0

    .line 155
    :pswitch_67
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    iget-object v0, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    iget v1, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v2, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;->loadTile(II)V

    goto :goto_0

    .line 159
    :pswitch_73
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2$1;->this$1:Lorg/telegram/messenger/support/util/MessageThreadUtil$2;

    iget-object v1, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$2;->val$callback:Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;

    iget-object v0, v6, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/support/util/TileList$Tile;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/support/util/ThreadUtil$BackgroundCallback;->recycleTile(Lorg/telegram/messenger/support/util/TileList$Tile;)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_33
        :pswitch_45
        :pswitch_67
        :pswitch_73
    .end packed-switch
.end method

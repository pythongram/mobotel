.class Landroid/support/v7/util/MessageThreadUtil$1$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/util/MessageThreadUtil$1;


# direct methods
.method constructor <init>(Landroid/support/v7/util/MessageThreadUtil$1;)V
    .registers 2

    .prologue
    .line 58
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$1$1;, "Landroid/support/v7/util/MessageThreadUtil$1.1;"
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 61
    .local p0, "this":Landroid/support/v7/util/MessageThreadUtil$1$1;, "Landroid/support/v7/util/MessageThreadUtil$1.1;"
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    # getter for: Landroid/support/v7/util/MessageThreadUtil$1;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;
    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$1;->access$000(Landroid/support/v7/util/MessageThreadUtil$1;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    .line 62
    .local v0, "msg":Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    :goto_a
    if-eqz v0, :cond_5c

    .line 63
    iget v1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v1, :pswitch_data_5e

    .line 75
    const-string v1, "ThreadUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported message, what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_2b
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    # getter for: Landroid/support/v7/util/MessageThreadUtil$1;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;
    invoke-static {v1}, Landroid/support/v7/util/MessageThreadUtil$1;->access$000(Landroid/support/v7/util/MessageThreadUtil$1;)Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->next()Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    goto :goto_a

    .line 65
    :pswitch_36
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v3}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    goto :goto_2b

    .line 69
    :pswitch_42
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v2, v1, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    iget v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget-object v1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/util/TileList$Tile;

    invoke-interface {v2, v3, v1}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->addTile(ILandroid/support/v7/util/TileList$Tile;)V

    goto :goto_2b

    .line 72
    :pswitch_50
    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$1$1;->this$1:Landroid/support/v7/util/MessageThreadUtil$1;

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$1;->val$callback:Landroid/support/v7/util/ThreadUtil$MainThreadCallback;

    iget v2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v3}, Landroid/support/v7/util/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_2b

    .line 79
    :cond_5c
    return-void

    .line 63
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_42
        :pswitch_50
    .end packed-switch
.end method

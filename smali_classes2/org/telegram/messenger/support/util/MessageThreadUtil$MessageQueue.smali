.class Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/util/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized next()Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    .registers 3

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v1, :cond_8

    .line 237
    const/4 v0, 0x0

    .line 241
    :goto_6
    monitor-exit p0

    return-object v0

    .line 239
    :cond_8
    :try_start_8
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .line 240
    .local v0, "next":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    # getter for: Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->next:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    goto :goto_6

    .line 236
    .end local v0    # "next":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized removeMessages(I)V
    .registers 6
    .param p1, "what"    # I

    .prologue
    .line 262
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    iget v3, v3, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_1c

    .line 263
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .line 264
    .local v0, "item":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    iget-object v3, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    # getter for: Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->next:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v3}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .line 265
    invoke-virtual {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_1

    .line 262
    .end local v0    # "item":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :catchall_19
    move-exception v3

    monitor-exit p0

    throw v3

    .line 267
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v3, :cond_3a

    .line 268
    iget-object v2, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .line 269
    .local v2, "prev":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    # getter for: Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->next:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v2}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    .line 270
    .restart local v0    # "item":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :goto_26
    if-eqz v0, :cond_3a

    .line 271
    # getter for: Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->next:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    .line 272
    .local v1, "next":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    iget v3, v0, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_38

    .line 273
    # setter for: Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->next:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v2, v1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$002(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .line 274
    invoke-virtual {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_19

    .line 278
    :goto_36
    move-object v0, v1

    .line 279
    goto :goto_26

    .line 276
    :cond_38
    move-object v2, v0

    goto :goto_36

    .line 281
    .end local v0    # "item":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    .end local v1    # "next":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    .end local v2    # "prev":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :cond_3a
    monitor-exit p0

    return-void
.end method

.method declared-synchronized sendMessage(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V
    .registers 4
    .param p1, "item"    # Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 250
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_9

    .line 251
    iput-object p1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1a

    .line 259
    :goto_7
    monitor-exit p0

    return-void

    .line 254
    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .line 255
    .local v0, "last":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :goto_b
    # getter for: Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->next:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 256
    # getter for: Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->next:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$000(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    goto :goto_b

    .line 258
    :cond_16
    # setter for: Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->next:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {v0, p1}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$002(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 250
    .end local v0    # "last":Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized sendMessageAtFrontOfQueue(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)V
    .registers 3
    .param p1, "item"    # Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    # setter for: Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->next:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    invoke-static {p1, v0}, Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;->access$002(Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;)Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;

    .line 246
    iput-object p1, p0, Lorg/telegram/messenger/support/util/MessageThreadUtil$MessageQueue;->mRoot:Lorg/telegram/messenger/support/util/MessageThreadUtil$SyncQueueItem;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 247
    monitor-exit p0

    return-void

    .line 245
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

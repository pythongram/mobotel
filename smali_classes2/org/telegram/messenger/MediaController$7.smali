.class Lorg/telegram/messenger/MediaController$7;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->checkDecoderQueue()V
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
    .line 1527
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1530
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3200(Lorg/telegram/messenger/MediaController;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1531
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3300(Lorg/telegram/messenger/MediaController;)V

    .line 1574
    :cond_f
    :goto_f
    return-void

    .line 1534
    :cond_10
    const/4 v3, 0x0

    .line 1536
    .local v3, "was":Z
    :goto_11
    const/4 v2, 0x0

    .line 1537
    .local v2, "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1538
    :try_start_19
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 1539
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioBuffer;

    move-object v2, v0

    .line 1540
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1542
    :cond_3e
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1543
    const/4 v3, 0x1

    .line 1545
    :cond_4b
    monitor-exit v5
    :try_end_4c
    .catchall {:try_start_19 .. :try_end_4c} :catchall_9e

    .line 1546
    if-eqz v2, :cond_b5

    .line 1547
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->access$3700(Lorg/telegram/messenger/MediaController;)I

    move-result v6

    sget-object v7, Lorg/telegram/messenger/MediaController;->readArgs:[I

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaController;->access$3800(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I[I)V

    .line 1548
    sget-object v4, Lorg/telegram/messenger/MediaController;->readArgs:[I

    aget v4, v4, v8

    iput v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->size:I

    .line 1549
    sget-object v4, Lorg/telegram/messenger/MediaController;->readArgs:[I

    aget v4, v4, v9

    int-to-long v4, v4

    iput-wide v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->pcmOffset:J

    .line 1550
    sget-object v4, Lorg/telegram/messenger/MediaController;->readArgs:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    .line 1551
    iget v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-ne v4, v9, :cond_7a

    .line 1552
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4, v9}, Lorg/telegram/messenger/MediaController;->access$3202(Lorg/telegram/messenger/MediaController;Z)Z

    .line 1554
    :cond_7a
    iget v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->size:I

    if-eqz v4, :cond_a4

    .line 1555
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1556
    iget-object v4, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$AudioBuffer;->bufferBytes:[B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1557
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1558
    :try_start_91
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    monitor-exit v5
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_a1

    .line 1566
    const/4 v3, 0x1

    .line 1570
    goto/16 :goto_11

    .line 1545
    :catchall_9e
    move-exception v4

    :try_start_9f
    monitor-exit v5
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v4

    .line 1559
    :catchall_a1
    move-exception v4

    :try_start_a2
    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v4

    .line 1561
    :cond_a4
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1562
    :try_start_ab
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    monitor-exit v5
    :try_end_b5
    .catchall {:try_start_ab .. :try_end_b5} :catchall_be

    .line 1571
    :cond_b5
    if-eqz v3, :cond_f

    .line 1572
    iget-object v4, p0, Lorg/telegram/messenger/MediaController$7;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$3300(Lorg/telegram/messenger/MediaController;)V

    goto/16 :goto_f

    .line 1564
    :catchall_be
    move-exception v4

    :try_start_bf
    monitor-exit v5
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v4
.end method

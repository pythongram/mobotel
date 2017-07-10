.class Lorg/telegram/messenger/MediaController$8;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
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
    .line 1579
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 1582
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1583
    :try_start_8
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2400(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2400(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v11, 0x3

    if-eq v2, v11, :cond_1f

    .line 1584
    :cond_1d
    monitor-exit v3

    .line 1637
    :cond_1e
    :goto_1e
    return-void

    .line 1586
    :cond_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_ab

    .line 1587
    const/4 v8, 0x0

    .line 1588
    .local v8, "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1589
    :try_start_28
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1590
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioBuffer;

    move-object v8, v0

    .line 1591
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1593
    :cond_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_28 .. :try_end_4e} :catchall_ae

    .line 1595
    if-eqz v8, :cond_86

    .line 1596
    const/4 v9, 0x0

    .line 1598
    .local v9, "count":I
    :try_start_51
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2400(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v2

    iget-object v3, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->bufferBytes:[B

    const/4 v11, 0x0

    iget v12, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->size:I

    invoke-virtual {v2, v3, v11, v12}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5f} :catch_b1

    move-result v9

    .line 1602
    :goto_60
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4008(Lorg/telegram/messenger/MediaController;)I

    .line 1604
    if-lez v9, :cond_7d

    .line 1605
    iget-wide v4, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->pcmOffset:J

    .line 1606
    .local v4, "pcm":J
    iget v2, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-ne v2, v13, :cond_b6

    move v6, v9

    .line 1607
    .local v6, "marker":I
    :goto_6e
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4000(Lorg/telegram/messenger/MediaController;)I

    move-result v7

    .line 1608
    .local v7, "finalBuffersWrited":I
    new-instance v2, Lorg/telegram/messenger/MediaController$8$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MediaController$8$1;-><init>(Lorg/telegram/messenger/MediaController$8;JII)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1624
    .end local v4    # "pcm":J
    .end local v6    # "marker":I
    .end local v7    # "finalBuffersWrited":I
    :cond_7d
    iget v2, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-eq v2, v13, :cond_86

    .line 1625
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3300(Lorg/telegram/messenger/MediaController;)V

    .line 1628
    .end local v9    # "count":I
    :cond_86
    if-eqz v8, :cond_8e

    if-eqz v8, :cond_93

    iget v2, v8, Lorg/telegram/messenger/MediaController$AudioBuffer;->finished:I

    if-eq v2, v13, :cond_93

    .line 1629
    :cond_8e
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$4100(Lorg/telegram/messenger/MediaController;)V

    .line 1632
    :cond_93
    if-eqz v8, :cond_1e

    .line 1633
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1634
    :try_start_9c
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$8;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1635
    monitor-exit v3

    goto/16 :goto_1e

    :catchall_a8
    move-exception v2

    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_9c .. :try_end_aa} :catchall_a8

    throw v2

    .line 1586
    .end local v8    # "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    :catchall_ab
    move-exception v2

    :try_start_ac
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v2

    .line 1593
    .restart local v8    # "buffer":Lorg/telegram/messenger/MediaController$AudioBuffer;
    :catchall_ae
    move-exception v2

    :try_start_af
    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v2

    .line 1599
    .restart local v9    # "count":I
    :catch_b1
    move-exception v10

    .line 1600
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_60

    .line 1606
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "pcm":J
    :cond_b6
    const/4 v6, -0x1

    goto :goto_6e
.end method

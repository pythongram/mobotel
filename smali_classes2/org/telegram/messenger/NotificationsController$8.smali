.class Lorg/telegram/messenger/NotificationsController$8;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$dialog_id:J

.field final synthetic val$inbox:Landroid/util/SparseArray;

.field final synthetic val$isPopup:Z

.field final synthetic val$max_date:I

.field final synthetic val$max_id:I

.field final synthetic val$popupArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Landroid/util/SparseArray;JIIZ)V
    .registers 9
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 449
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$8;->val$inbox:Landroid/util/SparseArray;

    iput-wide p4, p0, Lorg/telegram/messenger/NotificationsController$8;->val$dialog_id:J

    iput p6, p0, Lorg/telegram/messenger/NotificationsController$8;->val$max_id:I

    iput p7, p0, Lorg/telegram/messenger/NotificationsController$8;->val$max_date:I

    iput-boolean p8, p0, Lorg/telegram/messenger/NotificationsController$8;->val$isPopup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/16 v14, 0x20

    .line 452
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_a4

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 453
    .local v8, "oldCount":I
    :goto_c
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$inbox:Landroid/util/SparseArray;

    if-eqz v10, :cond_c8

    .line 454
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_11
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$inbox:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_ab

    .line 455
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$inbox:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 456
    .local v2, "key":I
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$inbox:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 457
    .local v4, "messageId":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2c
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_a7

    .line 458
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 459
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    int-to-long v12, v2

    cmp-long v10, v10, v12

    if-nez v10, :cond_a1

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    long-to-int v11, v4

    if-gt v10, v11, :cond_a1

    .line 460
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # invokes: Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v10, v3}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v10

    if-eqz v10, :cond_61

    .line 461
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # operator-- for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$510(Lorg/telegram/messenger/NotificationsController;)I

    .line 463
    :cond_61
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_6a

    .line 464
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 466
    :cond_6a
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v10

    .line 467
    .local v6, "mid":J
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v10, :cond_80

    .line 468
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v10, v10

    shl-long/2addr v10, v14

    or-long/2addr v6, v10

    .line 470
    :cond_80
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 472
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 473
    add-int/lit8 v0, v0, -0x1

    .line 457
    .end local v6    # "mid":J
    :cond_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 452
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "key":I
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v4    # "messageId":J
    .end local v8    # "oldCount":I
    :cond_a4
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 454
    .restart local v0    # "a":I
    .restart local v1    # "b":I
    .restart local v2    # "key":I
    .restart local v4    # "messageId":J
    .restart local v8    # "oldCount":I
    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    .line 477
    .end local v0    # "a":I
    .end local v2    # "key":I
    .end local v4    # "messageId":J
    :cond_ab
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_c8

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c8

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c8

    .line 478
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 481
    .end local v1    # "b":I
    :cond_c8
    iget-wide v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$dialog_id:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_199

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$max_id:I

    if-nez v10, :cond_d8

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$max_date:I

    if-eqz v10, :cond_199

    .line 482
    :cond_d8
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_d9
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_17c

    .line 483
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 484
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/telegram/messenger/NotificationsController$8;->val$dialog_id:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_158

    .line 485
    const/4 v9, 0x0

    .line 486
    .local v9, "remove":Z
    iget v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$max_date:I

    if-eqz v10, :cond_15c

    .line 487
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v11, p0, Lorg/telegram/messenger/NotificationsController$8;->val$max_date:I

    if-gt v10, v11, :cond_109

    .line 488
    const/4 v9, 0x1

    .line 501
    :cond_109
    :goto_109
    if-eqz v9, :cond_158

    .line 502
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # invokes: Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v10, v3}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v10

    if-eqz v10, :cond_118

    .line 503
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # operator-- for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$510(Lorg/telegram/messenger/NotificationsController;)I

    .line 505
    :cond_118
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 506
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 507
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_133

    .line 508
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 510
    :cond_133
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v10

    .line 511
    .restart local v6    # "mid":J
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v10, :cond_149

    .line 512
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v10, v10

    shl-long/2addr v10, v14

    or-long/2addr v6, v10

    .line 514
    :cond_149
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    add-int/lit8 v0, v0, -0x1

    .line 482
    .end local v6    # "mid":J
    .end local v9    # "remove":Z
    :cond_158
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d9

    .line 491
    .restart local v9    # "remove":Z
    :cond_15c
    iget-boolean v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$isPopup:Z

    if-nez v10, :cond_16e

    .line 492
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iget v11, p0, Lorg/telegram/messenger/NotificationsController$8;->val$max_id:I

    if-le v10, v11, :cond_16c

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$max_id:I

    if-gez v10, :cond_109

    .line 493
    :cond_16c
    const/4 v9, 0x1

    goto :goto_109

    .line 496
    :cond_16e
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iget v11, p0, Lorg/telegram/messenger/NotificationsController$8;->val$max_id:I

    if-eq v10, v11, :cond_17a

    iget v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$max_id:I

    if-gez v10, :cond_109

    .line 497
    :cond_17a
    const/4 v9, 0x1

    goto :goto_109

    .line 519
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v9    # "remove":Z
    :cond_17c
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_199

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->this$0:Lorg/telegram/messenger/NotificationsController;

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_199

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_199

    .line 520
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 523
    .end local v0    # "a":I
    :cond_199
    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_1ad

    iget-object v10, p0, Lorg/telegram/messenger/NotificationsController$8;->val$popupArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v8, v10, :cond_1ad

    .line 524
    new-instance v10, Lorg/telegram/messenger/NotificationsController$8$1;

    invoke-direct {v10, p0}, Lorg/telegram/messenger/NotificationsController$8$1;-><init>(Lorg/telegram/messenger/NotificationsController$8;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 532
    :cond_1ad
    return-void
.end method

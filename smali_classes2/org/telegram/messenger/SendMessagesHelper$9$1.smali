.class Lorg/telegram/messenger/SendMessagesHelper$9$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$9;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$9;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/messenger/SendMessagesHelper$9;

    .prologue
    .line 3294
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 3297
    const/4 v9, 0x0

    .line 3298
    .local v9, "isSentError":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_2ec

    .line 3299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3300
    .local v4, "oldId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$req:Lorg/telegram/tgnet/TLObject;

    instance-of v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    .line 3301
    .local v5, "isBroadcast":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3302
    .local v6, "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3303
    .local v7, "attachPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;

    if-eqz v2, :cond_1d8

    .line 3304
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;

    .line 3305
    .local v12, "res":Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v0, v17

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 3306
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->date:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 3307
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->entities:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 3308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->out:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 3309
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_82

    .line 3310
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3311
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3313
    :cond_82
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v2, :cond_9a

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 3314
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;->message:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 3316
    :cond_9a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b4

    .line 3317
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3319
    :cond_b4
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$9$1$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lorg/telegram/messenger/SendMessagesHelper$9$1$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3325
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3381
    .end local v12    # "res":Lorg/telegram/tgnet/TLRPC$TL_updateShortSentMessage;
    :cond_c9
    :goto_c9
    if-nez v9, :cond_147

    .line 3382
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v3

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    .line 3383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 3384
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v17, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v18, v2

    const/16 v19, 0x1

    if-eqz v5, :cond_2e2

    move v2, v4

    :goto_fe
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v18, v19

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    aput-object v19, v18, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v18, v2

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3385
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v17

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;IZLjava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3424
    .end local v4    # "oldId":I
    .end local v5    # "isBroadcast":Z
    .end local v6    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "attachPath":Ljava/lang/String;
    :cond_147
    :goto_147
    if-eqz v9, :cond_1d7

    .line 3425
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 3426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x2

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 3427
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 3429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-nez v2, :cond_1b5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isNewGifMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 3430
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 3432
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromSendingMessages(I)V

    .line 3434
    :cond_1d7
    return-void

    .line 3326
    .restart local v4    # "oldId":I
    .restart local v5    # "isBroadcast":Z
    .restart local v6    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v7    # "attachPath":Ljava/lang/String;
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v2, :cond_c9

    .line 3327
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 3328
    .local v14, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    .line 3329
    .local v15, "updatesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    const/4 v10, 0x0

    .line 3330
    .local v10, "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_1f0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_223

    .line 3331
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Update;

    .line 3332
    .local v13, "update":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v2, :cond_2a6

    move-object v11, v13

    .line 3333
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .line 3334
    .local v11, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;
    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3335
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3336
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$9$1$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lorg/telegram/messenger/SendMessagesHelper$9$1$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3342
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3360
    .end local v11    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;
    .end local v13    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_223
    :goto_223
    if-eqz v10, :cond_2e0

    .line 3361
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 3362
    .local v16, "value":Ljava/lang/Integer;
    if-nez v16, :cond_262

    .line 3363
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 3364
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3366
    :cond_262
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v2, v3, :cond_2de

    const/4 v2, 0x1

    :goto_26b
    iput-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 3368
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3369
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$9;->val$msgObj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$originalPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v2, v3, v10, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    .line 3373
    .end local v16    # "value":Ljava/lang/Integer;
    :goto_298
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$9$1$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lorg/telegram/messenger/SendMessagesHelper$9$1$4;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;Lorg/telegram/tgnet/TLRPC$Updates;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_c9

    .line 3344
    .restart local v13    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_2a6
    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v2, :cond_2da

    move-object v11, v13

    .line 3345
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .line 3346
    .local v11, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;
    iget-object v10, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3347
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c9

    .line 3348
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v17, -0x80000000

    or-int v3, v3, v17

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3350
    :cond_2c9
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$9$1$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lorg/telegram/messenger/SendMessagesHelper$9$1$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3356
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_223

    .line 3330
    .end local v11    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;
    :cond_2da
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1f0

    .line 3366
    .end local v13    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v16    # "value":Ljava/lang/Integer;
    :cond_2de
    const/4 v2, 0x0

    goto :goto_26b

    .line 3371
    .end local v16    # "value":Ljava/lang/Integer;
    :cond_2e0
    const/4 v9, 0x1

    goto :goto_298

    .line 3384
    .end local v8    # "a":I
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v14    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    .end local v15    # "updatesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Update;>;"
    :cond_2e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto/16 :goto_fe

    .line 3421
    .end local v4    # "oldId":I
    .end local v5    # "isBroadcast":Z
    .end local v6    # "sentMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "attachPath":Ljava/lang/String;
    :cond_2ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$req:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v2, v3, v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 3422
    const/4 v9, 0x1

    goto/16 :goto_147
.end method

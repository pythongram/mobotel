.class Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$9$1$5;)V
    .registers 2
    .param p1, "this$3"    # Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    .prologue
    .line 3395
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3398
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-boolean v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    if-eqz v4, :cond_44

    .line 3399
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_9
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$sentMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_39

    .line 3400
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$sentMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3401
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3402
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 3403
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3404
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v1, v9}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V

    .line 3399
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3406
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_39
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3408
    .end local v0    # "a":I
    :cond_44
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/SearchQuery;->increasePeerRaiting(J)V

    .line 3409
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-boolean v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    if-eqz v4, :cond_b2

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    :goto_6e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    const/4 v4, 0x2

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object v8, v7, v4

    const/4 v4, 0x3

    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v8, v8, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3410
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v5, v5, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 3411
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v5, v5, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromSendingMessages(I)V

    .line 3412
    return-void

    .line 3409
    :cond_b2
    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_6e
.end method

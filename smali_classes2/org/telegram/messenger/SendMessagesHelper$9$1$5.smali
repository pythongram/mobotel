.class Lorg/telegram/messenger/SendMessagesHelper$9$1$5;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

.field final synthetic val$attachPath:Ljava/lang/String;

.field final synthetic val$isBroadcast:Z

.field final synthetic val$oldId:I

.field final synthetic val$sentMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$9$1;IZLjava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$2"    # Lorg/telegram/messenger/SendMessagesHelper$9$1;

    .prologue
    .line 3385
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iput p2, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    iput-boolean p3, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$sentMessages:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$attachPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 3388
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iget v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    if-eqz v0, :cond_7d

    iget v5, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    :goto_1a
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J

    .line 3389
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$sentMessages:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    move v5, v9

    move v8, v6

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 3390
    iget-boolean v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    if-eqz v0, :cond_51

    .line 3391
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3392
    .local v4, "currentMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3393
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move v5, v9

    move v7, v6

    move v8, v6

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 3395
    .end local v4    # "currentMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_51
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$9$1$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3414
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isNewGifMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 3415
    :cond_71
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$attachPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 3417
    :cond_7c
    return-void

    .line 3388
    :cond_7d
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_1a
.end method

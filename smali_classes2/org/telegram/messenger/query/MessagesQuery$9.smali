.class final Lorg/telegram/messenger/query/MessagesQuery$9;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chats:Ljava/util/ArrayList;

.field final synthetic val$chatsDict:Ljava/util/HashMap;

.field final synthetic val$dialog_id:J

.field final synthetic val$isCache:Z

.field final synthetic val$replyMessageOwners:Ljava/util/HashMap;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;J)V
    .registers 10

    .prologue
    .line 430
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$users:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$isCache:Z

    iput-object p3, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chats:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$result:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$replyMessageOwners:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$usersDict:Ljava/util/HashMap;

    iput-object p7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chatsDict:Ljava/util/HashMap;

    iput-wide p8, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 433
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$users:Ljava/util/ArrayList;

    iget-boolean v9, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$isCache:Z

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 434
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chats:Ljava/util/ArrayList;

    iget-boolean v9, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$isCache:Z

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 435
    const/4 v3, 0x0

    .line 436
    .local v3, "changed":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1a
    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_7c

    .line 437
    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    .line 438
    .local v5, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$replyMessageOwners:Ljava/util/HashMap;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 439
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v1, :cond_79

    .line 440
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$usersDict:Ljava/util/HashMap;

    iget-object v8, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chatsDict:Ljava/util/HashMap;

    invoke-direct {v6, v5, v7, v8, v12}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 441
    .local v6, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_78

    .line 442
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 443
    .local v4, "m":Lorg/telegram/messenger/MessageObject;
    iput-object v6, v4, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 444
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-eqz v7, :cond_60

    .line 445
    invoke-virtual {v4, v10, v10}, Lorg/telegram/messenger/MessageObject;->generatePinMessageText(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 441
    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 446
    :cond_60
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-eqz v7, :cond_6c

    .line 447
    invoke-virtual {v4, v10}, Lorg/telegram/messenger/MessageObject;->generateGameMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_5d

    .line 448
    :cond_6c
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-eqz v7, :cond_5d

    .line 449
    invoke-virtual {v4, v10}, Lorg/telegram/messenger/MessageObject;->generatePaymentSentMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_5d

    .line 452
    .end local v4    # "m":Lorg/telegram/messenger/MessageObject;
    :cond_78
    const/4 v3, 0x1

    .line 436
    .end local v2    # "b":I
    .end local v6    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 455
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v5    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_7c
    if-eqz v3, :cond_92

    .line 456
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$dialog_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 458
    :cond_92
    return-void
.end method

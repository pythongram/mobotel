.class Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;
.super Ljava/lang/Object;
.source "MessagesSearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesSearchQuery$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/MessagesSearchQuery$2;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iput-object p2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 173
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v1, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$currentReqId:I

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$500()I

    move-result v2

    if-ne v1, v2, :cond_149

    .line 174
    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I
    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$602(I)I

    .line 175
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_149

    .line 176
    iget-object v12, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 177
    .local v12, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 178
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 179
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 180
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-object v1, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    if-nez v1, :cond_5e

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5e

    .line 181
    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I
    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$702(I)I

    .line 182
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 183
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 185
    :cond_5e
    const/4 v9, 0x0

    .line 186
    .local v9, "added":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_60
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_88

    .line 187
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    .line 188
    .local v10, "message":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v9, 0x1

    .line 189
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v10, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 191
    .end local v10    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_88
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v6, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_14a

    const/4 v1, 0x0

    :goto_99
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x15

    if-eq v2, v4, :cond_14d

    const/4 v2, 0x1

    :goto_a4
    aput-boolean v2, v3, v1

    .line 192
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v6, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_150

    const/4 v1, 0x0

    :goto_b7
    instance-of v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v2, :cond_153

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    :goto_bd
    aput v2, v3, v1

    .line 193
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 194
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v5, v5, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    # invokes: Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$900()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 204
    :cond_10c
    :goto_10c
    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_149

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_149

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_149

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_149

    .line 205
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$1000()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v2, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v4, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$mergeDialogId:J

    iget-object v6, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v6, v6, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    # invokes: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJIIZ)V
    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$400(Ljava/lang/String;JJIIZ)V

    .line 209
    .end local v0    # "a":I
    .end local v9    # "added":Z
    .end local v12    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_149
    return-void

    .line 191
    .restart local v0    # "a":I
    .restart local v9    # "added":Z
    .restart local v12    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_14a
    const/4 v1, 0x1

    goto/16 :goto_99

    :cond_14d
    const/4 v2, 0x0

    goto/16 :goto_a4

    .line 192
    :cond_150
    const/4 v1, 0x1

    goto/16 :goto_b7

    :cond_153
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto/16 :goto_bd

    .line 196
    :cond_15b
    if-eqz v9, :cond_10c

    .line 197
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v1

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_178

    .line 198
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    # setter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I
    invoke-static {v1}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$702(I)I

    .line 200
    :cond_178
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 201
    .local v11, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v5, v5, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    # invokes: Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$900()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_10c
.end method

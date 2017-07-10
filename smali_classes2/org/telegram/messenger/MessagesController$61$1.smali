.class Lorg/telegram/messenger/MessagesController$61$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$61;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$61;

.field final synthetic val$dialogsToUpdate:Ljava/util/HashMap;

.field final synthetic val$new_dialogMessage:Ljava/util/HashMap;

.field final synthetic val$new_dialogs_dict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$61;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$61;

    .prologue
    .line 3962
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$61$1;->val$new_dialogs_dict:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$61$1;->val$new_dialogMessage:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$61$1;->val$dialogsToUpdate:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    .line 3965
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3966
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3968
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$61$1;->val$new_dialogs_dict:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_28
    :goto_28
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1eb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3969
    .local v5, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3970
    .local v1, "key":Ljava/lang/Long;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3971
    .local v6, "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3972
    .local v0, "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-nez v0, :cond_ae

    .line 3973
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v9, v8, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 3974
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3975
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 3976
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3977
    if-eqz v2, :cond_28

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v8, :cond_28

    .line 3978
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3979
    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_28

    .line 3980
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_28

    .line 3984
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_ae
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 3985
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 3986
    .local v4, "oldMsg":Lorg/telegram/messenger/MessageObject;
    if-eqz v4, :cond_c4

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v8, :cond_15b

    .line 3987
    :cond_c4
    if-eqz v4, :cond_ca

    iget-boolean v8, v4, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v8, :cond_d0

    :cond_ca
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-le v8, v9, :cond_28

    .line 3988
    :cond_d0
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3989
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 3990
    .restart local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3991
    if-eqz v2, :cond_124

    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v8, :cond_124

    .line 3992
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3993
    iget-object v8, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_124

    .line 3994
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3997
    :cond_124
    if-eqz v4, :cond_150

    .line 3998
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3999
    iget-object v8, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_150

    .line 4000
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4003
    :cond_150
    if-nez v2, :cond_28

    .line 4004
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v8, v6, v14, v12, v13}, Lorg/telegram/messenger/MessagesController;->checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V

    goto/16 :goto_28

    .line 4008
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_15b
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 4009
    .local v3, "newMsg":Lorg/telegram/messenger/MessageObject;
    iget-boolean v8, v4, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v8, :cond_179

    if-eqz v3, :cond_179

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v8, v9, :cond_28

    .line 4010
    :cond_179
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4011
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4012
    if-eqz v3, :cond_1bf

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v8, :cond_1bf

    .line 4013
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4014
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_1bf

    .line 4015
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4018
    :cond_1bf
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4019
    iget-object v8, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_28

    .line 4020
    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_28

    .line 4027
    .end local v0    # "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v1    # "key":Ljava/lang/Long;
    .end local v3    # "newMsg":Lorg/telegram/messenger/MessageObject;
    .end local v4    # "oldMsg":Lorg/telegram/messenger/MessageObject;
    .end local v5    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v6    # "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_1eb
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 4028
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4029
    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$61$1;->this$1:Lorg/telegram/messenger/MessagesController$61;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v7, v14}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 4030
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4031
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$61$1;->val$dialogsToUpdate:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    .line 4032
    return-void
.end method

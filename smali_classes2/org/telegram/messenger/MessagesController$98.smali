.class Lorg/telegram/messenger/MessagesController$98;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadPinnedDialogs(JLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$newDialogId:J

.field final synthetic val$order:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 5935
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$98;->val$order:Ljava/util/ArrayList;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$98;->val$newDialogId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 25
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 5938
    if-eqz p1, :cond_204

    move-object/from16 v4, p1

    .line 5939
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    .line 5940
    .local v4, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;-><init>()V

    .line 5941
    .local v7, "toCache":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->users:Ljava/util/ArrayList;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5942
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->chats:Ljava/util/ArrayList;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5943
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->dialogs:Ljava/util/ArrayList;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5944
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->messages:Ljava/util/ArrayList;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5946
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5947
    .local v6, "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/messenger/MessageObject;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 5948
    .local v17, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 5949
    .local v11, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5951
    .local v5, "newPinnedOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_3c
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_5e

    .line 5952
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$User;

    .line 5953
    .local v16, "u":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v16

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5951
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 5955
    .end local v16    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5e
    const/4 v8, 0x0

    :goto_5f
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_7b

    .line 5956
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5957
    .local v9, "c":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5955
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    .line 5960
    .end local v9    # "c":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7b
    const/4 v8, 0x0

    :goto_7c
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_d7

    .line 5961
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Message;

    .line 5962
    .local v14, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_a9

    .line 5963
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5964
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v10, :cond_c3

    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v2, :cond_c3

    .line 5960
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_a6
    :goto_a6
    add-int/lit8 v8, v8, 0x1

    goto :goto_7c

    .line 5967
    :cond_a9
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_c3

    .line 5968
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5969
    .restart local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v10, :cond_c3

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-nez v2, :cond_a6

    .line 5973
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c3
    new-instance v15, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v15, v14, v0, v11, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 5974
    .local v15, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 5976
    .end local v14    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v15    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_d7
    const/4 v8, 0x0

    :goto_d8
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_1f0

    .line 5977
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 5978
    .local v12, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const-wide/16 v20, 0x0

    cmp-long v2, v2, v20

    if-nez v2, :cond_fd

    .line 5979
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_123

    .line 5980
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v2, v2

    iput-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 5987
    :cond_fd
    :goto_fd
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5988
    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v2

    if-eqz v2, :cond_141

    .line 5989
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5990
    .restart local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v10, :cond_15a

    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v2, :cond_15a

    .line 5976
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_120
    :goto_120
    add-int/lit8 v8, v8, 0x1

    goto :goto_d8

    .line 5981
    :cond_123
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_132

    .line 5982
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_fd

    .line 5983
    :cond_132
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_fd

    .line 5984
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_fd

    .line 5993
    :cond_141
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    if-gez v2, :cond_15a

    .line 5994
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5995
    .restart local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v10, :cond_15a

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-nez v2, :cond_120

    .line 5999
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_15a
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-nez v2, :cond_172

    .line 6000
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    .line 6001
    .local v13, "mess":Lorg/telegram/messenger/MessageObject;
    if-eqz v13, :cond_172

    .line 6002
    iget-object v2, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 6006
    .end local v13    # "mess":Lorg/telegram/messenger/MessageObject;
    :cond_172
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 6007
    .local v18, "value":Ljava/lang/Integer;
    if-nez v18, :cond_18d

    .line 6008
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 6010
    :cond_18d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6012
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "value":Ljava/lang/Integer;
    check-cast v18, Ljava/lang/Integer;

    .line 6013
    .restart local v18    # "value":Ljava/lang/Integer;
    if-nez v18, :cond_1cb

    .line 6014
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 6016
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_120

    .line 6019
    .end local v12    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v18    # "value":Ljava/lang/Integer;
    :cond_1f0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v19

    new-instance v2, Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController$98$1;-><init>(Lorg/telegram/messenger/MessagesController$98;Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 6126
    .end local v4    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    .end local v5    # "newPinnedOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v6    # "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/messenger/MessageObject;>;"
    .end local v7    # "toCache":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    .end local v8    # "a":I
    .end local v11    # "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v17    # "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_204
    return-void
.end method

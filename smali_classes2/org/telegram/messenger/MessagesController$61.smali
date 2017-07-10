.class Lorg/telegram/messenger/MessagesController$61;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 3884
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 3887
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 3888
    .local v12, "new_dialogs_dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3889
    .local v11, "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/messenger/MessageObject;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 3890
    .local v14, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3891
    .local v5, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3893
    .local v7, "dialogsToUpdate":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v2, v0, :cond_52

    .line 3894
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$User;

    .line 3895
    .local v13, "u":Lorg/telegram/tgnet/TLRPC$User;
    iget v0, v13, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3893
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 3897
    .end local v13    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_52
    const/4 v2, 0x0

    :goto_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v2, v0, :cond_8b

    .line 3898
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3899
    .local v3, "c":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v0, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3897
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 3902
    .end local v3    # "c":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_8b
    const/4 v2, 0x0

    :goto_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v2, v0, :cond_122

    .line 3903
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3904
    .local v9, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v16, v0

    if-eqz v16, :cond_e1

    .line 3905
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3906
    .local v4, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :cond_10b

    iget-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    move/from16 v16, v0

    if-eqz v16, :cond_10b

    .line 3902
    .end local v4    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_de
    :goto_de
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 3909
    :cond_e1
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v16, v0

    if-eqz v16, :cond_10b

    .line 3910
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3911
    .restart local v4    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :cond_10b

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object/from16 v16, v0

    if-nez v16, :cond_de

    .line 3915
    .end local v4    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_10b
    new-instance v10, Lorg/telegram/messenger/MessageObject;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v10, v9, v14, v5, v0}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 3916
    .local v10, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_de

    .line 3918
    .end local v9    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v10    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_122
    const/4 v2, 0x0

    :goto_123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v2, v0, :cond_2f4

    .line 3919
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3920
    .local v6, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_174

    .line 3921
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v16, v0

    if-eqz v16, :cond_19f

    .line 3922
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3929
    :cond_174
    :goto_174
    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v16

    if-eqz v16, :cond_1e9

    .line 3930
    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3931
    .restart local v4    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :cond_216

    iget-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    move/from16 v16, v0

    if-eqz v16, :cond_216

    .line 3918
    .end local v4    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_19c
    :goto_19c
    add-int/lit8 v2, v2, 0x1

    goto :goto_123

    .line 3923
    :cond_19f
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v16, v0

    if-eqz v16, :cond_1c4

    .line 3924
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_174

    .line 3925
    :cond_1c4
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v16, v0

    if-eqz v16, :cond_174

    .line 3926
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_174

    .line 3934
    :cond_1e9
    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    if-gez v16, :cond_216

    .line 3935
    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3936
    .restart local v4    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v4, :cond_216

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object/from16 v16, v0

    if-nez v16, :cond_19c

    .line 3940
    .end local v4    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_216
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    move/from16 v16, v0

    if-nez v16, :cond_23c

    .line 3941
    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 3942
    .local v8, "mess":Lorg/telegram/messenger/MessageObject;
    if-eqz v8, :cond_23c

    .line 3943
    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 3946
    .end local v8    # "mess":Lorg/telegram/messenger/MessageObject;
    :cond_23c
    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3947
    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3949
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 3950
    .local v15, "value":Ljava/lang/Integer;
    if-nez v15, :cond_282

    .line 3951
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 3953
    :cond_282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3955
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "value":Ljava/lang/Integer;
    check-cast v15, Ljava/lang/Integer;

    .line 3956
    .restart local v15    # "value":Ljava/lang/Integer;
    if-nez v15, :cond_2cb

    .line 3957
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 3959
    :cond_2cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$61;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    iget-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_19c

    .line 3962
    .end local v6    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v15    # "value":Ljava/lang/Integer;
    :cond_2f4
    new-instance v16, Lorg/telegram/messenger/MessagesController$61$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v11, v7}, Lorg/telegram/messenger/MessagesController$61$1;-><init>(Lorg/telegram/messenger/MessagesController$61;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4034
    return-void
.end method

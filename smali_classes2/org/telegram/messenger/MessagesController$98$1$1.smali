.class Lorg/telegram/messenger/MessagesController$98$1$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$98$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$98$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$98$1;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/messenger/MessagesController$98$1;

    .prologue
    .line 6022
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 6025
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/MessagesController;->access$4600(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    .line 6026
    const/4 v6, 0x0

    .line 6027
    .local v6, "changed":Z
    const/4 v5, 0x0

    .line 6028
    .local v5, "added":Z
    const/4 v9, 0x0

    .line 6029
    .local v9, "maxPinnedNum":I
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 6030
    .local v16, "oldPinnedDialogNums":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 6031
    .local v17, "oldPinnedOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_89

    .line 6032
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 6033
    .local v8, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_83

    .line 6031
    :goto_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 6036
    :cond_83
    iget-boolean v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v20, v0

    if-nez v20, :cond_ef

    .line 6047
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_89
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 6048
    .local v19, "pinnedDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->val$order:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_130

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->val$order:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 6049
    .local v18, "orderArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_b4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_cf

    .line 6050
    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6052
    :cond_cf
    :goto_cf
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_13e

    .line 6053
    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_cf

    .line 6039
    .end local v18    # "orderArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "pinnedDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_ef
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 6040
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6041
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6042
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 6043
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 6044
    const/4 v6, 0x1

    goto/16 :goto_80

    .line 6048
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v19    # "pinnedDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_130
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->val$newPinnedOrder:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    goto/16 :goto_b4

    .line 6055
    .restart local v18    # "orderArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_13e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3e5

    .line 6056
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 6057
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 6058
    const/4 v4, 0x0

    :goto_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_3e5

    .line 6059
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 6060
    .restart local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$98;->val$newDialogId:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_290

    .line 6061
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 6062
    .local v15, "oldNum":Ljava/lang/Integer;
    if-eqz v15, :cond_211

    .line 6063
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 6083
    .end local v15    # "oldNum":Ljava/lang/Integer;
    :cond_211
    :goto_211
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move/from16 v20, v0

    if-nez v20, :cond_235

    .line 6084
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    sub-int v20, v20, v4

    add-int v20, v20, v9

    move/from16 v0, v20

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 6086
    :cond_235
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6087
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v20, v0

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 6089
    .local v7, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v7, :cond_302

    .line 6090
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 6091
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 6092
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v20

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->setDialogPinned(JI)V

    .line 6106
    :cond_28b
    :goto_28b
    const/4 v6, 0x1

    .line 6058
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1a9

    .line 6066
    .end local v7    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_290
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 6067
    .local v14, "oldIdx":I
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 6068
    .local v11, "newIdx":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_211

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_211

    .line 6069
    if-ne v14, v11, :cond_2dc

    .line 6070
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 6071
    .restart local v15    # "oldNum":Ljava/lang/Integer;
    if-eqz v15, :cond_211

    .line 6072
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    goto/16 :goto_211

    .line 6075
    .end local v15    # "oldNum":Ljava/lang/Integer;
    :cond_2dc
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 6076
    .local v12, "oldDid":J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 6077
    .restart local v15    # "oldNum":Ljava/lang/Integer;
    if-eqz v15, :cond_211

    .line 6078
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    goto/16 :goto_211

    .line 6094
    .end local v11    # "newIdx":I
    .end local v12    # "oldDid":J
    .end local v14    # "oldIdx":I
    .end local v15    # "oldNum":Ljava/lang/Integer;
    .restart local v7    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_302
    const/4 v5, 0x1

    .line 6095
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v20, v0

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6096
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->val$new_dialogMessage:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 6097
    .local v10, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6098
    if-eqz v10, :cond_28b

    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v20, v0

    if-nez v20, :cond_28b

    .line 6099
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6100
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_28b

    .line 6101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_28b

    .line 6109
    .end local v7    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v8    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v10    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3e5
    if-eqz v6, :cond_463

    .line 6110
    if-eqz v5, :cond_43b

    .line 6111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 6112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6114
    :cond_43b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->this$1:Lorg/telegram/messenger/MessagesController$98;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 6115
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v20

    sget v21, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6117
    :cond_463
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->unpinAllDialogsExceptNew(Ljava/util/ArrayList;)V

    .line 6118
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1$1;->this$2:Lorg/telegram/messenger/MessagesController$98$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$98$1;->val$toCache:Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lorg/telegram/messenger/MessagesStorage;->putDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    .line 6119
    const/16 v20, 0x1

    sput-boolean v20, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 6120
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 6121
    return-void
.end method

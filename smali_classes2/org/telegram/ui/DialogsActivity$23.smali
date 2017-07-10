.class Lorg/telegram/ui/DialogsActivity$23;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 1412
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 26
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v19

    if-nez v19, :cond_1d

    .line 1527
    :cond_1c
    :goto_1c
    return-void

    .line 1418
    :cond_1d
    const-wide/16 v12, 0x0

    .line 1419
    .local v12, "dialog_id":J
    const/16 v16, 0x0

    .line 1420
    .local v16, "message_id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v6

    .line 1421
    .local v6, "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v6, v0, :cond_79

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v10

    .line 1423
    .local v10, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v10, :cond_1c

    .line 1426
    iget-wide v12, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 1470
    .end local v10    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_53
    :goto_53
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-eqz v19, :cond_1c

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v19

    if-eqz v19, :cond_239

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    # invokes: Lorg/telegram/ui/DialogsActivity;->didSelectResult(JZZ)V
    invoke-static {v0, v12, v13, v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;JZZ)V

    goto :goto_1c

    .line 1427
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v6, v0, :cond_53

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v17

    .line 1429
    .local v17, "obj":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$User;

    move/from16 v19, v0

    if-eqz v19, :cond_115

    move-object/from16 v19, v17

    .line 1430
    check-cast v19, Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v12, v0

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isGlobalSearch(I)Z

    move-result v19

    if-eqz v19, :cond_f4

    .line 1432
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .local v18, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    move-object/from16 v19, v17

    .line 1433
    check-cast v19, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1435
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1437
    .end local v18    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v19

    if-nez v19, :cond_53

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v19

    check-cast v17, Lorg/telegram/tgnet/TLRPC$User;

    .end local v17    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v13, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_53

    .line 1440
    .restart local v17    # "obj":Ljava/lang/Object;
    :cond_115
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    move/from16 v19, v0

    if-eqz v19, :cond_1af

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isGlobalSearch(I)Z

    move-result v19

    if-eqz v19, :cond_161

    .line 1442
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    move-object/from16 v19, v17

    .line 1443
    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1445
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .end local v9    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_161
    move-object/from16 v19, v17

    .line 1447
    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v19, v0

    if-lez v19, :cond_1a0

    move-object/from16 v19, v17

    .line 1448
    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v12, v0

    .line 1452
    :goto_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v19

    if-nez v19, :cond_53

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v19

    check-cast v17, Lorg/telegram/tgnet/TLRPC$Chat;

    .end local v17    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v13, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_53

    .restart local v17    # "obj":Ljava/lang/Object;
    :cond_1a0
    move-object/from16 v19, v17

    .line 1450
    check-cast v19, Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v12

    goto :goto_17f

    .line 1455
    :cond_1af
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move/from16 v19, v0

    if-eqz v19, :cond_1eb

    move-object/from16 v19, v17

    .line 1456
    check-cast v19, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x20

    shl-long v12, v20, v19

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v19

    if-nez v19, :cond_53

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v19

    check-cast v17, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .end local v17    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v13, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    goto/16 :goto_53

    .line 1460
    .restart local v17    # "obj":Ljava/lang/Object;
    :cond_1eb
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/messenger/MessageObject;

    move/from16 v19, v0

    if-eqz v19, :cond_21c

    move-object/from16 v15, v17

    .line 1461
    check-cast v15, Lorg/telegram/messenger/MessageObject;

    .line 1462
    .local v15, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    .line 1463
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v16

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getLastSearchString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_53

    .line 1465
    .end local v15    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_21c
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_53

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v19

    check-cast v17, Ljava/lang/String;

    .end local v17    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 1477
    :cond_239
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1478
    .local v7, "args":Landroid/os/Bundle;
    long-to-int v14, v12

    .line 1479
    .local v14, "lower_part":I
    const/16 v19, 0x20

    shr-long v20, v12, v19

    move-wide/from16 v0, v20

    long-to-int v11, v0

    .line 1480
    .local v11, "high_id":I
    if-eqz v14, :cond_337

    .line 1481
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_2ef

    .line 1482
    const-string v19, "chat_id"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1500
    :cond_255
    :goto_255
    if-eqz v16, :cond_340

    .line 1501
    const-string v19, "message_id"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1507
    :cond_260
    :goto_260
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_2b2

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->openedDialogId:J
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$3500(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v20

    cmp-long v19, v20, v12

    if-nez v19, :cond_282

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v6, v0, :cond_1c

    .line 1511
    :cond_282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v19

    if-eqz v19, :cond_2b2

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # setter for: Lorg/telegram/ui/DialogsActivity;->openedDialogId:J
    invoke-static {v0, v12, v13}, Lorg/telegram/ui/DialogsActivity;->access$3502(Lorg/telegram/ui/DialogsActivity;J)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V
    invoke-static/range {v19 .. v20}, Lorg/telegram/ui/DialogsActivity;->access$3600(Lorg/telegram/ui/DialogsActivity;I)V

    .line 1516
    :cond_2b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_35b

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 1518
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v19

    sget v20, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    new-instance v20, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c

    .line 1484
    :cond_2ef
    if-lez v14, :cond_2fa

    .line 1485
    const-string v19, "user_id"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_255

    .line 1486
    :cond_2fa
    if-gez v14, :cond_255

    .line 1487
    if-eqz v16, :cond_329

    .line 1488
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v19

    neg-int v0, v14

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 1489
    .local v8, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v8, :cond_329

    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object/from16 v19, v0

    if-eqz v19, :cond_329

    .line 1490
    const-string v19, "migrated_to"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1491
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v14, v0

    .line 1494
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_329
    const-string v19, "chat_id"

    neg-int v0, v14

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_255

    .line 1498
    :cond_337
    const-string v19, "enc_id"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_255

    .line 1503
    :cond_340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$3300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v19

    if-eqz v19, :cond_260

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/DialogsActivity;->access$3400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    goto/16 :goto_260

    .line 1522
    :cond_35b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v19, v0

    new-instance v20, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c
.end method

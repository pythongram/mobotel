.class Lorg/telegram/ui/DialogsActivity$24;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


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
    .line 1529
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .registers 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v18

    if-nez v18, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v18

    if-eqz v18, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v18

    if-nez v18, :cond_30

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-nez v18, :cond_10b

    .line 1533
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v18

    if-eqz v18, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v18

    if-nez v18, :cond_58

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v18

    if-eqz v18, :cond_108

    .line 1534
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    .line 1535
    .local v4, "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_108

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    .line 1537
    .local v13, "item":Ljava/lang/Object;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_9c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v18

    if-eqz v18, :cond_108

    .line 1538
    :cond_9c
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1539
    .local v5, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v18, "AppName"

    const v19, 0x7f070092

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1540
    const-string v18, "ClearSearch"

    const v19, 0x7f07017e

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1541
    const-string v18, "ClearButton"

    const v19, 0x7f070178

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lorg/telegram/ui/DialogsActivity$24$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity$24$1;-><init>(Lorg/telegram/ui/DialogsActivity$24;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1551
    const-string v18, "Cancel"

    const v19, 0x7f0700fe

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1553
    const/16 v18, 0x1

    .line 1786
    .end local v4    # "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .end local v5    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v13    # "item":Ljava/lang/Object;
    :goto_107
    return v18

    .line 1557
    :cond_108
    const/16 v18, 0x0

    goto :goto_107

    .line 1560
    :cond_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # invokes: Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1561
    .local v8, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    if-ltz p2, :cond_121

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_124

    .line 1562
    :cond_121
    const/16 v18, 0x0

    goto :goto_107

    .line 1564
    :cond_124
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1565
    .local v7, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    iget-wide v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    # setter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$1402(Lorg/telegram/ui/DialogsActivity;J)J

    .line 1566
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v16, v0

    .line 1568
    .local v16, "pinned":Z
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 1569
    .local v5, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v15, v0

    .line 1570
    .local v15, "lower_id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v18

    const/16 v20, 0x20

    shr-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 1572
    .local v9, "high_id":I
    invoke-static {v7}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v18

    if-eqz v18, :cond_3e9

    .line 1573
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    neg-int v0, v15

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 1575
    .local v6, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v10, v0, [I

    const/16 v19, 0x0

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2a1

    const v18, 0x7f020096

    :goto_196
    aput v18, v10, v19

    const/16 v18, 0x1

    const v19, 0x7f020092

    aput v19, v10, v18

    const/16 v18, 0x2

    const v19, 0x7f020093

    aput v19, v10, v18

    const/16 v18, 0x3

    const v19, 0x7f02026a

    aput v19, v10, v18

    const/16 v18, 0x4

    const v19, 0x7f0201b2

    aput v19, v10, v18

    .line 1582
    .local v10, "icons":[I
    if-eqz v6, :cond_2e5

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2e5

    .line 1583
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/CharSequence;

    const/16 v19, 0x0

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-nez v18, :cond_1da

    .line 1584
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v18

    if-eqz v18, :cond_2b5

    :cond_1da
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2a6

    const-string v18, "UnpinFromTop"

    const v20, 0x7f070554

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_1ed
    aput-object v18, v14, v19

    const/16 v18, 0x1

    const-string v19, "ClearHistoryCache"

    const v20, 0x7f07017a

    .line 1585
    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v14, v18

    const/16 v19, 0x2

    if-eqz v6, :cond_206

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move/from16 v18, v0

    if-nez v18, :cond_2b9

    :cond_206
    const-string v18, "LeaveMegaMenu"

    const v20, 0x7f0702db

    .line 1586
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_213
    aput-object v18, v14, v19

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    .line 1587
    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/Favourite;->isFavourite(Ljava/lang/Long;)Z

    move-result v18

    if-eqz v18, :cond_2c8

    const-string v18, "DeleteFromFavorites"

    const v20, 0x7f0706af

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_238
    aput-object v18, v14, v19

    const/16 v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    .line 1588
    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v18

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "hide_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2d7

    const-string v18, "DeleteFromLock"

    const v20, 0x7f0706b0

    .line 1589
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_27e
    aput-object v18, v14, v19

    .line 1598
    .local v14, "items":[Ljava/lang/CharSequence;
    :goto_280
    new-instance v18, Lorg/telegram/ui/DialogsActivity$24$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v6}, Lorg/telegram/ui/DialogsActivity$24$2;-><init>(Lorg/telegram/ui/DialogsActivity$24;ZLorg/telegram/tgnet/TLRPC$Chat;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v14, v10, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1786
    .end local v6    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v10    # "icons":[I
    .end local v14    # "items":[Ljava/lang/CharSequence;
    :goto_29d
    const/16 v18, 0x1

    goto/16 :goto_107

    .line 1575
    .restart local v6    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2a1
    const v18, 0x7f020095

    goto/16 :goto_196

    .line 1584
    .restart local v10    # "icons":[I
    :cond_2a6
    const-string v18, "PinToTop"

    const v20, 0x7f070458

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1ed

    :cond_2b5
    const/16 v18, 0x0

    goto/16 :goto_1ed

    .line 1586
    :cond_2b9
    const-string v18, "DeleteMegaMenu"

    const v20, 0x7f0701d8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_213

    .line 1587
    :cond_2c8
    const-string v18, "AddToFavorites"

    const v20, 0x7f07063d

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_238

    .line 1589
    :cond_2d7
    const-string v18, "AddToLock"

    const v20, 0x7f07063e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_27e

    .line 1591
    :cond_2e5
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/CharSequence;

    const/16 v19, 0x0

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-nez v18, :cond_303

    .line 1592
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v18

    if-eqz v18, :cond_3ba

    :cond_303
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3ab

    const-string v18, "UnpinFromTop"

    const v20, 0x7f070554

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_316
    aput-object v18, v14, v19

    const/16 v18, 0x1

    const-string v19, "ClearHistoryCache"

    const v20, 0x7f07017a

    .line 1593
    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v14, v18

    const/16 v19, 0x2

    if-eqz v6, :cond_32f

    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move/from16 v18, v0

    if-nez v18, :cond_3be

    :cond_32f
    const-string v18, "LeaveChannelMenu"

    const v20, 0x7f0702d9

    .line 1594
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_33c
    aput-object v18, v14, v19

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    .line 1595
    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/Favourite;->isFavourite(Ljava/lang/Long;)Z

    move-result v18

    if-eqz v18, :cond_3cd

    const-string v18, "DeleteFromFavorites"

    const v20, 0x7f0706af

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_361
    aput-object v18, v14, v19

    const/16 v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    .line 1596
    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v18

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "hide_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3db

    const-string v18, "DeleteFromLock"

    const v20, 0x7f0706b0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_3a7
    aput-object v18, v14, v19

    .restart local v14    # "items":[Ljava/lang/CharSequence;
    goto/16 :goto_280

    .line 1592
    .end local v14    # "items":[Ljava/lang/CharSequence;
    :cond_3ab
    const-string v18, "PinToTop"

    const v20, 0x7f070458

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_316

    :cond_3ba
    const/16 v18, 0x0

    goto/16 :goto_316

    .line 1594
    :cond_3be
    const-string v18, "ChannelDeleteMenu"

    const v20, 0x7f070124

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_33c

    .line 1595
    :cond_3cd
    const-string v18, "AddToFavorites"

    const v20, 0x7f07063d

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_361

    .line 1596
    :cond_3db
    const-string v18, "AddToLock"

    const v20, 0x7f07063e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_3a7

    .line 1684
    .end local v6    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v10    # "icons":[I
    :cond_3e9
    if-gez v15, :cond_52d

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_52d

    const/4 v12, 0x1

    .line 1685
    .local v12, "isChat":Z
    :goto_3f2
    const/16 v17, 0x0

    .line 1686
    .local v17, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v12, :cond_40a

    if-lez v15, :cond_40a

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_40a

    .line 1687
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    .line 1689
    :cond_40a
    if-eqz v17, :cond_530

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v18, v0

    if-eqz v18, :cond_530

    const/4 v11, 0x1

    .line 1691
    .local v11, "isBot":Z
    :goto_415
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-nez v18, :cond_437

    .line 1692
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v21

    if-nez v15, :cond_533

    const/16 v18, 0x1

    :goto_42d
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->canPinDialog(Z)Z

    move-result v18

    if-eqz v18, :cond_546

    :cond_437
    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-eqz v18, :cond_537

    const-string v18, "UnpinFromTop"

    const v21, 0x7f070554

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_44a
    aput-object v18, v19, v20

    const/16 v18, 0x1

    const-string v20, "ClearHistory"

    const v21, 0x7f070179

    .line 1693
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v18

    const/16 v20, 0x2

    if-eqz v12, :cond_54a

    const-string v18, "DeleteChat"

    const v21, 0x7f0701d0

    .line 1694
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_46a
    aput-object v18, v19, v20

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    .line 1695
    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Components/Favourite;->isFavourite(Ljava/lang/Long;)Z

    move-result v18

    if-eqz v18, :cond_56a

    const-string v18, "DeleteFromFavorites"

    const v21, 0x7f0706af

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_48f
    aput-object v18, v19, v20

    const/16 v20, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    .line 1696
    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v18

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "hide_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_579

    const-string v18, "DeleteFromLock"

    const v21, 0x7f0706b0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_4d5
    aput-object v18, v19, v20

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    move/from16 v18, v0

    if-eqz v18, :cond_588

    const v18, 0x7f020096

    :goto_4ea
    aput v18, v20, v21

    const/16 v18, 0x1

    const v21, 0x7f020092

    aput v21, v20, v18

    const/16 v21, 0x2

    if-eqz v12, :cond_58d

    const v18, 0x7f020094

    :goto_4fa
    aput v18, v20, v21

    const/16 v18, 0x3

    const v21, 0x7f02026a

    aput v21, v20, v18

    const/16 v18, 0x4

    const v21, 0x7f0201b2

    aput v21, v20, v18

    new-instance v18, Lorg/telegram/ui/DialogsActivity$24$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12, v11}, Lorg/telegram/ui/DialogsActivity$24$3;-><init>(Lorg/telegram/ui/DialogsActivity$24;ZZZ)V

    .line 1691
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_29d

    .line 1684
    .end local v11    # "isBot":Z
    .end local v12    # "isChat":Z
    .end local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_52d
    const/4 v12, 0x0

    goto/16 :goto_3f2

    .line 1689
    .restart local v12    # "isChat":Z
    .restart local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_530
    const/4 v11, 0x0

    goto/16 :goto_415

    .line 1692
    .restart local v11    # "isBot":Z
    :cond_533
    const/16 v18, 0x0

    goto/16 :goto_42d

    :cond_537
    const-string v18, "PinToTop"

    const v21, 0x7f070458

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_44a

    :cond_546
    const/16 v18, 0x0

    goto/16 :goto_44a

    .line 1694
    :cond_54a
    if-eqz v11, :cond_55b

    const-string v18, "DeleteAndStop"

    const v21, 0x7f0701ce

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_46a

    :cond_55b
    const-string v18, "Delete"

    const v21, 0x7f0701c7

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_46a

    .line 1695
    :cond_56a
    const-string v18, "AddToFavorites"

    const v21, 0x7f07063d

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_48f

    .line 1696
    :cond_579
    const-string v18, "AddToLock"

    const v21, 0x7f07063e

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_4d5

    :cond_588
    const v18, 0x7f020095

    goto/16 :goto_4ea

    :cond_58d
    const v18, 0x7f020093

    goto/16 :goto_4fa
.end method

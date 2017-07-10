.class Lorg/telegram/ui/DialogsActivity$24$2;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$24;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$24;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic val$pinned:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$24;ZLorg/telegram/tgnet/TLRPC$Chat;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$24;

    .prologue
    .line 1598
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$pinned:Z

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1601
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    .line 1602
    .local v10, "isHide":Z
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "chat_unlocked"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1604
    .local v8, "chatUnlocked":Z
    const/4 v1, 0x3

    if-ne p2, v1, :cond_8a

    .line 1605
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1607
    .local v11, "localDialog2":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Favourite;->isFavourite(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 1608
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Favourite;->deleteFavourite(Ljava/lang/Long;)V

    .line 1609
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1610
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 1616
    .end local v11    # "localDialog2":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_8a
    :goto_8a
    const/4 v1, 0x4

    if-ne p2, v1, :cond_17e

    .line 1617
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->chatPassword:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d4

    .line 1618
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1680
    :cond_a8
    :goto_a8
    return-void

    .line 1611
    .restart local v11    # "localDialog2":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_a9
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Favourite;->isFavourite(Ljava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 1612
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Favourite;->addFavourite(Ljava/lang/Long;)V

    .line 1613
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 1620
    .end local v11    # "localDialog2":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_d4
    if-eqz v8, :cond_124

    if-eqz v10, :cond_124

    .line 1621
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1622
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1623
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1624
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 1625
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto :goto_a8

    .line 1626
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_124
    if-nez v8, :cond_a8

    if-nez v10, :cond_a8

    .line 1627
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1628
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1629
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1630
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 1631
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_a8

    .line 1634
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_17e
    if-nez p2, :cond_1ae

    .line 1635
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    iget-boolean v4, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$pinned:Z

    if-nez v4, :cond_1ac

    const/4 v4, 0x1

    :goto_191
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$pinned:Z

    if-nez v1, :cond_a8

    .line 1636
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->smoothScrollToPosition(I)V

    goto/16 :goto_a8

    .line 1635
    :cond_1ac
    const/4 v4, 0x0

    goto :goto_191

    .line 1638
    :cond_1ae
    if-eqz p2, :cond_a8

    const/4 v1, 0x3

    if-eq p2, v1, :cond_a8

    const/4 v1, 0x4

    if-eq p2, v1, :cond_a8

    .line 1639
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1640
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1641
    const/4 v1, 0x1

    if-ne p2, v1, :cond_220

    .line 1642
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_213

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_213

    .line 1643
    const-string v1, "AreYouSureClearHistorySuper"

    const v2, 0x7f0700a6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1647
    :goto_1e8
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$24$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$24$2$1;-><init>(Lorg/telegram/ui/DialogsActivity$24$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1677
    :cond_1f9
    :goto_1f9
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1678
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a8

    .line 1645
    :cond_213
    const-string v1, "AreYouSureClearHistoryChannel"

    const v2, 0x7f0700a5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1e8

    .line 1653
    :cond_220
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1f9

    .line 1654
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_25e

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_25e

    .line 1655
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_251

    .line 1656
    const-string v1, "MegaLeaveAlert"

    const v2, 0x7f070302

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1667
    :goto_23f
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$24$2$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$24$2$2;-><init>(Lorg/telegram/ui/DialogsActivity$24$2;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1f9

    .line 1658
    :cond_251
    const-string v1, "MegaDeleteAlert"

    const v2, 0x7f070300

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_23f

    .line 1661
    :cond_25e
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_268

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$2;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_275

    .line 1662
    :cond_268
    const-string v1, "ChannelLeaveAlert"

    const v2, 0x7f07012c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_23f

    .line 1664
    :cond_275
    const-string v1, "ChannelDeleteAlert"

    const v2, 0x7f070122

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_23f
.end method

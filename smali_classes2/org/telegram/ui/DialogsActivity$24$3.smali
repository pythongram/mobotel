.class Lorg/telegram/ui/DialogsActivity$24$3;
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

.field final synthetic val$isBot:Z

.field final synthetic val$isChat:Z

.field final synthetic val$pinned:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$24;ZZZ)V
    .registers 5
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$24;

    .prologue
    .line 1702
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$24$3;->val$pinned:Z

    iput-boolean p3, p0, Lorg/telegram/ui/DialogsActivity$24$3;->val$isChat:Z

    iput-boolean p4, p0, Lorg/telegram/ui/DialogsActivity$24$3;->val$isBot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 1705
    if-nez p2, :cond_2f

    .line 1706
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    iget-boolean v6, p0, Lorg/telegram/ui/DialogsActivity$24$3;->val$pinned:Z

    if-nez v6, :cond_2d

    :goto_15
    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->val$pinned:Z

    if-nez v1, :cond_2c

    .line 1707
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/RecyclerListView;->smoothScrollToPosition(I)V

    .line 1782
    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    move v4, v12

    .line 1706
    goto :goto_15

    .line 1710
    :cond_2f
    const/4 v1, 0x3

    if-ne p2, v1, :cond_ab

    .line 1711
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1713
    .local v11, "localDialog2":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Favourite;->isFavourite(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1714
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Favourite;->deleteFavourite(Ljava/lang/Long;)V

    .line 1715
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1716
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto :goto_2c

    .line 1717
    :cond_80
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Favourite;->isFavourite(Ljava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1718
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Favourite;->addFavourite(Ljava/lang/Long;)V

    .line 1719
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 1722
    .end local v11    # "localDialog2":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_ab
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1ae

    .line 1723
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

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

    .line 1724
    .local v10, "isHide":Z
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "chat_unlocked"

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1725
    .local v8, "chatUnlocked":Z
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->chatPassword:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_103

    .line 1726
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {v2, v12}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2c

    .line 1728
    :cond_103
    if-eqz v8, :cond_154

    if-eqz v10, :cond_154

    .line 1729
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1730
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

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

    .line 1731
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1732
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 1733
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2c

    .line 1734
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_154
    if-nez v8, :cond_2c

    if-nez v10, :cond_2c

    .line 1735
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1736
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

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

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1737
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1738
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 1739
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2c

    .line 1743
    .end local v8    # "chatUnlocked":Z
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "isHide":Z
    :cond_1ae
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1744
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1745
    if-ne p2, v4, :cond_1ff

    .line 1746
    const-string v1, "AreYouSureClearHistory"

    const v2, 0x7f0700a4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1754
    :cond_1d5
    :goto_1d5
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$24$3$1;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/DialogsActivity$24$3$1;-><init>(Lorg/telegram/ui/DialogsActivity$24$3;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1779
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1780
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->this$1:Lorg/telegram/ui/DialogsActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$24;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2c

    .line 1747
    :cond_1ff
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1d5

    .line 1748
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$24$3;->val$isChat:Z

    if-eqz v1, :cond_213

    .line 1749
    const-string v1, "AreYouSureDeleteAndExit"

    const v2, 0x7f0700a7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1d5

    .line 1751
    :cond_213
    const-string v1, "AreYouSureDeleteThisChat"

    const v2, 0x7f0700ab

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1d5
.end method

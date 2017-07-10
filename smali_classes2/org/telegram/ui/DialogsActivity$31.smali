.class Lorg/telegram/ui/DialogsActivity$31;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;


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
    .line 2061
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedOnSubDialog(I)V
    .registers 9
    .param p1, "did"    # I

    .prologue
    const/4 v6, 0x0

    .line 2075
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->onlySelect:Z
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2076
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    int-to-long v2, p1

    const/4 v4, 0x1

    # invokes: Lorg/telegram/ui/DialogsActivity;->didSelectResult(JZZ)V
    invoke-static {v1, v2, v3, v4, v6}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;JZZ)V

    .line 2104
    :cond_10
    :goto_10
    return-void

    .line 2078
    :cond_11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2079
    .local v0, "args":Landroid/os/Bundle;
    if-lez p1, :cond_79

    .line 2080
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2084
    :goto_1d
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 2085
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 2087
    :cond_2e
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2088
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 2089
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    int-to-long v4, p1

    # setter for: Lorg/telegram/ui/DialogsActivity;->openedDialogId:J
    invoke-static {v2, v4, v5}, Lorg/telegram/ui/DialogsActivity;->access$3502(Lorg/telegram/ui/DialogsActivity;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 2090
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v2, 0x200

    # invokes: Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V
    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$3600(Lorg/telegram/ui/DialogsActivity;I)V

    .line 2093
    :cond_53
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1700(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 2094
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2095
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2096
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_10

    .line 2082
    :cond_79
    const-string v1, "chat_id"

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1d

    .line 2099
    :cond_80
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2100
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_10
.end method

.method public needRemoveHint(I)V
    .registers 10
    .param p1, "did"    # I

    .prologue
    .line 2108
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_9

    .line 2126
    :cond_8
    :goto_8
    return-void

    .line 2111
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2112
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_8

    .line 2115
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2116
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2117
    const-string v2, "ChatHintsDelete"

    const v3, 0x7f07016a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2118
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/DialogsActivity$31$1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/DialogsActivity$31$1;-><init>(Lorg/telegram/ui/DialogsActivity$31;I)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2124
    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2125
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_8
.end method

.method public searchStateChanged(Z)V
    .registers 3
    .param p1, "search"    # Z

    .prologue
    .line 2064
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2065
    if-eqz p1, :cond_24

    .line 2066
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 2071
    :cond_23
    :goto_23
    return-void

    .line 2068
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_23
.end method

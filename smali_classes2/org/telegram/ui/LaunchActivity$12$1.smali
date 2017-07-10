.class Lorg/telegram/ui/LaunchActivity$12$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$12;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$12;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$12;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/LaunchActivity$12;

    .prologue
    .line 1631
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$12$1;->this$1:Lorg/telegram/ui/LaunchActivity$12;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$12$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$12$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1634
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$12$1;->this$1:Lorg/telegram/ui/LaunchActivity$12;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$12;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/LaunchActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_96

    .line 1636
    :try_start_c
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$12$1;->this$1:Lorg/telegram/ui/LaunchActivity$12;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$12;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_97

    .line 1640
    :goto_13
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$12$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v6, :cond_9d

    .line 1641
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$12$1;->this$1:Lorg/telegram/ui/LaunchActivity$12;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$12;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    if-eqz v6, :cond_96

    .line 1642
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$12$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1643
    .local v5, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_96

    .line 1644
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1645
    .local v2, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iput-boolean v9, v2, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    .line 1646
    iput-boolean v9, v2, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    .line 1647
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v9}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1648
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v9}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1649
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1650
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "chat_id"

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1651
    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7b

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v6

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, v6}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 1652
    :cond_7b
    new-instance v4, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1653
    .local v4, "fragment":Lorg/telegram/ui/ChatActivity;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1654
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$12$1;->this$1:Lorg/telegram/ui/LaunchActivity$12;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$12;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6, v4, v9, v10, v10}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1672
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v4    # "fragment":Lorg/telegram/ui/ChatActivity;
    .end local v5    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_96
    :goto_96
    return-void

    .line 1637
    :catch_97
    move-exception v3

    .line 1638
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 1659
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9d
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$12$1;->this$1:Lorg/telegram/ui/LaunchActivity$12;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$12;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1660
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v6, "AppName"

    const v7, 0x7f070092

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1661
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$12$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v7, "FLOOD_WAIT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_df

    .line 1662
    const-string v6, "FloodWait"

    const v7, 0x7f07021e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1668
    :goto_ca
    const-string v6, "OK"

    const v7, 0x7f0703d4

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1669
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$12$1;->this$1:Lorg/telegram/ui/LaunchActivity$12;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$12;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/LaunchActivity;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_96

    .line 1663
    :cond_df
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$12$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v7, "USERS_TOO_MUCH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 1664
    const-string v6, "JoinToGroupErrorFull"

    const v7, 0x7f0702b0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_ca

    .line 1666
    :cond_f8
    const-string v6, "JoinToGroupErrorNotExist"

    const v7, 0x7f0702b1

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_ca
.end method

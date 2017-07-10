.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    .prologue
    .line 1686
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    const v8, 0x7f070092

    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 1689
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z
    invoke-static {v5, v9}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2702(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z

    .line 1690
    const/4 v0, 0x0

    .line 1691
    .local v0, "ok":Z
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v5, :cond_a3

    .line 1692
    const/4 v0, 0x1

    .line 1693
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1694
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    .line 1695
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(I)V

    .line 1696
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1697
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1698
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 1699
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 1700
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1701
    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1702
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 1703
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1704
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v10, v10}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1706
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v6, v9}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1707
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 1708
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V

    .line 1709
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    .line 1710
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needFinishActivity()V
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)V

    .line 1784
    .end local v3    # "res":Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_8c
    :goto_8c
    if-eqz v0, :cond_a2

    .line 1785
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    if-ne v5, v11, :cond_a2

    .line 1786
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 1787
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->val$code:Ljava/lang/String;

    invoke-static {v5, v10}, Lorg/telegram/messenger/AndroidUtilities;->removeLoginPhoneCall(Ljava/lang/String;Z)V

    .line 1790
    :cond_a2
    return-void

    .line 1712
    :cond_a3
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;
    invoke-static {v5, v6}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3202(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;

    .line 1714
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "PHONE_NUMBER_UNOCCUPIED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_107

    .line 1715
    const/4 v0, 0x1

    .line 1716
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1717
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1718
    .local v1, "params":Landroid/os/Bundle;
    const-string v5, "phoneFormated"

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v6, v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    const-string v5, "phoneHash"

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v6, v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const-string v5, "code"

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v6, v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->val$req:Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v10, v1, v9}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 1722
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1723
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    goto :goto_8c

    .line 1724
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_107
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_137

    .line 1725
    const/4 v0, 0x1

    .line 1726
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 1727
    .local v2, "req2":Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;)V

    const/16 v7, 0xa

    invoke-virtual {v5, v2, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1752
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1753
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    goto/16 :goto_8c

    .line 1755
    .end local v2    # "req2":Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;
    :cond_137
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1756
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    if-ne v5, v11, :cond_15f

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_17e

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    if-eq v5, v7, :cond_17e

    :cond_15f
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    if-ne v5, v7, :cond_185

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_17e

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    if-ne v5, v11, :cond_185

    .line 1757
    :cond_17e
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 1759
    :cond_185
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    if-ne v5, v7, :cond_1d6

    .line 1760
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1761
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v6, v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    sget v7, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1766
    :cond_19f
    :goto_19f
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v5, v10}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4602(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z

    .line 1767
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    if-eq v5, v11, :cond_8c

    .line 1768
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "PHONE_NUMBER_INVALID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f1

    .line 1769
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v6, "AppName"

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "InvalidPhoneNumber"

    const v8, 0x7f07029c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8c

    .line 1762
    :cond_1d6
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    if-ne v5, v11, :cond_19f

    .line 1763
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1764
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v6, v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    sget v7, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto :goto_19f

    .line 1770
    :cond_1f1
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "PHONE_CODE_EMPTY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_209

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "PHONE_CODE_INVALID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_223

    .line 1771
    :cond_209
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v6, "AppName"

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "InvalidCode"

    const v8, 0x7f070298

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8c

    .line 1772
    :cond_223
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "PHONE_CODE_EXPIRED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25a

    .line 1773
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-virtual {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed()V

    .line 1774
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v10, v6, v10}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 1775
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v6, "AppName"

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CodeExpired"

    const v8, 0x7f070182

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8c

    .line 1776
    :cond_25a
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "FLOOD_WAIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_280

    .line 1777
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v6, "AppName"

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "FloodWait"

    const v8, 0x7f07021e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8c

    .line 1779
    :cond_280
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v6, "AppName"

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ErrorOccurred"

    const v9, 0x7f070210

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8c
.end method

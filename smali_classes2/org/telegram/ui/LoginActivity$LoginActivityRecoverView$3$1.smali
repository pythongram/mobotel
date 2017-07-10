.class Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    .prologue
    .line 2582
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const v6, 0x7f070092

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2585
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 2586
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->nextPressed:Z
    invoke-static {v4, v9}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$6602(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Z)Z

    .line 2587
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v4, :cond_7b

    .line 2588
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    .line 2589
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(I)V

    .line 2590
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 2591
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 2592
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2593
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2594
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 2595
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2596
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2597
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v8, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 2598
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5, v9}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 2599
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 2600
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V

    .line 2601
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    .line 2602
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needFinishActivity()V
    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)V

    .line 2619
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :goto_7a
    return-void

    .line 2604
    :cond_7b
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "CODE_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 2605
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    # invokes: Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->onPasscodeError(Z)V
    invoke-static {v4, v8}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$6700(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Z)V

    goto :goto_7a

    .line 2606
    :cond_8f
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "FLOOD_WAIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 2607
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2609
    .local v1, "time":I
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_ce

    .line 2610
    const-string v4, "Seconds"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2614
    .local v2, "timeString":Ljava/lang/String;
    :goto_b1
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FloodWaitTime"

    const v7, 0x7f07021f

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 2612
    .end local v2    # "timeString":Ljava/lang/String;
    :cond_ce
    const-string v4, "Minutes"

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "timeString":Ljava/lang/String;
    goto :goto_b1

    .line 2616
    .end local v1    # "time":I
    .end local v2    # "timeString":Ljava/lang/String;
    :cond_d7
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a
.end method

.class Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    .prologue
    .line 2800
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const v4, 0x7f070092

    .line 2803
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z
    invoke-static {v2, v6}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$6902(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Z)Z

    .line 2804
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 2805
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_7b

    .line 2806
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    .line 2807
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(I)V

    .line 2808
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 2809
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 2810
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2811
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2812
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 2813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2814
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2815
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 2817
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 2818
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 2819
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V

    .line 2820
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    .line 2821
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needFinishActivity()V
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)V

    .line 2837
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :goto_7a
    return-void

    .line 2823
    :cond_7b
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_NUMBER_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 2824
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v3, "AppName"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "InvalidPhoneNumber"

    const v5, 0x7f07029c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 2825
    :cond_a0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_EMPTY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b8

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 2826
    :cond_b8
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v3, "AppName"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "InvalidCode"

    const v5, 0x7f070298

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 2827
    :cond_d1
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_EXPIRED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 2828
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v3, "AppName"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CodeExpired"

    const v5, 0x7f070182

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    .line 2829
    :cond_f6
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FIRSTNAME_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 2830
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v3, "AppName"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "InvalidFirstName"

    const v5, 0x7f070299

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 2831
    :cond_11c
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "LASTNAME_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 2832
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v3, "AppName"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "InvalidLastName"

    const v5, 0x7f07029a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 2834
    :cond_142
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v3, "AppName"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a
.end method

.class Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p1, "this$4"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    .prologue
    .line 2055
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const v3, 0x7f070092

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2058
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 2059
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_5d

    .line 2060
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2061
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "phoneFormated"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->requestPhone:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5400(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    const-string v1, "phoneHash"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->phoneHash:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5500(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    const-string v1, "code"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->phoneCode:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5600(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v6, v0, v5}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 2080
    .end local v0    # "params":Landroid/os/Bundle;
    :goto_5c
    return-void

    .line 2066
    :cond_5d
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "2FA_RECENT_CONFIRM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 2067
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v2, "AppName"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResetAccountCancelledAlert"

    const v4, 0x7f070490

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 2068
    :cond_86
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "2FA_CONFIRM_WAIT_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 2069
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2070
    .restart local v0    # "params":Landroid/os/Bundle;
    const-string v1, "phoneFormated"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->requestPhone:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5400(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string v1, "phoneHash"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->phoneHash:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5500(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    const-string v1, "code"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->phoneCode:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5600(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    const-string v1, "startTime"

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2074
    const-string v1, "waitTime"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "2FA_CONFIRM_WAIT_"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2075
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v6, v0, v5}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto/16 :goto_5c

    .line 2077
    .end local v0    # "params":Landroid/os/Bundle;
    :cond_101
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v2, "AppName"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c
.end method

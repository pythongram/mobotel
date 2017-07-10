.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$4"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    .prologue
    .line 1730
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1733
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1734
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_81

    .line 1735
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;

    .line 1736
    .local v1, "password":Lorg/telegram/tgnet/TLRPC$TL_account_password;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1737
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "current_salt"

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;->current_salt:[B

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    const-string v2, "hint"

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;->hint:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const-string v2, "email_unconfirmed_pattern"

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    const-string v2, "phoneFormated"

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    const-string v2, "phoneHash"

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    const-string v2, "code"

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->val$req:Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const-string v5, "has_recovery"

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_password;->has_recovery:Z

    if-eqz v2, :cond_7f

    move v2, v3

    :goto_6d
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1744
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v5, 0x6

    invoke-virtual {v2, v5, v3, v0, v4}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 1748
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "password":Lorg/telegram/tgnet/TLRPC$TL_account_password;
    :goto_7e
    return-void

    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "password":Lorg/telegram/tgnet/TLRPC$TL_account_password;
    :cond_7f
    move v2, v4

    .line 1743
    goto :goto_6d

    .line 1746
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "password":Lorg/telegram/tgnet/TLRPC$TL_account_password;
    :cond_81
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e
.end method

.class Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;Lorg/telegram/ui/LoginActivity;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .prologue
    .line 1972
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1975
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->has_recovery:Z
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5000(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1976
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowProgress()V
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    .line 1977
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestPasswordRecovery;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_requestPasswordRecovery;-><init>()V

    .line 1978
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_requestPasswordRecovery;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 2027
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_requestPasswordRecovery;
    :goto_23
    return-void

    .line 2022
    :cond_24
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5100(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2023
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5200(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2024
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5300(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2025
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v2, "RestorePasswordNoEmailTitle"

    const v3, 0x7f0704a1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RestorePasswordNoEmailText"

    const v4, 0x7f0704a0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

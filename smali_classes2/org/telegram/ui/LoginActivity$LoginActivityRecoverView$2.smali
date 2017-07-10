.class Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Lorg/telegram/ui/LoginActivity;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    .prologue
    .line 2499
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 2502
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2503
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "RestoreEmailTroubleText"

    const v3, 0x7f07049f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2504
    const-string v2, "RestorePasswordNoEmailTitle"

    const v3, 0x7f0704a1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2505
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2511
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    .line 2512
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_4b

    .line 2513
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2514
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2516
    :cond_4b
    return-void
.end method

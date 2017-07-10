.class Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;
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
    .line 2040
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2043
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2044
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "ResetMyAccountWarningText"

    const v2, 0x7f070498

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2045
    const-string v1, "ResetMyAccountWarning"

    const v2, 0x7f070496

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2046
    const-string v1, "ResetMyAccountWarningReset"

    const v2, 0x7f070497

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2086
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2087
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2088
    return-void
.end method

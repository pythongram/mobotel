.class Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;Lorg/telegram/ui/LoginActivity;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .prologue
    .line 2317
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2320
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->startTime:I
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$5900(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->waitTime:I
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$6000(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 2360
    :goto_1b
    return-void

    .line 2323
    :cond_1c
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2324
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "ResetMyAccountWarningText"

    const v2, 0x7f070498

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2325
    const-string v1, "ResetMyAccountWarning"

    const v2, 0x7f070496

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2326
    const-string v1, "ResetMyAccountWarningReset"

    const v2, 0x7f070497

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2358
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2359
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1b
.end method

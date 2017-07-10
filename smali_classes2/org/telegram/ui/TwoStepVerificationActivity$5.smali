.class Lorg/telegram/ui/TwoStepVerificationActivity$5;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 322
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 325
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->setPasswordRow:I
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$900(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-eq p2, v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->changePasswordRow:I
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1000(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-ne p2, v2, :cond_2e

    .line 326
    :cond_11
    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v1, v3}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>(I)V

    .line 327
    .local v1, "fragment":Lorg/telegram/ui/TwoStepVerificationActivity;
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1100(Lorg/telegram/ui/TwoStepVerificationActivity;)[B

    move-result-object v2

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B

    .line 328
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v2

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 329
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 350
    .end local v1    # "fragment":Lorg/telegram/ui/TwoStepVerificationActivity;
    :cond_2d
    :goto_2d
    return-void

    .line 330
    :cond_2e
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->setRecoveryEmailRow:I
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1200(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-eq p2, v2, :cond_3e

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->changeRecoveryEmailRow:I
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1300(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-ne p2, v2, :cond_62

    .line 331
    :cond_3e
    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v1, v3}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>(I)V

    .line 332
    .restart local v1    # "fragment":Lorg/telegram/ui/TwoStepVerificationActivity;
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1100(Lorg/telegram/ui/TwoStepVerificationActivity;)[B

    move-result-object v2

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPasswordHash:[B
    invoke-static {v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1102(Lorg/telegram/ui/TwoStepVerificationActivity;[B)[B

    .line 333
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v2

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-static {v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$202(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 334
    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->emailOnly:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1402(Lorg/telegram/ui/TwoStepVerificationActivity;Z)Z

    .line 335
    const/4 v2, 0x3

    # setter for: Lorg/telegram/ui/TwoStepVerificationActivity;->passwordSetState:I
    invoke-static {v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$502(Lorg/telegram/ui/TwoStepVerificationActivity;I)I

    .line 336
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2d

    .line 337
    .end local v1    # "fragment":Lorg/telegram/ui/TwoStepVerificationActivity;
    :cond_62
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->turnPasswordOffRow:I
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1500(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-eq p2, v2, :cond_72

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # getter for: Lorg/telegram/ui/TwoStepVerificationActivity;->abortPasswordRow:I
    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-ne p2, v2, :cond_2d

    .line 338
    :cond_72
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "TurnPasswordOffQuestion"

    const v3, 0x7f070549

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 340
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 341
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/TwoStepVerificationActivity$5$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$5$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$5;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 347
    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 348
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$5;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2d
.end method

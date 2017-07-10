.class Lorg/telegram/ui/TwoStepVerificationActivity$11$1;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity$11;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity$11;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/TwoStepVerificationActivity$11;

    .prologue
    .line 851
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const v6, 0x7f070092

    const/4 v9, 0x0

    .line 854
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v4, :cond_51

    .line 855
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 856
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v4, "OK"

    const v5, 0x7f0703d4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/TwoStepVerificationActivity$11$1$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/TwoStepVerificationActivity$11$1$1;-><init>(Lorg/telegram/ui/TwoStepVerificationActivity$11$1;)V

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 863
    const-string v4, "PasswordReset"

    const v5, 0x7f070407

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 864
    const-string v4, "AppName"

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 865
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    .line 866
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_50

    .line 867
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 868
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 886
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_50
    :goto_50
    return-void

    .line 871
    :cond_51
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "CODE_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 872
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->onPasscodeError(Z)V
    invoke-static {v4, v8}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2500(Lorg/telegram/ui/TwoStepVerificationActivity;Z)V

    goto :goto_50

    .line 873
    :cond_65
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "FLOOD_WAIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 874
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 876
    .local v2, "time":I
    const/16 v4, 0x3c

    if-ge v2, v4, :cond_a2

    .line 877
    const-string v4, "Seconds"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 881
    .local v3, "timeString":Ljava/lang/String;
    :goto_87
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FloodWaitTime"

    const v7, 0x7f07021f

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 879
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_a2
    const-string v4, "Minutes"

    div-int/lit8 v5, v2, 0x3c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "timeString":Ljava/lang/String;
    goto :goto_87

    .line 883
    .end local v2    # "time":I
    .end local v3    # "timeString":Ljava/lang/String;
    :cond_ab
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->this$1:Lorg/telegram/ui/TwoStepVerificationActivity$11;

    iget-object v4, v4, Lorg/telegram/ui/TwoStepVerificationActivity$11;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    const-string v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity$11$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/TwoStepVerificationActivity;->showAlertWithText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$600(Lorg/telegram/ui/TwoStepVerificationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method

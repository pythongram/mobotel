.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    .prologue
    .line 1396
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f070092

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2702(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)Z

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_2b

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->val$params:Landroid/os/Bundle;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    # invokes: Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V
    invoke-static {v1, v2, v0}, Lorg/telegram/ui/LoginActivity;->access$1900(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V

    .line 1419
    :cond_21
    :goto_21
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 1420
    return-void

    .line 1403
    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 1404
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1405
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "InvalidPhoneNumber"

    const v3, 0x7f07029c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 1406
    :cond_56
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1407
    :cond_6e
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "InvalidCode"

    const v3, 0x7f070298

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 1408
    :cond_87
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed()V

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1, v4}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CodeExpired"

    const v3, 0x7f070182

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 1412
    :cond_be
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FloodWait"

    const v3, 0x7f07021e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 1414
    :cond_e4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_21

    .line 1415
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v1, "AppName"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorOccurred"

    const v4, 0x7f070210

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21
.end method

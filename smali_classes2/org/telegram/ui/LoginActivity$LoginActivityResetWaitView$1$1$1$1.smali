.class Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p1, "this$4"    # Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

    .prologue
    .line 2335
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const v3, 0x7f070092

    .line 2338
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 2339
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_5d

    .line 2340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2341
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "phoneFormated"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->requestPhone:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$6100(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    const-string v1, "phoneHash"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->phoneHash:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$6200(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    const-string v1, "code"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;

    iget-object v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->phoneCode:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$6300(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 2352
    .end local v0    # "params":Landroid/os/Bundle;
    :goto_5c
    return-void

    .line 2346
    :cond_5d
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "2FA_RECENT_CONFIRM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 2347
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->this$0:Lorg/telegram/ui/LoginActivity;

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

    .line 2349
    :cond_86
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->this$4:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1;->this$3:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    iget-object v1, v1, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v2, "AppName"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView$1$1$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

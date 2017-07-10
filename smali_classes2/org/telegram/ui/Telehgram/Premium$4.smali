.class Lorg/telegram/ui/Telehgram/Premium$4;
.super Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;
.source "Premium.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/Premium;->sendPurchaseToServer(Lorg/telegram/util/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/Premium;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/Premium;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/Premium;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-direct {p0}, Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;->onFailed(ILjava/lang/String;)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    # getter for: Lorg/telegram/ui/Telehgram/Premium;->mAlertDialog:Lorg/telegram/ui/Telehgram/AppAlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/Premium;->access$100(Lorg/telegram/ui/Telehgram/Premium;)Lorg/telegram/ui/Telehgram/AppAlertDialog;

    move-result-object v0

    const-string v1, "\u0634\u0645\u0627 \u067e\u0631\u062f\u0627\u062e\u062a \u0645\u0648\u0641\u0642\u06cc \u0646\u062f\u0627\u0634\u062a\u0647 \u0627\u06cc\u062f"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    # getter for: Lorg/telegram/ui/Telehgram/Premium;->mAlertDialog:Lorg/telegram/ui/Telehgram/AppAlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/Premium;->access$100(Lorg/telegram/ui/Telehgram/Premium;)Lorg/telegram/ui/Telehgram/AppAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->show()V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/Premium;->setWaitScreen(Z)V

    .line 270
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 235
    invoke-super {p0}, Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;->onStart()V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/Premium;->setWaitScreen(Z)V

    .line 238
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 232
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/Premium$4;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 242
    invoke-super {p0, p1}, Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;->onSuccess(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/Premium;->setWaitScreen(Z)V

    .line 244
    const-string v0, "Invalid Data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    const-string v1, "\u0634\u0645\u0627 \u067e\u0631\u062f\u0627\u062e\u062a \u0645\u0648\u0641\u0642\u06cc \u0646\u062f\u0627\u0634\u062a\u0647 \u0627\u06cc\u062f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    :goto_1d
    return-void

    .line 248
    :cond_1e
    const-string v0, "Verify Failed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    # getter for: Lorg/telegram/ui/Telehgram/Premium;->mAlertDialog:Lorg/telegram/ui/Telehgram/AppAlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/Premium;->access$100(Lorg/telegram/ui/Telehgram/Premium;)Lorg/telegram/ui/Telehgram/AppAlertDialog;

    move-result-object v0

    const v1, 0x7f07093e

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->setTitle(I)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    # getter for: Lorg/telegram/ui/Telehgram/Premium;->mAlertDialog:Lorg/telegram/ui/Telehgram/AppAlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/Premium;->access$100(Lorg/telegram/ui/Telehgram/Premium;)Lorg/telegram/ui/Telehgram/AppAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->show()V

    goto :goto_1d

    .line 254
    :cond_3c
    sput-boolean v2, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/Premium;->updateUi()V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/Premium;->setWaitScreen(Z)V

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    const-class v3, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/Premium;->startActivity(Landroid/content/Intent;)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$4;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/Premium;->finish()V

    goto :goto_1d
.end method

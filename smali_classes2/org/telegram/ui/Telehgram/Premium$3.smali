.class Lorg/telegram/ui/Telehgram/Premium$3;
.super Ljava/lang/Object;
.source "Premium.java"

# interfaces
.implements Lorg/telegram/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/Premium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/Premium;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/Premium;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/Premium;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Purchase;)V
    .registers 7
    .param p1, "result"    # Lorg/telegram/util/IabResult;
    .param p2, "purchase"    # Lorg/telegram/util/Purchase;

    .prologue
    const/4 v3, 0x0

    .line 203
    const-string v0, "savedPremium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p1}, Lorg/telegram/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 205
    const-string v0, "savedPremium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error purchasing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Telehgram/Premium;->setWaitScreen(Z)V

    .line 227
    :cond_46
    :goto_46
    return-void

    .line 209
    :cond_47
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Telehgram/Premium;->verifyDeveloperPayload(Lorg/telegram/util/Purchase;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    const-string v1, "Error purchasing. Authenticity verification failed."

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/Premium;->complain(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Telehgram/Premium;->setWaitScreen(Z)V

    goto :goto_46

    .line 215
    :cond_5c
    const-string v0, "savedPremium"

    const-string v1, "Purchase successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    # invokes: Lorg/telegram/ui/Telehgram/Premium;->sendPurchaseToServer(Lorg/telegram/util/Purchase;)V
    invoke-static {v0, p2}, Lorg/telegram/ui/Telehgram/Premium;->access$000(Lorg/telegram/ui/Telehgram/Premium;Lorg/telegram/util/Purchase;)V

    .line 217
    const-string v0, "savedPremium"

    const-string v1, "Purchase successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p2}, Lorg/telegram/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tellgram"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 220
    const-string v0, "savedPremium"

    const-string v1, "Purchase is premium upgrade. Congratulating user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/Premium;->updateUi()V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Telehgram/Premium;->setWaitScreen(Z)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    const-class v3, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/Premium;->startActivity(Landroid/content/Intent;)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$3;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/Premium;->finish()V

    goto :goto_46
.end method

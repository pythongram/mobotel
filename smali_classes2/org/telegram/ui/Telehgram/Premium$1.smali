.class Lorg/telegram/ui/Telehgram/Premium$1;
.super Ljava/lang/Object;
.source "Premium.java"

# interfaces
.implements Lorg/telegram/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/Premium;->onCreate(Landroid/os/Bundle;)V
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
    .line 134
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/Premium$1;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lorg/telegram/util/IabResult;)V
    .registers 5
    .param p1, "result"    # Lorg/telegram/util/IabResult;

    .prologue
    .line 137
    invoke-virtual {p1}, Lorg/telegram/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 138
    const-string v0, "savedPremium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem setting up In-app Billing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$1;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/Premium;->mHelper:Lorg/telegram/util/IabHelper;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/Premium$1;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    iget-object v1, v1, Lorg/telegram/ui/Telehgram/Premium;->mGotInventoryListener:Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lorg/telegram/util/IabHelper;->queryInventoryAsync(Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 141
    return-void
.end method

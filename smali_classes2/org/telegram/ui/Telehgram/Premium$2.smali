.class Lorg/telegram/ui/Telehgram/Premium$2;
.super Ljava/lang/Object;
.source "Premium.java"

# interfaces
.implements Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;


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
    .line 150
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/Premium$2;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Inventory;)V
    .registers 6
    .param p1, "result"    # Lorg/telegram/util/IabResult;
    .param p2, "inventory"    # Lorg/telegram/util/Inventory;

    .prologue
    .line 152
    const-string v0, "savedPremium"

    const-string v1, "Query inventory finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p1}, Lorg/telegram/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 154
    const-string v0, "savedPremium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query inventory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$2;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/Premium;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 169
    :goto_2c
    return-void

    .line 159
    :cond_2d
    const-string v0, "savedPremium"

    const-string v1, "Query inventory was successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "tellgram"

    invoke-virtual {p2, v0}, Lorg/telegram/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    .line 161
    const-string v0, "tellgram"

    invoke-virtual {p2, v0}, Lorg/telegram/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    .line 162
    const-string v1, "savedPremium"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lorg/telegram/ui/LaunchActivity;->mIsUprade:Z

    if-eqz v0, :cond_7c

    const-string v0, "PREMIUM"

    :goto_57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$2;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/Premium;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$2;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/Premium;->updateUi()V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Premium$2;->this$0:Lorg/telegram/ui/Telehgram/Premium;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/Premium;->setWaitScreen(Z)V

    .line 167
    const-string v0, "savedPremium"

    const-string v1, "Initial inventory query finished; enabling main UI."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 162
    :cond_7c
    const-string v0, "NOT PREMIUM"

    goto :goto_57
.end method

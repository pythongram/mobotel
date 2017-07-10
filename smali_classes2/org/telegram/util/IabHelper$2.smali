.class Lorg/telegram/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lorg/telegram/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/util/IabHelper;

    .prologue
    .line 407
    iput-object p1, p0, Lorg/telegram/util/IabHelper$2;->this$0:Lorg/telegram/util/IabHelper;

    iput-boolean p2, p0, Lorg/telegram/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lorg/telegram/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lorg/telegram/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lorg/telegram/util/IabHelper$2;->val$listener:Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 409
    new-instance v3, Lorg/telegram/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 410
    .local v3, "result":Lorg/telegram/util/IabResult;
    const/4 v1, 0x0

    .line 412
    .local v1, "inv":Lorg/telegram/util/Inventory;
    :try_start_9
    iget-object v5, p0, Lorg/telegram/util/IabHelper$2;->this$0:Lorg/telegram/util/IabHelper;

    iget-boolean v6, p0, Lorg/telegram/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lorg/telegram/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/util/IabHelper;->queryInventory(ZLjava/util/List;)Lorg/telegram/util/Inventory;
    :try_end_12
    .catch Lorg/telegram/util/IabException; {:try_start_9 .. :try_end_12} :catch_25

    move-result-object v1

    .line 418
    :goto_13
    iget-object v5, p0, Lorg/telegram/util/IabHelper$2;->this$0:Lorg/telegram/util/IabHelper;

    invoke-virtual {v5}, Lorg/telegram/util/IabHelper;->flagEndAsync()V

    .line 420
    move-object v4, v3

    .line 421
    .local v4, "result_f":Lorg/telegram/util/IabResult;
    move-object v2, v1

    .line 422
    .local v2, "inv_f":Lorg/telegram/util/Inventory;
    iget-object v5, p0, Lorg/telegram/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lorg/telegram/util/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lorg/telegram/util/IabHelper$2$1;-><init>(Lorg/telegram/util/IabHelper$2;Lorg/telegram/util/IabResult;Lorg/telegram/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void

    .line 414
    .end local v2    # "inv_f":Lorg/telegram/util/Inventory;
    .end local v4    # "result_f":Lorg/telegram/util/IabResult;
    :catch_25
    move-exception v0

    .line 415
    .local v0, "ex":Lorg/telegram/util/IabException;
    invoke-virtual {v0}, Lorg/telegram/util/IabException;->getResult()Lorg/telegram/util/IabResult;

    move-result-object v3

    goto :goto_13
.end method

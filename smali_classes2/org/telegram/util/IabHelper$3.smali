.class Lorg/telegram/util/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lorg/telegram/util/IabHelper;Ljava/util/List;Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/util/IabHelper;

    .prologue
    .line 681
    iput-object p1, p0, Lorg/telegram/util/IabHelper$3;->this$0:Lorg/telegram/util/IabHelper;

    iput-object p2, p0, Lorg/telegram/util/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lorg/telegram/util/IabHelper$3;->val$singleListener:Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lorg/telegram/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lorg/telegram/util/IabHelper$3;->val$multiListener:Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 683
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/util/IabResult;>;"
    iget-object v3, p0, Lorg/telegram/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/util/Purchase;

    .line 686
    .local v1, "purchase":Lorg/telegram/util/Purchase;
    :try_start_17
    iget-object v4, p0, Lorg/telegram/util/IabHelper$3;->this$0:Lorg/telegram/util/IabHelper;

    invoke-virtual {v4, v1}, Lorg/telegram/util/IabHelper;->consume(Lorg/telegram/util/Purchase;)V

    .line 687
    new-instance v4, Lorg/telegram/util/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successful consume of sku "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/telegram/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lorg/telegram/util/IabException; {:try_start_17 .. :try_end_3c} :catch_3d

    goto :goto_b

    .line 689
    :catch_3d
    move-exception v0

    .line 690
    .local v0, "ex":Lorg/telegram/util/IabException;
    invoke-virtual {v0}, Lorg/telegram/util/IabException;->getResult()Lorg/telegram/util/IabResult;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 694
    .end local v0    # "ex":Lorg/telegram/util/IabException;
    .end local v1    # "purchase":Lorg/telegram/util/Purchase;
    :cond_46
    iget-object v3, p0, Lorg/telegram/util/IabHelper$3;->this$0:Lorg/telegram/util/IabHelper;

    invoke-virtual {v3}, Lorg/telegram/util/IabHelper;->flagEndAsync()V

    .line 695
    iget-object v3, p0, Lorg/telegram/util/IabHelper$3;->val$singleListener:Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v3, :cond_59

    .line 696
    iget-object v3, p0, Lorg/telegram/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lorg/telegram/util/IabHelper$3$1;

    invoke-direct {v4, p0, v2}, Lorg/telegram/util/IabHelper$3$1;-><init>(Lorg/telegram/util/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 702
    :cond_59
    iget-object v3, p0, Lorg/telegram/util/IabHelper$3;->val$multiListener:Lorg/telegram/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v3, :cond_67

    .line 703
    iget-object v3, p0, Lorg/telegram/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lorg/telegram/util/IabHelper$3$2;

    invoke-direct {v4, p0, v2}, Lorg/telegram/util/IabHelper$3$2;-><init>(Lorg/telegram/util/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 709
    :cond_67
    return-void
.end method

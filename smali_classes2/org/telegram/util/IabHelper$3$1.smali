.class Lorg/telegram/util/IabHelper$3$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/util/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/util/IabHelper$3;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/telegram/util/IabHelper$3;Ljava/util/List;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/util/IabHelper$3;

    .prologue
    .line 696
    iput-object p1, p0, Lorg/telegram/util/IabHelper$3$1;->this$1:Lorg/telegram/util/IabHelper$3;

    iput-object p2, p0, Lorg/telegram/util/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 698
    iget-object v0, p0, Lorg/telegram/util/IabHelper$3$1;->this$1:Lorg/telegram/util/IabHelper$3;

    iget-object v2, v0, Lorg/telegram/util/IabHelper$3;->val$singleListener:Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lorg/telegram/util/IabHelper$3$1;->this$1:Lorg/telegram/util/IabHelper$3;

    iget-object v0, v0, Lorg/telegram/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/util/Purchase;

    iget-object v1, p0, Lorg/telegram/util/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/util/IabResult;

    invoke-interface {v2, v0, v1}, Lorg/telegram/util/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lorg/telegram/util/Purchase;Lorg/telegram/util/IabResult;)V

    .line 699
    return-void
.end method

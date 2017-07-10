.class Lorg/telegram/util/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/util/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/util/IabHelper$2;

.field final synthetic val$inv_f:Lorg/telegram/util/Inventory;

.field final synthetic val$result_f:Lorg/telegram/util/IabResult;


# direct methods
.method constructor <init>(Lorg/telegram/util/IabHelper$2;Lorg/telegram/util/IabResult;Lorg/telegram/util/Inventory;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/util/IabHelper$2;

    .prologue
    .line 422
    iput-object p1, p0, Lorg/telegram/util/IabHelper$2$1;->this$1:Lorg/telegram/util/IabHelper$2;

    iput-object p2, p0, Lorg/telegram/util/IabHelper$2$1;->val$result_f:Lorg/telegram/util/IabResult;

    iput-object p3, p0, Lorg/telegram/util/IabHelper$2$1;->val$inv_f:Lorg/telegram/util/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 424
    iget-object v0, p0, Lorg/telegram/util/IabHelper$2$1;->this$1:Lorg/telegram/util/IabHelper$2;

    iget-object v0, v0, Lorg/telegram/util/IabHelper$2;->val$listener:Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lorg/telegram/util/IabHelper$2$1;->val$result_f:Lorg/telegram/util/IabResult;

    iget-object v2, p0, Lorg/telegram/util/IabHelper$2$1;->val$inv_f:Lorg/telegram/util/Inventory;

    invoke-interface {v0, v1, v2}, Lorg/telegram/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lorg/telegram/util/IabResult;Lorg/telegram/util/Inventory;)V

    .line 425
    return-void
.end method

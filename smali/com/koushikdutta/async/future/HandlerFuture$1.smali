.class Lcom/koushikdutta/async/future/HandlerFuture$1;
.super Ljava/lang/Object;
.source "HandlerFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/HandlerFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/future/HandlerFuture;

.field final synthetic val$callback:Lcom/koushikdutta/async/future/FutureCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/HandlerFuture;Lcom/koushikdutta/async/future/FutureCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/koushikdutta/async/future/HandlerFuture;

    .prologue
    .line 21
    .local p0, "this":Lcom/koushikdutta/async/future/HandlerFuture$1;, "Lcom/koushikdutta/async/future/HandlerFuture.1;"
    iput-object p1, p0, Lcom/koushikdutta/async/future/HandlerFuture$1;->this$0:Lcom/koushikdutta/async/future/HandlerFuture;

    iput-object p2, p0, Lcom/koushikdutta/async/future/HandlerFuture$1;->val$callback:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/koushikdutta/async/future/HandlerFuture$1;, "Lcom/koushikdutta/async/future/HandlerFuture.1;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/future/HandlerFuture$1;->this$0:Lcom/koushikdutta/async/future/HandlerFuture;

    iget-object v1, v1, Lcom/koushikdutta/async/future/HandlerFuture;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/future/HandlerFuture$1;->val$callback:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 35
    :goto_13
    return-void

    .line 29
    :cond_14
    iget-object v0, p0, Lcom/koushikdutta/async/future/HandlerFuture$1;->this$0:Lcom/koushikdutta/async/future/HandlerFuture;

    iget-object v0, v0, Lcom/koushikdutta/async/future/HandlerFuture;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/koushikdutta/async/future/HandlerFuture$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/future/HandlerFuture$1$1;-><init>(Lcom/koushikdutta/async/future/HandlerFuture$1;Ljava/lang/Exception;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method

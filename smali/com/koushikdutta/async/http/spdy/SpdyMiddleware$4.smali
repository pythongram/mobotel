.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;
.super Ljava/lang/Object;
.source "SpdyMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleCancellable;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/future/SimpleCancellable;)V
    .registers 4
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$ret:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "conn"    # Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    .prologue
    .line 370
    instance-of v0, p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    if-eqz v0, :cond_1b

    .line 371
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "spdy not available"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$ret:Lcom/koushikdutta/async/future/SimpleCancellable;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    # invokes: Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    invoke-static {v1, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$601(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;

    .line 383
    :cond_1a
    :goto_1a
    return-void

    .line 375
    :cond_1b
    if-eqz p1, :cond_2e

    .line 376
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$ret:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 377
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_1a

    .line 380
    :cond_2e
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using existing spdy connection for host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$ret:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 382
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    # invokes: Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->newSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    invoke-static {v0, v1, p2, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$400(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    goto :goto_1a
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Exception;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 367
    check-cast p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;)V

    return-void
.end method

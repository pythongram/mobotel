.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;
.super Ljava/lang/Object;
.source "SpdyMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->exchangeHeaders(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
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
        "Lcom/koushikdutta/async/http/Headers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

.field final synthetic val$spdySocket:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;)V
    .registers 4
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->val$spdySocket:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/Headers;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "result"    # Lcom/koushikdutta/async/http/Headers;

    .prologue
    .line 426
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->receiveHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 427
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->val$spdySocket:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->val$spdySocket:Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->getConnection()Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    move-result-object v2

    iget-object v2, v2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Lcom/koushikdutta/async/http/HttpUtil;->getBodyDecoder(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/Protocol;Lcom/koushikdutta/async/http/Headers;Z)Lcom/koushikdutta/async/DataEmitter;

    move-result-object v0

    .line 428
    .local v0, "emitter":Lcom/koushikdutta/async/DataEmitter;
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->emitter(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 429
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Exception;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 423
    check-cast p2, Lcom/koushikdutta/async/http/Headers;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/Headers;)V

    return-void
.end method

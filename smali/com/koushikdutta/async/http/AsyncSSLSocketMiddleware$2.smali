.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

.field final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic val$port:I

.field final synthetic val$proxied:Z

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;Lcom/koushikdutta/async/callback/ConnectCallback;ZLcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V
    .registers 7
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-boolean p3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$proxied:Z

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$uri:Landroid/net/Uri;

    iput p6, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 10
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "socket"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    .line 93
    if-eqz p1, :cond_8

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 150
    :goto_7
    return-void

    .line 98
    :cond_8
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$proxied:Z

    if-nez v0, :cond_1b

    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$uri:Landroid/net/Uri;

    iget v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$port:I

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->tryHandshake(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILcom/koushikdutta/async/callback/ConnectCallback;)V

    goto :goto_7

    .line 106
    :cond_1b
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "connect":Ljava/lang/String;
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-static {p2, v0, v1}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_7
.end method

.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

.field final synthetic val$next:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3
    .param p1, "this$2"    # Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->val$next:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 8
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "socket"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    const/4 v4, 0x0

    .line 226
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->isDone()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal error during connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v3, v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->val$inetSockAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    .line 228
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->val$next:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v4}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 250
    :cond_32
    :goto_32
    return-void

    .line 233
    :cond_33
    if-eqz p1, :cond_41

    .line 234
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iput-object p1, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->lastException:Ljava/lang/Exception;

    .line 235
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->val$next:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v4}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_32

    .line 240
    :cond_41
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->isDone()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 241
    :cond_55
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Recycling extra socket leftover from cancelled operation"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    # invokes: Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    invoke-static {v0, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->access$000(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 243
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    # invokes: Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    invoke-static {v0, p2, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->access$100(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    goto :goto_32

    .line 247
    :cond_7d
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    invoke-virtual {v0, v4, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 248
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2$1;->this$2:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;->this$1:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v0, v4, p2}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_32
.end method

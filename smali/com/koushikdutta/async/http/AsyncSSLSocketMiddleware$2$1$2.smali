.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->onCompleted(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_13

    if-nez p1, :cond_13

    .line 144
    new-instance p1, Ljava/io/IOException;

    .end local p1    # "ex":Ljava/lang/Exception;
    const-string v0, "socket closed before proxy connect response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local p1    # "ex":Ljava/lang/Exception;
    :cond_13
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 146
    return-void
.end method

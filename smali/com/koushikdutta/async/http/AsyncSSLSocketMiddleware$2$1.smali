.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

.field final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 3
    .param p1, "this$1"    # Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 111
    if-eqz p1, :cond_c

    .line 112
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v1, p1, v2}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 148
    :goto_b
    return-void

    .line 116
    :cond_c
    new-instance v0, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v0}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    .line 117
    .local v0, "liner":Lcom/koushikdutta/async/LineEmitter;
    new-instance v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$1;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/LineEmitter;->setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 138
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 140
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v2, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1$2;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$2$1;)V

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_b
.end method

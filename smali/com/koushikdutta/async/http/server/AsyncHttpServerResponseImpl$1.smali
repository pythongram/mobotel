.class Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;
.super Ljava/lang/Object;
.source "AsyncHttpServerResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->initFirstWrite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field final synthetic val$isChunked:Z


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-boolean p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->val$isChunked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .registers 6
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x0

    .line 106
    if-eqz p1, :cond_9

    .line 107
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->report(Ljava/lang/Exception;)V

    .line 136
    :goto_8
    return-void

    .line 110
    :cond_9
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->val$isChunked:Z

    if-eqz v1, :cond_48

    .line 111
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;-><init>(Lcom/koushikdutta/async/DataSink;)V

    .line 112
    .local v0, "chunked":Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->setMaxBuffer(I)V

    .line 113
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-object v0, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    .line 119
    .end local v0    # "chunked":Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;
    :goto_1e
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v2, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 120
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-object v3, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 121
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v2, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 122
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-object v3, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 123
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-boolean v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->ended:Z

    if-eqz v1, :cond_51

    .line 125
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    goto :goto_8

    .line 116
    :cond_48
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v2, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    iput-object v2, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    goto :goto_1e

    .line 128
    :cond_51
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_8
.end method

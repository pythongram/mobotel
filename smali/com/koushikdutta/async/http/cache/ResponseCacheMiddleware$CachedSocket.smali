.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;
.super Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedSocket"
.end annotation


# instance fields
.field closed:Z

.field closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field open:Z

.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V
    .registers 6
    .param p2, "cacheResponse"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;
    .param p3, "contentLength"    # J

    .prologue
    .line 742
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    .line 743
    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->allowEnd:Z

    .line 745
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->open:Z

    .line 784
    return-void
.end method

.method public end()V
    .registers 1

    .prologue
    .line 749
    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    # getter for: Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->server:Lcom/koushikdutta/async/AsyncServer;
    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->access$300(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 769
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->open:Z

    return v0
.end method

.method protected report(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 753
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->report(Ljava/lang/Exception;)V

    .line 754
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->closed:Z

    if-eqz v0, :cond_8

    .line 759
    :cond_7
    :goto_7
    return-void

    .line 756
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->closed:Z

    .line 757
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_7

    .line 758
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 794
    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 2
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/WritableCallback;

    .prologue
    .line 774
    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 2
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 764
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 765
    return-void
.end method

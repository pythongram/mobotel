.class public Lcom/koushikdutta/async/future/MultiFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "MultiFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final callback:Lcom/koushikdutta/async/future/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    .local p0, "this":Lcom/koushikdutta/async/future/MultiFuture;, "Lcom/koushikdutta/async/future/MultiFuture<TT;>;"
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 11
    new-instance v0, Lcom/koushikdutta/async/future/MultiFuture$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/MultiFuture$1;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    iput-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->callback:Lcom/koushikdutta/async/future/FutureCallback;

    return-void
.end method


# virtual methods
.method public bridge synthetic setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 3
    .param p1, "x0"    # Lcom/koushikdutta/async/future/FutureCallback;

    .prologue
    .line 8
    .local p0, "this":Lcom/koushikdutta/async/future/MultiFuture;, "Lcom/koushikdutta/async/future/MultiFuture<TT;>;"
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/MultiFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/MultiFuture;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/MultiFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<TT;>;)",
            "Lcom/koushikdutta/async/future/MultiFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/koushikdutta/async/future/MultiFuture;, "Lcom/koushikdutta/async/future/MultiFuture<TT;>;"
    .local p1, "callback":Lcom/koushikdutta/async/future/FutureCallback;, "Lcom/koushikdutta/async/future/FutureCallback<TT;>;"
    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->callbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->callbacks:Ljava/util/ArrayList;

    .line 33
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    .line 47
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->callback:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-super {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 48
    return-object p0

    .line 34
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public bridge synthetic setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
    .registers 3
    .param p1, "x0"    # Lcom/koushikdutta/async/future/FutureCallback;

    .prologue
    .line 8
    .local p0, "this":Lcom/koushikdutta/async/future/MultiFuture;, "Lcom/koushikdutta/async/future/MultiFuture<TT;>;"
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/MultiFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/MultiFuture;

    move-result-object v0

    return-object v0
.end method

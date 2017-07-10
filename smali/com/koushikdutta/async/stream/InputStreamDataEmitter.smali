.class public Lcom/koushikdutta/async/stream/InputStreamDataEmitter;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# instance fields
.field callback:Lcom/koushikdutta/async/callback/DataCallback;

.field endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field inputStream:Ljava/io/InputStream;

.field mToAlloc:I

.field paused:Z

.field pending:Lcom/koushikdutta/async/ByteBufferList;

.field pumper:Ljava/lang/Runnable;

.field server:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/InputStream;)V
    .registers 4
    .param p1, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->mToAlloc:I

    .line 74
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 75
    new-instance v0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;-><init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->pumper:Ljava/lang/Runnable;

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->server:Lcom/koushikdutta/async/AsyncServer;

    .line 24
    iput-object p2, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->inputStream:Ljava/io/InputStream;

    .line 25
    invoke-direct {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->doResume()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "x0"    # Lcom/koushikdutta/async/stream/InputStreamDataEmitter;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method private doResume()V
    .registers 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->pumper:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method private report(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;-><init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 71
    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->report(Ljava/lang/Exception;)V

    .line 144
    :try_start_4
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 148
    :goto_9
    return-void

    .line 146
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->server:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->paused:Z

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->paused:Z

    .line 48
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->paused:Z

    .line 53
    invoke-direct {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->doResume()V

    .line 54
    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/DataCallback;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    .line 32
    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 128
    return-void
.end method

.class public Lcom/koushikdutta/async/FileDataEmitter;
.super Lcom/koushikdutta/async/DataEmitterBase;
.source "FileDataEmitter.java"


# instance fields
.field callback:Lcom/koushikdutta/async/callback/DataCallback;

.field channel:Ljava/nio/channels/FileChannel;

.field file:Ljava/io/File;

.field paused:Z

.field pending:Lcom/koushikdutta/async/ByteBufferList;

.field pumper:Ljava/lang/Runnable;

.field server:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/File;)V
    .registers 4
    .param p1, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/koushikdutta/async/DataEmitterBase;-><init>()V

    .line 60
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 62
    new-instance v0, Lcom/koushikdutta/async/FileDataEmitter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/FileDataEmitter$1;-><init>(Lcom/koushikdutta/async/FileDataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->pumper:Ljava/lang/Runnable;

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->server:Lcom/koushikdutta/async/AsyncServer;

    .line 20
    iput-object p2, p0, Lcom/koushikdutta/async/FileDataEmitter;->file:Ljava/io/File;

    .line 21
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->paused:Z

    .line 22
    iget-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->paused:Z

    if-nez v0, :cond_25

    .line 23
    invoke-direct {p0}, Lcom/koushikdutta/async/FileDataEmitter;->doResume()V

    .line 24
    :cond_25
    return-void

    .line 21
    :cond_26
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private doResume()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->server:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter;->pumper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 94
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 113
    :goto_5
    return-void

    .line 111
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->server:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->paused:Z

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->paused:Z

    .line 46
    return-void
.end method

.method protected report(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/FileDataEmitter;->channel:Ljava/nio/channels/FileChannel;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 57
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    .line 58
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/FileDataEmitter;->paused:Z

    .line 51
    invoke-direct {p0}, Lcom/koushikdutta/async/FileDataEmitter;->doResume()V

    .line 52
    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/DataCallback;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/koushikdutta/async/FileDataEmitter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    .line 30
    return-void
.end method

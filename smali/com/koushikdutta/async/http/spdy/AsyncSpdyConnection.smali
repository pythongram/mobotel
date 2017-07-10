.class public Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;
.super Ljava/lang/Object;
.source "AsyncSpdyConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    }
.end annotation


# static fields
.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000


# instance fields
.field bufferedSocket:Lcom/koushikdutta/async/BufferedDataSink;

.field bytesLeftInWriteWindow:J

.field client:Z

.field private lastGoodStreamId:I

.field private nextPingId:I

.field private nextStreamId:I

.field final okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

.field peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/koushikdutta/async/http/spdy/Ping;",
            ">;"
        }
    .end annotation
.end field

.field protocol:Lcom/koushikdutta/async/http/Protocol;

.field reader:Lcom/koushikdutta/async/http/spdy/FrameReader;

.field private receivedInitialPeerSettings:Z

.field shutdown:Z

.field socket:Lcom/koushikdutta/async/AsyncSocket;

.field sockets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;",
            ">;"
        }
    .end annotation
.end field

.field totalWindowRead:I

.field variant:Lcom/koushikdutta/async/http/spdy/Variant;

.field writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/Protocol;)V
    .registers 9
    .param p1, "socket"    # Lcom/koushikdutta/async/AsyncSocket;
    .param p2, "protocol"    # Lcom/koushikdutta/async/http/Protocol;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    .line 33
    iput-boolean v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->client:Z

    .line 266
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    .line 423
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    .line 424
    iput-boolean v5, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->receivedInitialPeerSettings:Z

    .line 271
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    .line 272
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 273
    new-instance v1, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bufferedSocket:Lcom/koushikdutta/async/BufferedDataSink;

    .line 275
    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v1, :cond_68

    .line 276
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Spdy3;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/Spdy3;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    .line 281
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    invoke-interface {v1, p1, p0, v2}, Lcom/koushikdutta/async/http/spdy/Variant;->newReader(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)Lcom/koushikdutta/async/http/spdy/FrameReader;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->reader:Lcom/koushikdutta/async/http/spdy/FrameReader;

    .line 282
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bufferedSocket:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-interface {v1, v4, v2}, Lcom/koushikdutta/async/http/spdy/Variant;->newWriter(Lcom/koushikdutta/async/BufferedDataSink;Z)Lcom/koushikdutta/async/http/spdy/FrameWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    .line 284
    const/4 v0, 0x1

    .line 285
    .local v0, "client":Z
    if-eqz v0, :cond_74

    move v1, v2

    :goto_4b
    iput v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 286
    if-eqz v0, :cond_59

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v1, :cond_59

    .line 287
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 289
    :cond_59
    if-eqz v0, :cond_76

    :goto_5b
    iput v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextPingId:I

    .line 294
    if-eqz v0, :cond_67

    .line 295
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/4 v2, 0x7

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v2, v5, v3}, Lcom/koushikdutta/async/http/spdy/Settings;->set(III)Lcom/koushikdutta/async/http/spdy/Settings;

    .line 297
    :cond_67
    return-void

    .line 278
    .end local v0    # "client":Z
    :cond_68
    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne p2, v1, :cond_35

    .line 279
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->variant:Lcom/koushikdutta/async/http/spdy/Variant;

    goto :goto_35

    .restart local v0    # "client":Z
    :cond_74
    move v1, v3

    .line 285
    goto :goto_4b

    :cond_76
    move v2, v3

    .line 289
    goto :goto_5b
.end method

.method private newStream(ILjava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .registers 17
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;ZZ)",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    if-nez p3, :cond_c

    const/4 v3, 0x1

    .line 50
    .local v3, "outFinished":Z
    :goto_3
    if-nez p4, :cond_e

    const/4 v4, 0x1

    .line 54
    .local v4, "inFinished":Z
    :goto_6
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->shutdown:Z

    if-eqz v1, :cond_10

    .line 55
    const/4 v0, 0x0

    .line 75
    :goto_b
    return-object v0

    .line 49
    .end local v3    # "outFinished":Z
    .end local v4    # "inFinished":Z
    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    .line 50
    .restart local v3    # "outFinished":Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_6

    .line 58
    .restart local v4    # "inFinished":Z
    :cond_10
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 59
    .local v2, "streamId":I
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    .line 60
    new-instance v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;-><init>(Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;IZZLjava/util/List;)V

    .line 61
    .local v0, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 62
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2e
    if-nez p1, :cond_42

    .line 67
    :try_start_30
    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    move v6, v3

    move v7, v4

    move v8, v2

    move v9, p1

    move-object v10, p2

    invoke-interface/range {v5 .. v10}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->synStream(ZZIILjava/util/List;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3a} :catch_3b

    goto :goto_b

    .line 77
    :catch_3b
    move-exception v11

    .line 78
    .local v11, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 69
    .end local v11    # "e":Ljava/io/IOException;
    :cond_42
    :try_start_42
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->client:Z

    if-eqz v1, :cond_4e

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_4e
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v1, p1, v2, p2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->pushPromise(IILjava/util/List;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_53} :catch_3b

    goto :goto_b
.end method

.method private pushedStream(I)Z
    .registers 4
    .param p1, "streamId"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->protocol:Lcom/koushikdutta/async/http/Protocol;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne v0, v1, :cond_e

    if-eqz p1, :cond_e

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private declared-synchronized removePing(I)Lcom/koushikdutta/async/http/spdy/Ping;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 474
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/Ping;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILcom/koushikdutta/async/http/spdy/Ping;)V
    .registers 6
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/koushikdutta/async/http/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/koushikdutta/async/http/spdy/Ping;->send()V

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->ping(ZII)V

    .line 471
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .registers 3

    .prologue
    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->ackSettings()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 465
    return-void

    .line 462
    :catch_6
    move-exception v0

    .line 463
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method addBytesToWriteWindow(J)V
    .registers 8
    .param p1, "delta"    # J

    .prologue
    .line 451
    iget-wide v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->bytesLeftInWriteWindow:J

    .line 452
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 453
    .local v1, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    invoke-static {v1}, Lcom/koushikdutta/async/Util;->writable(Lcom/koushikdutta/async/DataSink;)V

    goto :goto_f

    .line 455
    .end local v1    # "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    :cond_1f
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lcom/koushikdutta/async/http/spdy/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .prologue
    .line 534
    return-void
.end method

.method public data(ZILcom/koushikdutta/async/ByteBufferList;)V
    .registers 9
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 319
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pushedStream(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 320
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "push"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 324
    :cond_e
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 325
    .local v2, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    if-nez v2, :cond_2e

    .line 327
    :try_start_1c
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object v4, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {v3, p2, v4}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_27

    .line 332
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 344
    :cond_26
    :goto_26
    return-void

    .line 329
    :catch_27
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 335
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2e
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    .line 336
    .local v1, "length":I
    iget-object v3, v2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p3, v3}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 337
    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->updateWindowRead(I)V

    .line 338
    iget-object v3, v2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v2, v3}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 339
    if-eqz p1, :cond_26

    .line 340
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->close()V

    .line 342
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    goto :goto_26
.end method

.method public error(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 538
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 539
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 540
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 541
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/DataEmitter;

    invoke-static {v2, p1}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 542
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 544
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;"
    :cond_28
    return-void
.end method

.method public goAway(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .param p3, "debugData"    # Lcom/koushikdutta/async/http/spdy/ByteString;

    .prologue
    .line 498
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->shutdown:Z

    .line 501
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 502
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 503
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 504
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 505
    .local v2, "streamId":I
    if-le v2, p1, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->isLocallyInitiated()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/DataEmitter;

    new-instance v4, Ljava/io/IOException;

    sget-object v5, Lcom/koushikdutta/async/http/spdy/ErrorCode;->REFUSED_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 507
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 510
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;>;"
    .end local v2    # "streamId":I
    :cond_49
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V
    .registers 11
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lcom/koushikdutta/async/http/spdy/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;",
            "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 350
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    invoke-direct {p0, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pushedStream(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 351
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "push"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 357
    :cond_e
    iget-boolean v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->shutdown:Z

    if-eqz v2, :cond_13

    .line 407
    :cond_12
    :goto_12
    return-void

    .line 359
    :cond_13
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 361
    .local v1, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    if-nez v1, :cond_4a

    .line 363
    invoke-virtual {p6}, Lcom/koushikdutta/async/http/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 365
    :try_start_27
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object v3, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {v2, p3, v3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_12

    .line 368
    :catch_2f
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 374
    .end local v0    # "e":Ljava/io/IOException;
    :cond_36
    iget v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->lastGoodStreamId:I

    if-le p3, v2, :cond_12

    .line 377
    rem-int/lit8 v2, p3, 0x2

    iget v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->nextStreamId:I

    rem-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_12

    .line 379
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "unexpected receive stream"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 390
    :cond_4a
    invoke-virtual {p6}, Lcom/koushikdutta/async/http/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 392
    :try_start_50
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    sget-object v3, Lcom/koushikdutta/async/http/spdy/ErrorCode;->INVALID_STREAM:Lcom/koushikdutta/async/http/spdy/ErrorCode;

    invoke-interface {v2, p3, v3}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_57} :catch_61

    .line 397
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 394
    :catch_61
    move-exception v0

    .line 395
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :cond_68
    invoke-virtual {v1, p5, p6}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->receiveHeaders(Ljava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 403
    if-eqz p2, :cond_12

    .line 404
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    goto :goto_12
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    .registers 5
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;ZZ)",
            "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->newStream(ILjava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    move-result-object v0

    return-object v0
.end method

.method public ping(ZII)V
    .registers 8
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    .line 479
    if-eqz p1, :cond_c

    .line 480
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->removePing(I)Lcom/koushikdutta/async/http/spdy/Ping;

    move-result-object v1

    .line 481
    .local v1, "ping":Lcom/koushikdutta/async/http/spdy/Ping;
    if-eqz v1, :cond_b

    .line 482
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/spdy/Ping;->receive()V

    .line 493
    .end local v1    # "ping":Lcom/koushikdutta/async/http/spdy/Ping;
    :cond_b
    :goto_b
    return-void

    .line 487
    :cond_c
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_e
    invoke-direct {p0, v2, p2, p3, v3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writePing(ZIILcom/koushikdutta/async/http/spdy/Ping;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_b

    .line 489
    :catch_12
    move-exception v0

    .line 490
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public priority(IIIZ)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 525
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 6
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "pushPromise"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    .registers 6
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/koushikdutta/async/http/spdy/ErrorCode;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->pushedStream(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 412
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "push"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 416
    :cond_e
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 417
    .local v0, "rstStream":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    if-eqz v0, :cond_28

    .line 418
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V

    .line 420
    :cond_28
    return-void
.end method

.method public sendConnectionPreface()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x10000

    .line 304
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v1}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->connectionPreface()V

    .line 305
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->settings(Lcom/koushikdutta/async/http/spdy/Settings;)V

    .line 306
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result v0

    .line 307
    .local v0, "windowSize":I
    if-eq v0, v3, :cond_1f

    .line 308
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    const/4 v2, 0x0

    sub-int v3, v0, v3

    int-to-long v4, v3

    invoke-interface {v1, v2, v4, v5}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->windowUpdate(IJ)V

    .line 310
    :cond_1f
    return-void
.end method

.method public settings(ZLcom/koushikdutta/async/http/spdy/Settings;)V
    .registers 12
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lcom/koushikdutta/async/http/spdy/Settings;

    .prologue
    const/high16 v8, 0x10000

    .line 427
    const-wide/16 v0, 0x0

    .line 428
    .local v0, "delta":J
    iget-object v7, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v7, v8}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result v5

    .line 429
    .local v5, "priorWriteWindowSize":I
    if-eqz p1, :cond_11

    .line 430
    iget-object v7, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v7}, Lcom/koushikdutta/async/http/spdy/Settings;->clear()V

    .line 431
    :cond_11
    iget-object v7, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v7, p2}, Lcom/koushikdutta/async/http/spdy/Settings;->merge(Lcom/koushikdutta/async/http/spdy/Settings;)V

    .line 433
    :try_start_16
    iget-object v7, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    invoke-interface {v7}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->ackSettings()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_4d

    .line 437
    iget-object v7, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->peerSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-virtual {v7, v8}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result v4

    .line 438
    .local v4, "peerInitialWindowSize":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_33

    if-eq v4, v5, :cond_33

    .line 439
    sub-int v7, v4, v5

    int-to-long v0, v7

    .line 440
    iget-boolean v7, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->receivedInitialPeerSettings:Z

    if-nez v7, :cond_33

    .line 441
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->addBytesToWriteWindow(J)V

    .line 442
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->receivedInitialPeerSettings:Z

    .line 445
    :cond_33
    iget-object v7, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 446
    .local v6, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    invoke-virtual {v6, v0, v1}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->addBytesToWriteWindow(J)V

    goto :goto_3d

    .line 434
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "peerInitialWindowSize":I
    .end local v6    # "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    :catch_4d
    move-exception v2

    .line 435
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 448
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "peerInitialWindowSize":I
    :cond_54
    return-void
.end method

.method updateWindowRead(I)V
    .registers 9
    .param p1, "length"    # I

    .prologue
    const/4 v6, 0x0

    .line 84
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    .line 85
    iget v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->okHttpSettings:Lcom/koushikdutta/async/http/spdy/Settings;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/spdy/Settings;->getInitialWindowSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_1f

    .line 87
    :try_start_14
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->writer:Lcom/koushikdutta/async/http/spdy/FrameWriter;

    const/4 v2, 0x0

    iget v3, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    int-to-long v4, v3

    invoke-interface {v1, v2, v4, v5}, Lcom/koushikdutta/async/http/spdy/FrameWriter;->windowUpdate(IJ)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_20

    .line 92
    iput v6, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->totalWindowRead:I

    .line 94
    :cond_1f
    return-void

    .line 89
    :catch_20
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public windowUpdate(IJ)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 514
    if-nez p1, :cond_6

    .line 515
    invoke-virtual {p0, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->addBytesToWriteWindow(J)V

    .line 521
    :cond_5
    :goto_5
    return-void

    .line 518
    :cond_6
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sockets:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 519
    .local v0, "socket":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;
    if-eqz v0, :cond_5

    .line 520
    invoke-virtual {v0, p2, p3}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->addBytesToWriteWindow(J)V

    goto :goto_5
.end method

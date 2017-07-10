.class public final Lokhttp3/internal/framed/FramedConnection;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/FramedConnection$Listener;,
        Lokhttp3/internal/framed/FramedConnection$Reader;,
        Lokhttp3/internal/framed/FramedConnection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameWriter:Lokhttp3/internal/framed/FrameWriter;

.field private final hostname:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field private final listener:Lokhttp3/internal/framed/FramedConnection$Listener;

.field private nextPingId:I

.field private nextStreamId:I

.field okHttpSettings:Lokhttp3/internal/framed/Settings;

.field final peerSettings:Lokhttp3/internal/framed/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lokhttp3/Protocol;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lokhttp3/internal/framed/PushObserver;

.field final readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/FramedStream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final variant:Lokhttp3/internal/framed/Variant;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 55
    const-class v0, Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v8

    :goto_b
    sput-boolean v0, Lokhttp3/internal/framed/FramedConnection;->$assertionsDisabled:Z

    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    .line 71
    invoke-static {v0, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 69
    return-void

    :cond_27
    move v0, v2

    .line 55
    goto :goto_b
.end method

.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection$Builder;)V
    .registers 14
    .param p1, "builder"    # Lokhttp3/internal/framed/FramedConnection$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->idleStartTimeNs:J

    .line 105
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 114
    new-instance v0, Lokhttp3/internal/framed/Settings;

    invoke-direct {v0}, Lokhttp3/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    .line 120
    new-instance v0, Lokhttp3/internal/framed/Settings;

    invoke-direct {v0}, Lokhttp3/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    .line 122
    iput-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    .line 839
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    .line 131
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->protocol:Lokhttp3/Protocol;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$000(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    .line 132
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->pushObserver:Lokhttp3/internal/framed/PushObserver;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$100(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    .line 133
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    .line 134
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$300(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    .line 136
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_ef

    move v0, v3

    :goto_4f
    iput v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 137
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v4, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v4, :cond_63

    .line 138
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 141
    :cond_63
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_6a

    move v1, v3

    :cond_6a
    iput v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    .line 147
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 148
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    .line 151
    :cond_79
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->hostname:Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$400(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_f2

    .line 154
    new-instance v0, Lokhttp3/internal/framed/Http2;

    invoke-direct {v0}, Lokhttp3/internal/framed/Http2;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    .line 156
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 158
    invoke-static {v0, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 160
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    .line 161
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    .line 168
    :goto_bc
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 169
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$500(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    .line 170
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->sink:Lokio/BufferedSink;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$600(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lokhttp3/internal/framed/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    .line 172
    new-instance v0, Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->source:Lokio/BufferedSource;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$700(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSource;

    move-result-object v2

    iget-boolean v3, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lokhttp3/internal/framed/FrameReader;

    move-result-object v1

    invoke-direct {v0, p0, v1, v11}, Lokhttp3/internal/framed/FramedConnection$Reader;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;Lokhttp3/internal/framed/FramedConnection$1;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

    .line 173
    return-void

    :cond_ef
    move v0, v1

    .line 136
    goto/16 :goto_4f

    .line 162
    :cond_f2
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_102

    .line 163
    new-instance v0, Lokhttp3/internal/framed/Spdy3;

    invoke-direct {v0}, Lokhttp3/internal/framed/Spdy3;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    .line 164
    iput-object v11, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_bc

    .line 166
    :cond_102
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection$Builder;Lokhttp3/internal/framed/FramedConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lokhttp3/internal/framed/FramedConnection$Builder;
    .param p2, "x1"    # Lokhttp3/internal/framed/FramedConnection$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;-><init>(Lokhttp3/internal/framed/FramedConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # Lokhttp3/internal/framed/ErrorCode;
    .param p2, "x2"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V
    .registers 5
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lokio/BufferedSource;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->pushDataLater(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic access$1500(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .registers 4
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1600(Lokhttp3/internal/framed/FramedConnection;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1602(Lokhttp3/internal/framed/FramedConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1700(Lokhttp3/internal/framed/FramedConnection;)I
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 55
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic access$1702(Lokhttp3/internal/framed/FramedConnection;I)I
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1800(Lokhttp3/internal/framed/FramedConnection;)I
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 55
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    return v0
.end method

.method static synthetic access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/FramedConnection$Listener;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2200(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->pushResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$2300(Lokhttp3/internal/framed/FramedConnection;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic access$2302(Lokhttp3/internal/framed/FramedConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic access$2400(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->removePing(I)Lokhttp3/internal/framed/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    .registers 5
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lokhttp3/internal/framed/Ping;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->writePingLater(ZIILokhttp3/internal/framed/Ping;)V

    return-void
.end method

.method static synthetic access$2600(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2700(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic access$2800(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    .registers 5
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lokhttp3/internal/framed/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->writePing(ZIILokhttp3/internal/framed/Ping;)V

    return-void
.end method

.method private close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .registers 13
    .param p1, "connectionCode"    # Lokhttp3/internal/framed/ErrorCode;
    .param p2, "streamCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 449
    sget-boolean v7, Lokhttp3/internal/framed/FramedConnection;->$assertionsDisabled:Z

    if-nez v7, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 450
    :cond_11
    const/4 v6, 0x0

    .line 452
    .local v6, "thrown":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->shutdown(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_6b

    .line 457
    :goto_15
    const/4 v5, 0x0

    .line 458
    .local v5, "streamsToClose":[Lokhttp3/internal/framed/FramedStream;
    const/4 v3, 0x0

    .line 459
    .local v3, "pingsToCancel":[Lokhttp3/internal/framed/Ping;
    monitor-enter p0

    .line 460
    :try_start_18
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3f

    .line 461
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lokhttp3/internal/framed/FramedStream;

    move-object v5, v0

    .line 462
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 463
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lokhttp3/internal/framed/FramedConnection;->setIdle(Z)V

    .line 465
    :cond_3f
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v7, :cond_5c

    .line 466
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lokhttp3/internal/framed/Ping;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lokhttp3/internal/framed/Ping;

    move-object v3, v0

    .line 467
    const/4 v7, 0x0

    iput-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 469
    :cond_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_18 .. :try_end_5d} :catchall_6e

    .line 471
    if-eqz v5, :cond_76

    .line 472
    array-length v9, v5

    move v7, v8

    :goto_61
    if-ge v7, v9, :cond_76

    aget-object v4, v5, v7

    .line 474
    .local v4, "stream":Lokhttp3/internal/framed/FramedStream;
    :try_start_65
    invoke-virtual {v4, p2}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_71

    .line 472
    :cond_68
    :goto_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    .line 453
    .end local v3    # "pingsToCancel":[Lokhttp3/internal/framed/Ping;
    .end local v4    # "stream":Lokhttp3/internal/framed/FramedStream;
    .end local v5    # "streamsToClose":[Lokhttp3/internal/framed/FramedStream;
    :catch_6b
    move-exception v1

    .line 454
    .local v1, "e":Ljava/io/IOException;
    move-object v6, v1

    goto :goto_15

    .line 469
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "pingsToCancel":[Lokhttp3/internal/framed/Ping;
    .restart local v5    # "streamsToClose":[Lokhttp3/internal/framed/FramedStream;
    :catchall_6e
    move-exception v7

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v7

    .line 475
    .restart local v4    # "stream":Lokhttp3/internal/framed/FramedStream;
    :catch_71
    move-exception v1

    .line 476
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_68

    move-object v6, v1

    goto :goto_68

    .line 481
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Lokhttp3/internal/framed/FramedStream;
    :cond_76
    if-eqz v3, :cond_84

    .line 482
    array-length v9, v3

    move v7, v8

    :goto_7a
    if-ge v7, v9, :cond_84

    aget-object v2, v3, v7

    .line 483
    .local v2, "ping":Lokhttp3/internal/framed/Ping;
    invoke-virtual {v2}, Lokhttp3/internal/framed/Ping;->cancel()V

    .line 482
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    .line 489
    .end local v2    # "ping":Lokhttp3/internal/framed/Ping;
    :cond_84
    :try_start_84
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v7}, Lokhttp3/internal/framed/FrameWriter;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_89} :catch_91

    .line 496
    :cond_89
    :goto_89
    :try_start_89
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8e} :catch_96

    .line 501
    :goto_8e
    if-eqz v6, :cond_99

    throw v6

    .line 490
    :catch_91
    move-exception v1

    .line 491
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v6, :cond_89

    move-object v6, v1

    goto :goto_89

    .line 497
    .end local v1    # "e":Ljava/io/IOException;
    :catch_96
    move-exception v1

    .line 498
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v1

    goto :goto_8e

    .line 502
    .end local v1    # "e":Ljava/io/IOException;
    :cond_99
    return-void
.end method

.method private newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;
    .registers 17
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    if-nez p3, :cond_1c

    const/4 v3, 0x1

    .line 251
    .local v3, "outFinished":Z
    :goto_3
    if-nez p4, :cond_1e

    const/4 v4, 0x1

    .line 256
    .local v4, "inFinished":Z
    :goto_6
    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v9

    .line 257
    :try_start_9
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_19

    .line 258
    :try_start_a
    iget-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v2, :cond_20

    .line 259
    new-instance v2, Ljava/io/IOException;

    const-string v5, "shutdown"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :catchall_16
    move-exception v2

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    :try_start_18
    throw v2

    .line 278
    :catchall_19
    move-exception v2

    monitor-exit v9
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v2

    .line 250
    .end local v3    # "outFinished":Z
    .end local v4    # "inFinished":Z
    :cond_1c
    const/4 v3, 0x0

    goto :goto_3

    .line 251
    .restart local v3    # "outFinished":Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_6

    .line 261
    .restart local v4    # "inFinished":Z
    :cond_20
    :try_start_20
    iget v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 262
    .local v1, "streamId":I
    iget v2, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    .line 263
    new-instance v0, Lokhttp3/internal/framed/FramedStream;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 264
    .local v0, "stream":Lokhttp3/internal/framed/FramedStream;
    if-eqz p3, :cond_41

    iget-wide v6, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-eqz v2, :cond_41

    iget-wide v6, v0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-nez v2, :cond_69

    :cond_41
    const/4 v8, 0x1

    .line 265
    .local v8, "flushHeaders":Z
    :goto_42
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 266
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lokhttp3/internal/framed/FramedConnection;->setIdle(Z)V

    .line 269
    :cond_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_20 .. :try_end_56} :catchall_16

    .line 270
    if-nez p1, :cond_6b

    .line 271
    :try_start_58
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lokhttp3/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    .line 278
    :goto_60
    monitor-exit v9
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_19

    .line 280
    if-eqz v8, :cond_68

    .line 281
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v2}, Lokhttp3/internal/framed/FrameWriter;->flush()V

    .line 284
    :cond_68
    return-object v0

    .line 264
    .end local v8    # "flushHeaders":Z
    :cond_69
    const/4 v8, 0x0

    goto :goto_42

    .line 273
    .restart local v8    # "flushHeaders":Z
    :cond_6b
    :try_start_6b
    iget-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-eqz v2, :cond_77

    .line 274
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_77
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v2, p1, v1, p2}, Lokhttp3/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_19

    goto :goto_60
.end method

.method private pushDataLater(ILokio/BufferedSource;IZ)V
    .registers 14
    .param p1, "streamId"    # I
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 889
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 890
    .local v5, "buffer":Lokio/Buffer;
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 891
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    .line 892
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_37

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_37
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/framed/FramedConnection$6;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 907
    return-void
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .registers 12
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 867
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/framed/FramedConnection$5;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 881
    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .registers 10
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    monitor-enter p0

    .line 843
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 844
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    .line 845
    monitor-exit p0

    .line 863
    :goto_13
    return-void

    .line 847
    :cond_14
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 848
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3d

    .line 849
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection$4;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    .line 848
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method private pushResetLater(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    .line 910
    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection$7;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 918
    return-void
.end method

.method private pushedStream(I)Z
    .registers 4
    .param p1, "streamId"    # I

    .prologue
    .line 835
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

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

.method private declared-synchronized removePing(I)Lokhttp3/internal/framed/Ping;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 413
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Ping;
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

.method private declared-synchronized setIdle(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 201
    monitor-enter p0

    if-eqz p1, :cond_b

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_7
    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :cond_b
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILokhttp3/internal/framed/Ping;)V
    .registers 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lokhttp3/internal/framed/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v1

    .line 407
    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lokhttp3/internal/framed/Ping;->send()V

    .line 408
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lokhttp3/internal/framed/FrameWriter;->ping(ZII)V

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private writePingLater(ZIILokhttp3/internal/framed/Ping;)V
    .registers 14
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lokhttp3/internal/framed/Ping;

    .prologue
    .line 393
    sget-object v8, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 394
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/framed/FramedConnection$3;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/framed/Ping;)V

    .line 393
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6
    .param p1, "delta"    # J

    .prologue
    .line 341
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 342
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 343
    :cond_e
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    .line 446
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0}, Lokhttp3/internal/framed/FrameWriter;->flush()V

    .line 418
    return-void
.end method

.method public declared-synchronized getIdleStartTimeNs()J
    .registers 3

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocol()Lokhttp3/Protocol;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lokhttp3/internal/framed/FramedStream;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/FramedStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .registers 5

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .registers 3

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Settings;->getMaxConcurrentStreams(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;
    .registers 5
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .registers 2

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lokhttp3/internal/framed/Ping;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lokhttp3/internal/framed/Ping;

    invoke-direct {v0}, Lokhttp3/internal/framed/Ping;-><init>()V

    .line 378
    .local v0, "ping":Lokhttp3/internal/framed/Ping;
    monitor-enter p0

    .line 379
    :try_start_6
    iget-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v2, :cond_15

    .line 380
    new-instance v2, Ljava/io/IOException;

    const-string v3, "shutdown"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 386
    :catchall_12
    move-exception v2

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v2

    .line 382
    :cond_15
    :try_start_15
    iget v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    .line 383
    .local v1, "pingId":I
    iget v2, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    .line 384
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-nez v2, :cond_28

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 385
    :cond_28
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_12

    .line 387
    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v2, v1, v3, v0}, Lokhttp3/internal/framed/FramedConnection;->writePing(ZIILokhttp3/internal/framed/Ping;)V

    .line 388
    return-object v0
.end method

.method public pushStream(ILjava/util/List;Z)Lokhttp3/internal/framed/FramedStream;
    .registers 6
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_c
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-eq v0, v1, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1a
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized removeStream(I)Lokhttp3/internal/framed/FramedStream;
    .registers 5
    .param p1, "streamId"    # I

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/FramedStream;

    .line 193
    .local v0, "stream":Lokhttp3/internal/framed/FramedStream;
    if-eqz v0, :cond_1b

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 194
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lokhttp3/internal/framed/FramedConnection;->setIdle(Z)V

    .line 196
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 197
    monitor-exit p0

    return-object v0

    .line 192
    .end local v0    # "stream":Lokhttp3/internal/framed/FramedStream;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSettings(Lokhttp3/internal/framed/Settings;)V
    .registers 5
    .param p1, "settings"    # Lokhttp3/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v1

    .line 531
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_13

    .line 532
    :try_start_4
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v0, :cond_16

    .line 533
    new-instance v0, Ljava/io/IOException;

    const-string v2, "shutdown"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0

    .line 538
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_13

    throw v0

    .line 535
    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/Settings;->merge(Lokhttp3/internal/framed/Settings;)V

    .line 536
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p1}, Lokhttp3/internal/framed/FrameWriter;->settings(Lokhttp3/internal/framed/Settings;)V

    .line 537
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_10

    .line 538
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_13

    .line 539
    return-void
.end method

.method public shutdown(Lokhttp3/internal/framed/ErrorCode;)V
    .registers 6
    .param p1, "statusCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v2

    .line 428
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1a

    .line 429
    :try_start_4
    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v1, :cond_b

    .line 430
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1d

    :try_start_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1a

    .line 438
    :goto_a
    return-void

    .line 432
    :cond_b
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    .line 433
    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    .line 434
    .local v0, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1d

    .line 436
    :try_start_11
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    sget-object v3, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {v1, v0, p1, v3}, Lokhttp3/internal/framed/FrameWriter;->goAway(ILokhttp3/internal/framed/ErrorCode;[B)V

    .line 437
    monitor-exit v2

    goto :goto_a

    .end local v0    # "lastGoodStreamId":I
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v1

    .line 434
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1a
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedConnection;->start(Z)V

    .line 510
    return-void
.end method

.method start(Z)V
    .registers 8
    .param p1, "sendConnectionPreface"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x10000

    .line 517
    if-eqz p1, :cond_21

    .line 518
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v1}, Lokhttp3/internal/framed/FrameWriter;->connectionPreface()V

    .line 519
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-interface {v1, v2}, Lokhttp3/internal/framed/FrameWriter;->settings(Lokhttp3/internal/framed/Settings;)V

    .line 520
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v1, v3}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    .line 521
    .local v0, "windowSize":I
    if-eq v0, v3, :cond_21

    .line 522
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    const/4 v2, 0x0

    sub-int v3, v0, v3

    int-to-long v4, v3

    invoke-interface {v1, v2, v4, v5}, Lokhttp3/internal/framed/FrameWriter;->windowUpdate(IJ)V

    .line 525
    .end local v0    # "windowSize":I
    :cond_21
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 526
    return-void
.end method

.method public writeData(IZLokio/Buffer;J)V
    .registers 16
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 306
    cmp-long v2, p4, v8

    if-nez v2, :cond_33

    .line 307
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v2, p2, p1, p3, v3}, Lokhttp3/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    .line 335
    :cond_c
    return-void

    .line 327
    :cond_d
    :try_start_d
    iget-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 328
    .local v1, "toWrite":I
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v2}, Lokhttp3/internal/framed/FrameWriter;->maxDataLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 329
    iget-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 330
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_59

    .line 332
    int-to-long v4, v1

    sub-long/2addr p4, v4

    .line 333
    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    if-eqz p2, :cond_60

    cmp-long v2, p4, v8

    if-nez v2, :cond_60

    const/4 v2, 0x1

    :goto_30
    invoke-interface {v4, v2, p1, p3, v1}, Lokhttp3/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    .line 311
    .end local v1    # "toWrite":I
    :cond_33
    cmp-long v2, p4, v8

    if-lez v2, :cond_c

    .line 313
    monitor-enter p0

    .line 315
    :goto_38
    :try_start_38
    iget-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v8

    if-gtz v2, :cond_d

    .line 318
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 319
    new-instance v2, Ljava/io/IOException;

    const-string v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_52} :catch_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_59

    .line 323
    :catch_52
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_53
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 330
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_59
    move-exception v2

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_59

    throw v2

    .line 321
    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5f} :catch_52
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    goto :goto_38

    .restart local v1    # "toWrite":I
    :cond_60
    move v2, v3

    .line 333
    goto :goto_30
.end method

.method writeSynReply(IZLjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lokhttp3/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    .line 290
    return-void
.end method

.method writeSynReset(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lokhttp3/internal/framed/FrameWriter;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    .line 358
    return-void
.end method

.method writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    .line 346
    sget-object v6, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection$1;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 354
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .registers 12
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .prologue
    .line 361
    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/internal/framed/FramedConnection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/framed/FramedConnection$2;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

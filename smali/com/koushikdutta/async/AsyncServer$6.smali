.class Lcom/koushikdutta/async/AsyncServer$6;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field final synthetic val$address:Ljava/net/InetSocketAddress;

.field final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/net/InetSocketAddress;)V
    .registers 5
    .param p1, "this$0"    # Lcom/koushikdutta/async/AsyncServer;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$6;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$address:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 352
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-virtual {v4}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 371
    :goto_9
    return-void

    .line 355
    :cond_a
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    iget-object v5, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object v5, v4, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "ckey":Ljava/nio/channels/SelectionKey;
    const/4 v2, 0x0

    .line 359
    .local v2, "socket":Ljava/nio/channels/SocketChannel;
    :try_start_12
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    iput-object v3, v4, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->socket:Ljava/nio/channels/SocketChannel;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1a} :catch_3a

    .line 360
    .end local v2    # "socket":Ljava/nio/channels/SocketChannel;
    .local v3, "socket":Ljava/nio/channels/SocketChannel;
    const/4 v4, 0x0

    :try_start_1b
    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 361
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer$6;->this$0:Lcom/koushikdutta/async/AsyncServer;

    # getter for: Lcom/koushikdutta/async/AsyncServer;->mSelector:Lcom/koushikdutta/async/SelectorWrapper;
    invoke-static {v4}, Lcom/koushikdutta/async/AsyncServer;->access$300(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/SelectorWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/SelectorWrapper;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 362
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    invoke-virtual {v0, v4}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$address:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_38} :catch_53

    move-object v2, v3

    .line 370
    .end local v3    # "socket":Ljava/nio/channels/SocketChannel;
    .restart local v2    # "socket":Ljava/nio/channels/SocketChannel;
    goto :goto_9

    .line 365
    :catch_3a
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Throwable;
    :goto_3b
    if-eqz v0, :cond_40

    .line 367
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 368
    :cond_40
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 369
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer$6;->val$cancel:Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->setComplete(Ljava/lang/Exception;)Z

    goto :goto_9

    .line 365
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "socket":Ljava/nio/channels/SocketChannel;
    .restart local v3    # "socket":Ljava/nio/channels/SocketChannel;
    :catch_53
    move-exception v1

    move-object v2, v3

    .end local v3    # "socket":Ljava/nio/channels/SocketChannel;
    .restart local v2    # "socket":Ljava/nio/channels/SocketChannel;
    goto :goto_3b
.end method

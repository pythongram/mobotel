.class final Lcom/koushikdutta/async/dns/Dns$2;
.super Ljava/lang/Object;
.source "Dns.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/dns/Dns;->lookup(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/koushikdutta/async/future/FutureCallback;

.field final synthetic val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;

.field final synthetic val$multicast:Z

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncDatagramSocket;ZLcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FutureCallback;)V
    .registers 5

    .prologue
    .line 123
    iput-object p1, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iput-boolean p2, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$multicast:Z

    iput-object p3, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$callback:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 6
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 128
    :try_start_0
    invoke-static {p2}, Lcom/koushikdutta/async/dns/DnsResponse;->parse(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/dns/DnsResponse;

    move-result-object v0

    .line 130
    .local v0, "response":Lcom/koushikdutta/async/dns/DnsResponse;
    iget-object v1, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncDatagramSocket;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/dns/DnsResponse;->source:Ljava/net/InetSocketAddress;

    .line 132
    iget-boolean v1, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$multicast:Z

    if-nez v1, :cond_1e

    .line 133
    iget-object v1, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$dgram:Lcom/koushikdutta/async/AsyncDatagramSocket;

    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncDatagramSocket;->close()V

    .line 134
    iget-object v1, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_25

    .line 142
    .end local v0    # "response":Lcom/koushikdutta/async/dns/DnsResponse;
    :goto_1a
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 143
    return-void

    .line 137
    .restart local v0    # "response":Lcom/koushikdutta/async/dns/DnsResponse;
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/koushikdutta/async/dns/Dns$2;->val$callback:Lcom/koushikdutta/async/future/FutureCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/koushikdutta/async/future/FutureCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_1a

    .line 140
    .end local v0    # "response":Lcom/koushikdutta/async/dns/DnsResponse;
    :catch_25
    move-exception v1

    goto :goto_1a
.end method

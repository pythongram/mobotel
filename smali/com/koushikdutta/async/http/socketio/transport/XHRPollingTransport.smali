.class public Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;
.super Ljava/lang/Object;
.source "XHRPollingTransport.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "\ufffd"


# instance fields
.field private client:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field private closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private connected:Z

.field private sessionId:Ljava/lang/String;

.field private sessionUrl:Landroid/net/Uri;

.field private stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "client"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p2, "sessionUrl"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 27
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sessionUrl:Landroid/net/Uri;

    .line 28
    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sessionId:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->doLongPolling()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->connected:Z

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "x0"    # Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->close(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sendResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V
    .registers 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->doLongPolling()V

    return-void
.end method

.method private close(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 53
    :cond_9
    return-void
.end method

.method private computedRequestUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "currentTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sessionUrl:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "t"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doLongPolling()V
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpGet;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->computedRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;-><init>(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    .line 105
    return-void
.end method

.method private postMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 90
    :goto_8
    return-void

    .line 87
    :cond_9
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpPost;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->computedRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpPost;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "request":Lcom/koushikdutta/async/http/AsyncHttpRequest;
    new-instance v1, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/http/body/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 89
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    goto :goto_8
.end method

.method private sendResult(Ljava/lang/String;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    if-nez v2, :cond_5

    .line 120
    :cond_4
    :goto_4
    return-void

    .line 111
    :cond_5
    const-string/jumbo v2, "\ufffd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 112
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    invoke-interface {v2, p1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    goto :goto_4

    .line 116
    :cond_14
    const-string/jumbo v2, "\ufffd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "results":[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1c
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 118
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    .line 117
    add-int/lit8 v0, v0, 0x2

    goto :goto_1c
.end method


# virtual methods
.method public disconnect()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->connected:Z

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->close(Ljava/lang/Exception;)V

    .line 48
    return-void
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public heartbeats()Z
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->connected:Z

    return v0
.end method

.method public send(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 63
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->postMessage(Ljava/lang/String;)V

    .line 81
    :goto_b
    return-void

    .line 67
    :cond_c
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpPost;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->computedRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpPost;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "request":Lcom/koushikdutta/async/http/AsyncHttpRequest;
    new-instance v1, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/http/body/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 70
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v2, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$1;-><init>(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    goto :goto_b
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 42
    return-void
.end method

.method public setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    .line 134
    return-void
.end method

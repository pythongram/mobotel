.class public Lcom/koushikdutta/async/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOGTAG:Ljava/lang/String; = "AsyncHttp"

.field private static mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;


# instance fields
.field httpTransportMiddleware:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

.field final mMiddleware:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;",
            ">;"
        }
    .end annotation
.end field

.field mServer:Lcom/koushikdutta/async/AsyncServer;

.field socketMiddleware:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field sslSocketMiddleware:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .registers 4
    .param p1, "server"    # Lcom/koushikdutta/async/AsyncServer;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    .line 74
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->socketMiddleware:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 75
    new-instance v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->sslSocketMiddleware:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 76
    new-instance v0, Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/HttpTransportMiddleware;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->httpTransportMiddleware:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->sslSocketMiddleware:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    new-instance v1, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->addEngineConfigurator(Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;)V

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "x1"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p4, "x4"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .registers 3
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "x1"    # Lcom/koushikdutta/async/http/callback/RequestCallback;
    .param p2, "x2"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeConnect(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
    .registers 8
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "x1"    # Lcom/koushikdutta/async/http/callback/RequestCallback;
    .param p2, "x2"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p3, "x3"    # J
    .param p5, "x4"    # J

    .prologue
    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeProgress(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 6
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "x1"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p2, "x2"    # Ljava/lang/Exception;
    .param p3, "x3"    # Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
    .param p4, "x4"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p5, "x5"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
    .registers 6
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "x1"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p4, "x4"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;
    .param p5, "x5"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeSocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    .registers 3
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getTimeoutRemaining(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 1
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->setupAndroidProxy(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method static synthetic access$600(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p1, "x1"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->copyHeader(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "x1"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p4, "x4"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 6
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "x1"    # Lcom/koushikdutta/async/http/callback/RequestCallback;
    .param p2, "x2"    # Lcom/koushikdutta/async/future/SimpleFuture;
    .param p3, "x3"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p4, "x4"    # Ljava/lang/Exception;
    .param p5, "x5"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeWithAffinity(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 6
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p1, "x1"    # Lcom/koushikdutta/async/http/callback/RequestCallback;
    .param p2, "x2"    # Lcom/koushikdutta/async/future/SimpleFuture;
    .param p3, "x3"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p4, "x4"    # Ljava/lang/Exception;
    .param p5, "x5"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private static copyHeader(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .registers 5
    .param p0, "from"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p1, "to"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "header"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 205
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 206
    :cond_15
    return-void
.end method

.method private execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 12
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "redirectCount"    # I
    .param p3, "cancel"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p4, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 194
    :goto_b
    return-void

    .line 187
    :cond_c
    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_b
.end method

.method private executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 21
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "redirectCount"    # I
    .param p3, "cancel"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p4, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    .prologue
    .line 209
    sget-boolean v2, Lcom/koushikdutta/async/http/AsyncHttpClient;->$assertionsDisabled:Z

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v2}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 210
    :cond_14
    const/16 v2, 0xf

    move/from16 v0, p2

    if-le v0, v2, :cond_2e

    .line 211
    new-instance v4, Lcom/koushikdutta/async/http/RedirectLimitExceededException;

    const-string v2, "too many redirects"

    invoke-direct {v4, v2}, Lcom/koushikdutta/async/http/RedirectLimitExceededException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 310
    :goto_2d
    return-void

    .line 214
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v15

    .line 215
    .local v15, "uri":Landroid/net/Uri;
    new-instance v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;-><init>()V

    .line 216
    .local v4, "data":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    .line 217
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 219
    const-string v2, "Executing request."

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 222
    .local v13, "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    invoke-interface {v13, v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onRequest(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V

    goto :goto_52

    .line 235
    .end local v13    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    :cond_62
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getTimeout()I

    move-result v2

    if-lez v2, :cond_8d

    .line 237
    new-instance v2, Lcom/koushikdutta/async/http/AsyncHttpClient$2;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getTimeoutRemaining(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v8

    invoke-virtual {v2, v3, v8, v9}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Ljava/lang/Object;

    .line 253
    :cond_8d
    new-instance v5, Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v10, v4

    move/from16 v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;I)V

    iput-object v5, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 291
    invoke-static/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->setupAndroidProxy(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v2

    if-eqz v2, :cond_c5

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c5

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v5

    invoke-interface {v5}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 300
    :cond_c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_cd
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 301
    .restart local v13    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    invoke-interface {v13, v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v14

    .line 302
    .local v14, "socketCancellable":Lcom/koushikdutta/async/future/Cancellable;
    if-eqz v14, :cond_cd

    .line 303
    iput-object v14, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socketCancellable:Lcom/koushikdutta/async/future/Cancellable;

    .line 304
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    goto/16 :goto_2d

    .line 308
    .end local v13    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    .end local v14    # "socketCancellable":Lcom/koushikdutta/async/future/Cancellable;
    :cond_e8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " middlewares="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 309
    .local v7, "unsupportedURI":Ljava/lang/Exception;
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto/16 :goto_2d
.end method

.method private executeSocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
    .registers 16
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "redirectCount"    # I
    .param p3, "cancel"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p4, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;
    .param p5, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    .prologue
    .line 318
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;I)V

    .line 451
    .local v0, "ret":Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpClient$5;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$5;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object v1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->sendHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 460
    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$6;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object v1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->receiveHeadersCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 469
    iput-object v0, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 470
    iget-object v1, p5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 472
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_27
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 473
    .local v9, "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    invoke-interface {v9, p5}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->exchangeHeaders(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 476
    .end local v9    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    :cond_39
    return-void
.end method

.method public static getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;

    if-nez v0, :cond_f

    .line 55
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    sput-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 57
    :cond_f
    sget-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-object v0
.end method

.method private static getTimeoutRemaining(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    .registers 3
    .param p0, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 13
    .param p3, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p4, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/callback/RequestCallback",
            "<TT;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<TT;>;",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "callback":Lcom/koushikdutta/async/http/callback/RequestCallback;, "Lcom/koushikdutta/async/http/callback/RequestCallback<TT;>;"
    .local p2, "future":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<TT;>;"
    .local p5, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient$7;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 537
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 538
    return-void
.end method

.method private invokeConnect(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .registers 3
    .param p1, "callback"    # Lcom/koushikdutta/async/http/callback/RequestCallback;
    .param p2, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;

    .prologue
    .line 546
    if-eqz p1, :cond_5

    .line 547
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/http/callback/RequestCallback;->onConnect(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 548
    :cond_5
    return-void
.end method

.method private invokeProgress(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
    .registers 8
    .param p1, "callback"    # Lcom/koushikdutta/async/http/callback/RequestCallback;
    .param p2, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p3, "downloaded"    # J
    .param p5, "total"    # J

    .prologue
    .line 541
    if-eqz p1, :cond_5

    .line 542
    invoke-interface/range {p1 .. p6}, Lcom/koushikdutta/async/http/callback/RequestCallback;->onProgress(Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    .line 543
    :cond_5
    return-void
.end method

.method private invokeWithAffinity(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 7
    .param p3, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p4, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/callback/RequestCallback",
            "<TT;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<TT;>;",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "callback":Lcom/koushikdutta/async/http/callback/RequestCallback;, "Lcom/koushikdutta/async/http/callback/RequestCallback<TT;>;"
    .local p2, "future":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<TT;>;"
    .local p5, "result":Ljava/lang/Object;, "TT;"
    if-eqz p4, :cond_9

    .line 521
    invoke-virtual {p2, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result v0

    .line 524
    .local v0, "complete":Z
    :goto_6
    if-nez v0, :cond_e

    .line 528
    :cond_8
    :goto_8
    return-void

    .line 523
    .end local v0    # "complete":Z
    :cond_9
    invoke-virtual {p2, p5}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "complete":Z
    goto :goto_6

    .line 526
    :cond_e
    if-eqz p1, :cond_8

    .line 527
    invoke-interface {p1, p4, p3, p5}, Lcom/koushikdutta/async/http/callback/RequestCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8
.end method

.method private reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .registers 9
    .param p1, "cancel"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
    .param p4, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p5, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    .prologue
    .line 158
    sget-boolean v1, Lcom/koushikdutta/async/http/AsyncHttpClient;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p5, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 159
    :cond_c
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->removeAllCallbacks(Ljava/lang/Object;)V

    .line 161
    if-eqz p2, :cond_41

    .line 162
    const-string v1, "Connection error"

    invoke-virtual {p4, v1, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 163
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->setComplete(Ljava/lang/Exception;)Z

    move-result v0

    .line 169
    .local v0, "complete":Z
    :goto_1e
    if-eqz v0, :cond_4b

    .line 170
    invoke-interface {p5, p2, p3}, Lcom/koushikdutta/async/http/callback/HttpConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 171
    sget-boolean v1, Lcom/koushikdutta/async/http/AsyncHttpClient;->$assertionsDisabled:Z

    if-nez v1, :cond_58

    if-nez p2, :cond_58

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->socket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v1

    if-nez v1, :cond_58

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->isPaused()Z

    move-result v1

    if-nez v1, :cond_58

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 166
    .end local v0    # "complete":Z
    :cond_41
    const-string v1, "Connection successful"

    invoke-virtual {p4, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->setComplete(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "complete":Z
    goto :goto_1e

    .line 175
    :cond_4b
    if-eqz p3, :cond_58

    .line 177
    new-instance v1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {p3, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 178
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->close()V

    .line 180
    :cond_58
    return-void
.end method

.method private static setupAndroidProxy(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 9
    .param p0, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 114
    :cond_4
    :goto_4
    return-void

    .line 88
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v6

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_4e

    move-result-object v2

    .line 94
    .local v2, "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 96
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Proxy;

    .line 97
    .local v3, "proxy":Ljava/net/Proxy;
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_4

    .line 99
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/InetSocketAddress;

    if-eqz v6, :cond_4

    .line 101
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    .line 103
    .local v4, "proxyAddress":Ljava/net/InetSocketAddress;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_50

    .line 104
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "proxyHost":Ljava/lang/String;
    :goto_46
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->enableProxy(Ljava/lang/String;I)V

    goto :goto_4

    .line 90
    .end local v2    # "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v3    # "proxy":Ljava/net/Proxy;
    .end local v4    # "proxyAddress":Ljava/net/InetSocketAddress;
    .end local v5    # "proxyHost":Ljava/lang/String;
    :catch_4e
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_4

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "proxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v3    # "proxy":Ljava/net/Proxy;
    .restart local v4    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_50
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 108
    .local v0, "address":Ljava/net/InetAddress;
    if-eqz v0, :cond_5b

    .line 109
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "proxyHost":Ljava/lang/String;
    goto :goto_46

    .line 111
    .end local v5    # "proxyHost":Ljava/lang/String;
    :cond_5b
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "proxyHost":Ljava/lang/String;
    goto :goto_46
.end method


# virtual methods
.method public execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 6
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/callback/HttpConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const/4 v1, 0x0

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V

    .local v0, "ret":Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 127
    return-object v0
.end method

.method public execute(Ljava/lang/String;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/callback/HttpConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpGet;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
    .registers 8
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/parser/AsyncParser",
            "<TT;>;",
            "Lcom/koushikdutta/async/http/callback/RequestCallback",
            "<TT;>;)",
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 632
    .local p2, "parser":Lcom/koushikdutta/async/parser/AsyncParser;, "Lcom/koushikdutta/async/parser/AsyncParser<TT;>;"
    .local p3, "callback":Lcom/koushikdutta/async/http/callback/RequestCallback;, "Lcom/koushikdutta/async/http/callback/RequestCallback<TT;>;"
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V

    .line 633
    .local v0, "cancel":Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    new-instance v1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 634
    .local v1, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<TT;>;"
    const/4 v2, 0x0

    new-instance v3, Lcom/koushikdutta/async/http/AsyncHttpClient$10;

    invoke-direct {v3, p0, p3, v1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$10;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;)V

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 655
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 656
    return-object v1
.end method

.method public executeByteBufferList(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 4
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public executeFile(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 14
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 555
    :try_start_c
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x2000

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_18} :catch_33

    .line 562
    .local v2, "fout":Ljava/io/OutputStream;
    new-instance v6, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V

    .line 563
    .local v6, "cancel":Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    new-instance v5, Lcom/koushikdutta/async/http/AsyncHttpClient$8;

    invoke-direct {v5, p0, v6, v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient$8;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/io/OutputStream;Ljava/io/File;)V

    .line 580
    .local v5, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 581
    const/4 v9, 0x0

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$9;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/OutputStream;Ljava/io/File;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-direct {p0, p1, v9, v6, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    move-object v8, v5

    .line 628
    .end local v2    # "fout":Ljava/io/OutputStream;
    .end local v5    # "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    .end local v6    # "cancel":Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .local v8, "ret":Ljava/lang/Object;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    :goto_32
    return-object v8

    .line 557
    .end local v8    # "ret":Ljava/lang/Object;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    :catch_33
    move-exception v7

    .line 558
    .local v7, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v5}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 559
    .restart local v5    # "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    invoke-virtual {v5, v7}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-object v8, v5

    .line 560
    .restart local v8    # "ret":Ljava/lang/Object;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    goto :goto_32
.end method

.method public executeJSONArray(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 4
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Lcom/koushikdutta/async/parser/JSONArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONArrayParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public executeJSONObject(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 4
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lcom/koushikdutta/async/parser/JSONObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONObjectParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 4
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public getMiddleware()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    return-object v0
.end method

.method public getSSLSocketMiddleware()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->sslSocketMiddleware:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public getSocketMiddleware()Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->socketMiddleware:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    return-object v0
.end method

.method public insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V
    .registers 4
    .param p1, "middleware"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 7
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/WebSocketImpl;->addWebSocketUpgradeHeaders(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    .line 665
    new-instance v1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 666
    .local v1, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Lcom/koushikdutta/async/http/WebSocket;>;"
    new-instance v2, Lcom/koushikdutta/async/http/AsyncHttpClient$11;

    invoke-direct {v2, p0, v1, p3, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient$11;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    invoke-virtual {p0, p1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    .line 691
    .local v0, "connect":Lcom/koushikdutta/async/future/Cancellable;
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 692
    return-object v1
.end method

.method public websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpGet;

    const-string v1, "ws://"

    const-string v2, "http://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wss://"

    const-string v3, "https://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, "get":Lcom/koushikdutta/async/http/AsyncHttpGet;
    invoke-virtual {p0, v0, p2, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    return-object v1
.end method

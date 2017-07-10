.class Lcom/loopj/android/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private isBinaryRequest:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .registers 6

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 43
    iput-object p2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 44
    iput-object p3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 45
    iput-object p4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 46
    instance-of v0, p4, Lcom/loopj/android/http/BinaryHttpResponseHandler;

    if-eqz v0, :cond_12

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isBinaryRequest:Z

    .line 49
    :cond_12
    return-void
.end method

.method private makeRequest()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_27

    .line 76
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_27

    .line 78
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_27

    .line 79
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v1, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 85
    :cond_27
    return-void
.end method

.method private makeRequestWithRetries()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v1, 0x1

    .line 91
    const/4 v0, 0x0

    .line 92
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v2

    .line 93
    :goto_8
    if-eqz v1, :cond_6d

    .line 95
    :try_start_a
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->makeRequest()V
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_d} :catch_e
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_d} :catch_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_d} :catch_28
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_d} :catch_43

    .line 112
    :cond_d
    :goto_d
    return-void

    .line 97
    :catch_e
    move-exception v0

    .line 98
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_d

    .line 99
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    const-string v2, "can\'t resolve host"

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_d

    .line 102
    :catch_1b
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_d

    .line 105
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    const-string v2, "can\'t resolve host"

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_d

    .line 108
    :catch_28
    move-exception v0

    .line 109
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_d

    .line 110
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    const-string v2, "socket time out"

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_d

    .line 113
    :catch_35
    move-exception v0

    .line 115
    iget v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v0, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_8

    .line 116
    :catch_43
    move-exception v1

    .line 120
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NPE in HttpClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    iget v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v0, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_8

    .line 126
    :cond_6d
    new-instance v1, Ljava/net/ConnectException;

    invoke-direct {v1}, Ljava/net/ConnectException;-><init>()V

    .line 127
    invoke-virtual {v1, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 128
    throw v1
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 53
    :try_start_1
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_a

    .line 54
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendStartMessage()V

    .line 57
    :cond_a
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->makeRequestWithRetries()V

    .line 59
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_16

    .line 60
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFinishMessage()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_17

    .line 72
    :cond_16
    :goto_16
    return-void

    .line 62
    :catch_17
    move-exception v1

    .line 63
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v2, :cond_16

    .line 64
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFinishMessage()V

    .line 65
    iget-boolean v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isBinaryRequest:Z

    if-eqz v2, :cond_2d

    .line 66
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    check-cast v0, [B

    invoke-virtual {v2, v1, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_16

    .line 68
    :cond_2d
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_16
.end method

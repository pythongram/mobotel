.class abstract Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;
.implements Lcom/koushikdutta/async/http/AsyncHttpResponse;
.implements Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field code:I

.field mCompleted:Z

.field private mFirstWrite:Z

.field protected mHeaders:Lcom/koushikdutta/async/http/Headers;

.field private mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field mSink:Lcom/koushikdutta/async/DataSink;

.field private mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field message:Ljava/lang/String;

.field protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 50
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mCompleted:Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mFirstWrite:Z

    .line 111
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/AsyncSocket;
    .registers 2
    .param p0, "x0"    # Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method private assertContent()V
    .registers 3

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mFirstWrite:Z

    if-nez v0, :cond_5

    .line 177
    :cond_4
    return-void

    .line 174
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mFirstWrite:Z

    .line 175
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 176
    :cond_20
    sget-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/HttpUtil;->contentLength(Lcom/koushikdutta/async/http/Headers;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private terminate()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 88
    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .registers 5

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    .line 238
    .local v1, "mm":Lcom/koushikdutta/async/http/Multimap;
    if-eqz v1, :cond_1f

    const-string v2, "charset"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cs":Ljava/lang/String;
    if-eqz v0, :cond_1f

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 241
    .end local v0    # "cs":Ljava/lang/String;
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public close()V
    .registers 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->close()V

    .line 104
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->terminate()V

    .line 105
    return-void
.end method

.method public code()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->code:I

    return v0
.end method

.method public code(I)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->code:I

    .line 136
    return-object p0
.end method

.method public emitter()Lcom/koushikdutta/async/DataEmitter;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->getDataEmitter()Lcom/koushikdutta/async/DataEmitter;

    move-result-object v0

    return-object v0
.end method

.method public emitter(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 74
    return-object p0
.end method

.method public end()V
    .registers 3

    .prologue
    .line 200
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "end called?"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    return-object v0
.end method

.method public headers(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2
    .param p1, "headers"    # Lcom/koushikdutta/async/http/Headers;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    .line 124
    return-object p0
.end method

.method public headers()Lcom/koushikdutta/async/http/Headers;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0
.end method

.method public message(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->message:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->message:Ljava/lang/String;

    return-object v0
.end method

.method protected onHeadersReceived()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method protected onHeadersSent()V
    .registers 4

    .prologue
    .line 34
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getBody()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    .line 35
    .local v0, "requestBody":Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    if-eqz v0, :cond_13

    .line 36
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mRequest:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V

    invoke-interface {v0, v1, p0, v2}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 45
    :goto_12
    return-void

    .line 43
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->onRequestCompleted(Ljava/lang/Exception;)V

    goto :goto_12
.end method

.method protected onRequestCompleted(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 48
    return-void
.end method

.method public protocol(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->protocol:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public protocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method protected report(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->report(Ljava/lang/Exception;)V

    .line 94
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->terminate()V

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 96
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 97
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mCompleted:Z

    .line 99
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 222
    return-void
.end method

.method setSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 4
    .param p1, "exchange"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    if-nez v0, :cond_7

    .line 31
    :goto_6
    return-void

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mReporter:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_6
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 3
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/WritableCallback;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 206
    return-void
.end method

.method public sink()Lcom/koushikdutta/async/DataSink;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    return-object v0
.end method

.method public sink(Lcom/koushikdutta/async/DataSink;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    .registers 2
    .param p1, "sink"    # Lcom/koushikdutta/async/DataSink;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    .line 189
    return-object p0
.end method

.method public socket()Lcom/koushikdutta/async/AsyncSocket;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_9

    .line 166
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->assertContent()V

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 196
    return-void
.end method

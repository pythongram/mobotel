.class public Lcom/koushikdutta/async/http/body/JSONObjectBody;
.super Ljava/lang/Object;
.source "JSONObjectBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/json"


# instance fields
.field json:Lorg/json/JSONObject;

.field mBodyBytes:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/JSONObjectBody;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody;->json:Lorg/json/JSONObject;

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/JSONObjectBody;->get()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody;->json:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    const-string v0, "application/json"

    return-object v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody;->json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody;->mBodyBytes:[B

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody;->mBodyBytes:[B

    array-length v0, v0

    return v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 26
    new-instance v0, Lcom/koushikdutta/async/parser/JSONObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONObjectParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/JSONObjectParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;-><init>(Lcom/koushikdutta/async/http/body/JSONObjectBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 33
    return-void
.end method

.method public readFullyOnRequest()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p3, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody;->mBodyBytes:[B

    invoke-static {p2, v0, p3}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 38
    return-void
.end method

.class public Lcom/koushikdutta/async/http/body/StreamBody;
.super Ljava/lang/Object;
.source "StreamBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/binary"


# instance fields
.field contentType:Ljava/lang/String;

.field length:I

.field stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "application/binary"

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/StreamBody;->contentType:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/StreamBody;->stream:Ljava/io/InputStream;

    .line 23
    iput p2, p0, Lcom/koushikdutta/async/http/body/StreamBody;->length:I

    .line 24
    return-void
.end method


# virtual methods
.method public get()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StreamBody;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/StreamBody;->get()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StreamBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/koushikdutta/async/http/body/StreamBody;->length:I

    return v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public readFullyOnRequest()Z
    .registers 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/koushikdutta/async/http/body/StreamBody;
    .registers 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/StreamBody;->contentType:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 7
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p3, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 28
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/StreamBody;->stream:Ljava/io/InputStream;

    iget v0, p0, Lcom/koushikdutta/async/http/body/StreamBody;->length:I

    if-gez v0, :cond_d

    const-wide/32 v0, 0x7fffffff

    :goto_9
    invoke-static {v2, v0, v1, p2, p3}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 29
    return-void

    .line 28
    :cond_d
    iget v0, p0, Lcom/koushikdutta/async/http/body/StreamBody;->length:I

    int-to-long v0, v0

    goto :goto_9
.end method

.class final Lcom/koushikdutta/async/Util$8;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bb:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic val$sink:Lcom/koushikdutta/async/DataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 4

    .prologue
    .line 198
    iput-object p1, p0, Lcom/koushikdutta/async/Util$8;->val$sink:Lcom/koushikdutta/async/DataSink;

    iput-object p2, p0, Lcom/koushikdutta/async/Util$8;->val$bb:Lcom/koushikdutta/async/ByteBufferList;

    iput-object p3, p0, Lcom/koushikdutta/async/Util$8;->val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->val$sink:Lcom/koushikdutta/async/DataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/Util$8;->val$bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->val$bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1e

    .line 203
    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 204
    iget-object v0, p0, Lcom/koushikdutta/async/Util$8;->val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 206
    :cond_1e
    return-void
.end method

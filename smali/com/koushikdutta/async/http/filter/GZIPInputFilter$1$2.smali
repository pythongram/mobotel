.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->next()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 8
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v1, :cond_2e

    .line 96
    :goto_6
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->size()I

    move-result v1

    if-lez v1, :cond_2e

    .line 97
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 99
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_6

    .line 102
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :cond_2e
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 103
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    # invokes: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->done()V
    invoke-static {v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$100(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    .line 104
    return-void
.end method

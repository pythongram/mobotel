.class Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 7
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 190
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 191
    .local v0, "toRead":I
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 192
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->partial:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 193
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object p2, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->partial:Lcom/koushikdutta/async/ByteBufferList;

    .line 196
    :cond_1d
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    .line 197
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    # getter for: Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->handler:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$400(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-boolean v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->inFinished:Z

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    :goto_37
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->streamId:I

    invoke-interface {v2, v1, v3, p2}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->data(ZILcom/koushikdutta/async/ByteBufferList;)V

    .line 199
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    if-nez v1, :cond_49

    .line 200
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    # invokes: Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->parseFrameHeader()V
    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$500(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    .line 201
    :cond_49
    return-void

    .line 197
    :cond_4a
    const/4 v1, 0x0

    goto :goto_37
.end method

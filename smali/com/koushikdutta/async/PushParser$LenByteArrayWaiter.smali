.class Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LenByteArrayWaiter"
.end annotation


# instance fields
.field private final callback:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/PushParser$ParseCallback",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "callback":Lcom/koushikdutta/async/PushParser$ParseCallback;, "Lcom/koushikdutta/async/PushParser$ParseCallback<[B>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 70
    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .registers 6
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 74
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    .line 75
    .local v0, "length":I
    if-nez v0, :cond_10

    .line 76
    iget-object v1, p0, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/PushParser$ParseCallback;->parsed(Ljava/lang/Object;)V

    .line 77
    const/4 v1, 0x0

    .line 79
    :goto_f
    return-object v1

    :cond_10
    new-instance v1, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;

    iget-object v2, p0, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-direct {v1, v0, v2}, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;-><init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    goto :goto_f
.end method

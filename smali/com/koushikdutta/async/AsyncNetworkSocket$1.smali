.class Lcom/koushikdutta/async/AsyncNetworkSocket$1;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncNetworkSocket;->write(Lcom/koushikdutta/async/ByteBufferList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

.field final synthetic val$list:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncNetworkSocket;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/koushikdutta/async/AsyncNetworkSocket;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$1;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$1;->val$list:Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$1;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$1;->val$list:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 75
    return-void
.end method

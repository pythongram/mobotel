.class Lcom/koushikdutta/async/AsyncServer$8$1;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/AsyncServer$8;

.field final synthetic val$result:[Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer$8;[Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "this$1"    # Lcom/koushikdutta/async/AsyncServer$8;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$8$1;->this$1:Lcom/koushikdutta/async/AsyncServer$8;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$8$1;->val$result:[Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$8$1;->this$1:Lcom/koushikdutta/async/AsyncServer$8;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncServer$8;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$8$1;->val$result:[Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

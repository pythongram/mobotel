.class Lcom/koushikdutta/async/AsyncServer$8$2;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer$8;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "this$1"    # Lcom/koushikdutta/async/AsyncServer$8;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$8$2;->this$1:Lcom/koushikdutta/async/AsyncServer$8;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$8$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$8$2;->this$1:Lcom/koushikdutta/async/AsyncServer$8;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncServer$8;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$8$2;->val$e:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 433
    return-void
.end method

.class Lcom/koushikdutta/async/future/FutureThread$2;
.super Ljava/lang/Object;
.source "FutureThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/FutureThread;-><init>(Lcom/koushikdutta/async/future/FutureRunnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/future/FutureThread;

.field final synthetic val$runnable:Lcom/koushikdutta/async/future/FutureRunnable;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/FutureThread;Lcom/koushikdutta/async/future/FutureRunnable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/koushikdutta/async/future/FutureThread;

    .prologue
    .line 28
    .local p0, "this":Lcom/koushikdutta/async/future/FutureThread$2;, "Lcom/koushikdutta/async/future/FutureThread.2;"
    iput-object p1, p0, Lcom/koushikdutta/async/future/FutureThread$2;->this$0:Lcom/koushikdutta/async/future/FutureThread;

    iput-object p2, p0, Lcom/koushikdutta/async/future/FutureThread$2;->val$runnable:Lcom/koushikdutta/async/future/FutureRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 32
    .local p0, "this":Lcom/koushikdutta/async/future/FutureThread$2;, "Lcom/koushikdutta/async/future/FutureThread.2;"
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/future/FutureThread$2;->this$0:Lcom/koushikdutta/async/future/FutureThread;

    iget-object v2, p0, Lcom/koushikdutta/async/future/FutureThread$2;->val$runnable:Lcom/koushikdutta/async/future/FutureRunnable;

    invoke-interface {v2}, Lcom/koushikdutta/async/future/FutureRunnable;->run()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/FutureThread;->setComplete(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 37
    :goto_b
    return-void

    .line 34
    :catch_c
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/koushikdutta/async/future/FutureThread$2;->this$0:Lcom/koushikdutta/async/future/FutureThread;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/FutureThread;->setComplete(Ljava/lang/Exception;)Z

    goto :goto_b
.end method

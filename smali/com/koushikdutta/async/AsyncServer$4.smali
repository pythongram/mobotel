.class Lcom/koushikdutta/async/AsyncServer$4;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field final synthetic val$currentSelector:Lcom/koushikdutta/async/SelectorWrapper;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/concurrent/Semaphore;)V
    .registers 4
    .param p1, "this$0"    # Lcom/koushikdutta/async/AsyncServer;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$4;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$4;->val$currentSelector:Lcom/koushikdutta/async/SelectorWrapper;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$4;->val$currentSelector:Lcom/koushikdutta/async/SelectorWrapper;

    # invokes: Lcom/koushikdutta/async/AsyncServer;->shutdownEverything(Lcom/koushikdutta/async/SelectorWrapper;)V
    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->access$100(Lcom/koushikdutta/async/SelectorWrapper;)V

    .line 252
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 253
    return-void
.end method

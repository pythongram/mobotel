.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter$1;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter$1;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter$1;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->sendCachedDataOnNetworkThread()V

    .line 429
    return-void
.end method

.class Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->report(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "this$0"    # Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->this$0:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iput-object p2, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->val$e:Ljava/lang/Exception;

    .line 62
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->this$0:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v2, v2, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_17

    .line 67
    :goto_9
    iget-object v2, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->this$0:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v2, v2, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v2, :cond_16

    .line 68
    iget-object v2, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;->this$0:Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v2, v2, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 69
    :cond_16
    return-void

    .line 64
    :catch_17
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    goto :goto_9
.end method

.class Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 53
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->mCompleted:Z

    if-nez v0, :cond_15

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    new-instance v1, Lcom/koushikdutta/async/http/ConnectionClosedException;

    const-string v2, "connection closed before response completed."

    invoke-direct {v1, v2, p1}, Lcom/koushikdutta/async/http/ConnectionClosedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->report(Ljava/lang/Exception;)V

    .line 59
    :goto_14
    return-void

    .line 57
    :cond_15
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$2;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->report(Ljava/lang/Exception;)V

    goto :goto_14
.end method

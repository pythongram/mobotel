.class Lcom/koushikdutta/async/parser/ByteBufferListParser$3;
.super Ljava/lang/Object;
.source "ByteBufferListParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/ByteBufferListParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/parser/ByteBufferListParser;

.field final synthetic val$bb:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4
    .param p1, "this$0"    # Lcom/koushikdutta/async/parser/ByteBufferListParser;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->this$0:Lcom/koushikdutta/async/parser/ByteBufferListParser;

    iput-object p2, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p3, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->val$bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 37
    if-eqz p1, :cond_8

    .line 38
    iget-object v1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    .line 48
    :goto_7
    return-void

    .line 43
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v2, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->val$bb:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_7

    .line 45
    :catch_10
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$3;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    goto :goto_7
.end method

.class final Lcom/koushikdutta/async/Util$7;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->pump(Ljava/io/File;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3

    .prologue
    .line 178
    iput-object p1, p0, Lcom/koushikdutta/async/Util$7;->val$is:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/koushikdutta/async/Util$7;->val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/Util$7;->val$is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 183
    iget-object v1, p0, Lcom/koushikdutta/async/Util$7;->val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 188
    :goto_a
    return-void

    .line 185
    :catch_b
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/koushikdutta/async/Util$7;->val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_a
.end method

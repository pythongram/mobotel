.class Lcom/koushikdutta/async/http/cache/RequestHeaders$1;
.super Ljava/lang/Object;
.source "RequestHeaders.java"

# interfaces
.implements Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/RequestHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/RequestHeaders;)V
    .registers 2
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/cache/RequestHeaders;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 73
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    # setter for: Lcom/koushikdutta/async/http/cache/RequestHeaders;->noCache:Z
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->access$002(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z

    .line 84
    :cond_e
    :goto_e
    return-void

    .line 75
    :cond_f
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/koushikdutta/async/http/cache/RequestHeaders;->maxAgeSeconds:I
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->access$102(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_e

    .line 77
    :cond_21
    const-string v0, "max-stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/koushikdutta/async/http/cache/RequestHeaders;->maxStaleSeconds:I
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->access$202(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_e

    .line 79
    :cond_33
    const-string v0, "min-fresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/koushikdutta/async/http/cache/RequestHeaders;->minFreshSeconds:I
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->access$302(Lcom/koushikdutta/async/http/cache/RequestHeaders;I)I

    goto :goto_e

    .line 81
    :cond_45
    const-string v0, "only-if-cached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/cache/RequestHeaders;

    # setter for: Lcom/koushikdutta/async/http/cache/RequestHeaders;->onlyIfCached:Z
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->access$402(Lcom/koushikdutta/async/http/cache/RequestHeaders;Z)Z

    goto :goto_e
.end method

.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;
.super Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedSSLSocket"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V
    .registers 6
    .param p2, "cacheResponse"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;
    .param p3, "contentLength"    # J

    .prologue
    .line 723
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    .line 724
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 725
    return-void
.end method


# virtual methods
.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 734
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSSLEngine()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .prologue
    .line 729
    const/4 v0, 0x0

    return-object v0
.end method

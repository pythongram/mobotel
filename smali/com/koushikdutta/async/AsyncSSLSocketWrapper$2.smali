.class final Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshake(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;->val$callback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .registers 6
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x0

    .line 106
    if-eqz p1, :cond_9

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;->val$callback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    invoke-interface {v0, p1, v3}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 110
    :goto_8
    return-void

    .line 109
    :cond_9
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;->val$callback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "socket closed during handshake"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    goto :goto_8
.end method

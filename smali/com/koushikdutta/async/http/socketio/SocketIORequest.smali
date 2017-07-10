.class public Lcom/koushikdutta/async/http/socketio/SocketIORequest;
.super Lcom/koushikdutta/async/http/AsyncHttpPost;
.source "SocketIORequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;
    }
.end annotation


# instance fields
.field config:Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;

.field endpoint:Ljava/lang/String;

.field query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 9
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "endpoint"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "endpoint"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "config"    # Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_37

    const-string v0, ""

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/socket.io/1/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpPost;-><init>(Ljava/lang/String;)V

    .line 37
    if-eqz p4, :cond_4b

    .end local p4    # "config":Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;
    :goto_30
    iput-object p4, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->config:Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;

    .line 38
    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->endpoint:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->query:Ljava/lang/String;

    .line 40
    return-void

    .line 36
    .restart local p4    # "config":Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 37
    :cond_4b
    new-instance p4, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;

    .end local p4    # "config":Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;
    invoke-direct {p4}, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;-><init>()V

    goto :goto_30
.end method


# virtual methods
.method public getConfig()Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->config:Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->query:Ljava/lang/String;

    return-object v0
.end method

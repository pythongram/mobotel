.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .registers 4
    .param p1, "client"    # Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .prologue
    .line 331
    iget-object v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->errorCallback:Lcom/koushikdutta/async/http/socketio/ErrorCallback;

    .line 332
    .local v0, "callback":Lcom/koushikdutta/async/http/socketio/ErrorCallback;
    if-eqz v0, :cond_9

    .line 333
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;->val$error:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/socketio/ErrorCallback;->onError(Ljava/lang/String;)V

    .line 334
    :cond_9
    return-void
.end method

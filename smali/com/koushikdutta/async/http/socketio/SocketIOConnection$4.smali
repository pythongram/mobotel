.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$4;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->delayReconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$4;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$4;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnect(Lcom/koushikdutta/async/future/DependentCancellable;)V

    .line 222
    return-void
.end method

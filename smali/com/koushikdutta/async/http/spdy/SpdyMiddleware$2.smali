.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;
.super Ljava/lang/Object;
.source "SpdyMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->createHandshakeCallback(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

.field final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .registers 18
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "socket"    # Lcom/koushikdutta/async/AsyncSSLSocket;

    .prologue
    .line 192
    iget-object v10, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v10, v10, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v11, "checking spdy handshake"

    invoke-virtual {v10, v11}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 193
    if-nez p1, :cond_11

    iget-object v10, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v10, v10, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->nativeGetAlpnNegotiatedProtocol:Ljava/lang/reflect/Method;

    if-nez v10, :cond_26

    .line 194
    :cond_11
    iget-object v10, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v11, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    iget-object v12, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    # invokes: Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->invokeConnect(Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    invoke-static {v10, v11, v12, v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$200(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 195
    iget-object v10, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v11, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    # invokes: Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->noSpdy(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$300(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V

    .line 244
    :goto_25
    return-void

    .line 200
    :cond_26
    :try_start_26
    iget-object v10, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v10, v10, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->sslNativePointer:Ljava/lang/reflect/Field;

    invoke-interface/range {p2 .. p2}, Lcom/koushikdutta/async/AsyncSSLSocket;->getSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 201
    .local v8, "ptr":J
    iget-object v10, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v10, v10, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->nativeGetAlpnNegotiatedProtocol:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    move-object v6, v0

    .line 202
    .local v6, "proto":[B
    if-nez v6, :cond_6e

    .line 203
    iget-object v10, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v11, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    iget-object v12, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    # invokes: Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->invokeConnect(Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    invoke-static {v10, v11, v12, v13, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$200(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 204
    iget-object v10, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v11, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    # invokes: Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->noSpdy(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$300(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_66} :catch_67

    goto :goto_25

    .line 215
    .end local v6    # "proto":[B
    .end local v8    # "ptr":J
    :catch_67
    move-exception v4

    .line 216
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 207
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v6    # "proto":[B
    .restart local v8    # "ptr":J
    :cond_6e
    :try_start_6e
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 208
    .local v7, "protoString":Ljava/lang/String;
    invoke-static {v7}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v5

    .line 209
    .local v5, "p":Lcom/koushikdutta/async/http/Protocol;
    if-eqz v5, :cond_7f

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/Protocol;->needsSpdyConnection()Z

    move-result v10

    if-nez v10, :cond_93

    .line 210
    :cond_7f
    iget-object v10, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v11, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    iget-object v12, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    # invokes: Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->invokeConnect(Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    invoke-static {v10, v11, v12, v13, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$200(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 211
    iget-object v10, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v11, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;->val$key:Ljava/lang/String;

    # invokes: Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->noSpdy(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$300(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_92} :catch_67

    goto :goto_25

    .line 219
    :cond_93
    new-instance v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;

    invoke-static {v7}, Lcom/koushikdutta/async/http/Protocol;->get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-direct {v2, p0, v0, v10}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2$1;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/Protocol;)V

    .line 240
    .local v2, "connection":Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;
    :try_start_9e
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->sendConnectionPreface()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_25

    .line 241
    :catch_a2
    move-exception v3

    .line 242
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_25
.end method

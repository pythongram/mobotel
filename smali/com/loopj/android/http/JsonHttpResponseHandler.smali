.class public Lcom/loopj/android/http/JsonHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field protected static final SUCCESS_JSON_MESSAGE:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 153
    if-eqz p2, :cond_23

    .line 154
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_10

    .line 156
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 168
    :goto_f
    return-void

    .line 157
    :cond_10
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1f

    .line 158
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_f

    .line 165
    :catch_1a
    move-exception v0

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_f

    .line 160
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_f

    .line 163
    :cond_23
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_28} :catch_1a

    goto :goto_f
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    .line 123
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 125
    :goto_8
    return-void

    .line 119
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 120
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->handleSuccessJsonMessage(ILjava/lang/Object;)V

    goto :goto_8

    .line 117
    nop

    :pswitch_data_20
    .packed-switch 0x64
        :pswitch_9
    .end packed-switch
.end method

.method protected handleSuccessJsonMessage(ILjava/lang/Object;)V
    .registers 6

    .prologue
    .line 128
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_a

    .line 129
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 135
    :goto_9
    return-void

    .line 130
    :cond_a
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_14

    .line 131
    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONArray;)V

    goto :goto_9

    .line 133
    :cond_14
    new-instance v1, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_9
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .registers 3

    .prologue
    .line 89
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 88
    return-void
.end method

.method public onSuccess(ILorg/json/JSONArray;)V
    .registers 3

    .prologue
    .line 85
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONArray;)V

    .line 86
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 74
    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .registers 2

    .prologue
    .line 63
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 54
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string/jumbo v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 142
    :cond_16
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 144
    :cond_1f
    if-nez v1, :cond_22

    .line 147
    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    goto :goto_21
.end method

.method protected sendSuccessMessage(ILjava/lang/String;)V
    .registers 8

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_29

    .line 100
    :try_start_9
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    const/16 v1, 0x64

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_23} :catch_24

    .line 108
    :goto_23
    return-void

    .line 102
    :catch_24
    move-exception v0

    .line 103
    invoke-virtual {p0, v0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_23

    .line 106
    :cond_29
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    goto :goto_23
.end method

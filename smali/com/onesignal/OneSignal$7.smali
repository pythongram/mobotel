.class final Lcom/onesignal/OneSignal$7;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .registers 2

    .prologue
    .line 881
    iput-object p1, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 900
    const-string v2, "create notification failed"

    # invokes: Lcom/onesignal/OneSignal;->logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v2, p1, p3, p2}, Lcom/onesignal/OneSignal;->access$1700(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 901
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v2, :cond_18

    .line 903
    if-nez p1, :cond_e

    .line 904
    :try_start_b
    const-string/jumbo p2, "{\"error\": \"HTTP no response error\"}"

    .line 906
    :cond_e
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_18} :catch_19

    .line 915
    :cond_18
    :goto_18
    return-void

    .line 907
    :catch_19
    move-exception v1

    .line 909
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1a
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "{\"error\": \"Unknown response!\"}"

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_27} :catch_28

    goto :goto_18

    .line 910
    :catch_28
    move-exception v0

    .line 911
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_18
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 884
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP create notification success: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_32

    move-object v2, p1

    :goto_10
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 885
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    if-eqz v2, :cond_31

    .line 887
    :try_start_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 888
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "errors"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 889
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    invoke-interface {v2, v0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_31} :catch_40

    .line 896
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_31
    :goto_31
    return-void

    .line 884
    :cond_32
    const-string v2, "null"

    goto :goto_10

    .line 891
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_35
    :try_start_35
    iget-object v2, p0, Lcom/onesignal/OneSignal$7;->val$handler:Lcom/onesignal/OneSignal$PostNotificationResponseHandler;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3f} :catch_40

    goto :goto_31

    .line 892
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_40
    move-exception v1

    .line 893
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_31
.end method

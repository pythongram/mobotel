.class final Lcom/onesignal/OneSignalStateSynchronizer$5;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/OneSignalStateSynchronizer$GetTagsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onSuccess(Ljava/lang/String;)V
    .registers 10
    .param p1, "responseStr"    # Ljava/lang/String;

    .prologue
    .line 782
    const/4 v3, 0x1

    # setter for: Lcom/onesignal/OneSignalStateSynchronizer;->serverSuccess:Z
    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1702(Z)Z

    .line 784
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 785
    .local v2, "lastGetTagsResponse":Lorg/json/JSONObject;
    const-string v3, "tags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 786
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->syncLock:Ljava/lang/Object;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$600()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_16} :catch_5f

    .line 787
    :try_start_16
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1200()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    iget-object v3, v3, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v5, "tags"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 788
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1800()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v5

    iget-object v5, v5, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v6, "tags"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 787
    # invokes: Lcom/onesignal/OneSignalStateSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    invoke-static {v3, v5, v6, v7}, Lcom/onesignal/OneSignalStateSynchronizer;->access$400(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    .line 791
    .local v0, "dependDiff":Lorg/json/JSONObject;
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1200()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    iget-object v3, v3, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->syncValues:Lorg/json/JSONObject;

    const-string v5, "tags"

    const-string v6, "tags"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 792
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->currentUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1200()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$200(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    .line 796
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1800()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 797
    # getter for: Lcom/onesignal/OneSignalStateSynchronizer;->toSyncUserState:Lcom/onesignal/OneSignalStateSynchronizer$UserState;
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->access$1800()Lcom/onesignal/OneSignalStateSynchronizer$UserState;

    move-result-object v3

    # invokes: Lcom/onesignal/OneSignalStateSynchronizer$UserState;->persistState()V
    invoke-static {v3}, Lcom/onesignal/OneSignalStateSynchronizer$UserState;->access$200(Lcom/onesignal/OneSignalStateSynchronizer$UserState;)V

    .line 798
    monitor-exit v4

    .line 803
    .end local v0    # "dependDiff":Lorg/json/JSONObject;
    .end local v2    # "lastGetTagsResponse":Lorg/json/JSONObject;
    :cond_5b
    :goto_5b
    return-void

    .line 798
    .restart local v2    # "lastGetTagsResponse":Lorg/json/JSONObject;
    :catchall_5c
    move-exception v3

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_16 .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v3
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_5f} :catch_5f

    .line 800
    .end local v2    # "lastGetTagsResponse":Lorg/json/JSONObject;
    :catch_5f
    move-exception v1

    .line 801
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5b
.end method

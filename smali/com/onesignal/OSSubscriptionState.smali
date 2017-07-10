.class public Lcom/onesignal/OSSubscriptionState;
.super Ljava/lang/Object;
.source "OSSubscriptionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private accepted:Z

.field observable:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable",
            "<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSSubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field private pushToken:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userSubscriptionSetting:Z


# direct methods
.method constructor <init>(ZZ)V
    .registers 8
    .param p1, "asFrom"    # Z
    .param p2, "permissionAccepted"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Lcom/onesignal/OSObservable;

    const-string v2, "changed"

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    .line 45
    if-eqz p1, :cond_37

    .line 46
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "ONESIGNAL_SUBSCRIPTION_LAST"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    .line 48
    const-string v1, "ONESIGNAL_PLAYER_ID_LAST"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 49
    const-string v1, "ONESIGNAL_PUSH_TOKEN_LAST"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 50
    const-string v1, "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    .line 58
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_36
    return-void

    .line 53
    :cond_37
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getUserSubscribePreference()Z

    move-result v1

    iput-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    .line 54
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    goto :goto_36
.end method

.method private setAccepted(Z)V
    .registers 4
    .param p1, "set"    # Z

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v0

    .line 107
    .local v0, "lastSubscribed":Z
    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    .line 108
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v1

    if-eq v0, v1, :cond_11

    .line 109
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    .line 110
    :cond_11
    return-void
.end method


# virtual methods
.method changed(Lcom/onesignal/OSPermissionState;)V
    .registers 3
    .param p1, "state"    # Lcom/onesignal/OSPermissionState;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/onesignal/OSSubscriptionState;->setAccepted(Z)V

    .line 67
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 137
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 139
    :goto_4
    return-object v0

    .line 138
    :catch_5
    move-exception v0

    .line 139
    const/4 v0, 0x0

    goto :goto_4
.end method

.method compare(Lcom/onesignal/OSSubscriptionState;)Z
    .registers 4
    .param p1, "from"    # Lcom/onesignal/OSSubscriptionState;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    iget-boolean v1, p1, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    :goto_c
    iget-object v1, p1, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p1, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 130
    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    :goto_1e
    iget-object v1, p1, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v1, :cond_3b

    iget-object v1, p1, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 131
    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    iget-boolean v1, p1, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    if-eq v0, v1, :cond_3e

    :cond_30
    const/4 v0, 0x1

    .line 129
    :goto_31
    return v0

    :cond_32
    const-string v0, ""

    goto :goto_c

    :cond_35
    const-string v1, ""

    goto :goto_12

    .line 130
    :cond_38
    const-string v0, ""

    goto :goto_1e

    :cond_3b
    const-string v1, ""

    goto :goto_24

    .line 131
    :cond_3e
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public getPushToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribed()Z
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSubscriptionSetting()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    return v0
.end method

.method persistAsFrom()V
    .registers 5

    .prologue
    .line 117
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ONESIGNAL_SUBSCRIPTION_LAST"

    iget-boolean v3, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v2, "ONESIGNAL_PLAYER_ID_LAST"

    iget-object v3, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v2, "ONESIGNAL_PUSH_TOKEN_LAST"

    iget-object v3, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v2, "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

    iget-boolean v3, p0, Lcom/onesignal/OSSubscriptionState;->accepted:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method setPushToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 81
    if-nez p1, :cond_3

    .line 87
    :cond_2
    :goto_2
    return-void

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    .line 84
    .local v0, "changed":Z
    :goto_c
    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    .line 85
    if-eqz v0, :cond_2

    .line 86
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    .end local v0    # "changed":Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_c
.end method

.method setUserId(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v0, 0x1

    .line 71
    .local v0, "changed":Z
    :goto_9
    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    .line 72
    if-eqz v0, :cond_12

    .line 73
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    .line 74
    :cond_12
    return-void

    .line 70
    .end local v0    # "changed":Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method setUserSubscriptionSetting(Z)V
    .registers 4
    .param p1, "set"    # Z

    .prologue
    .line 95
    iget-boolean v1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    if-eq v1, p1, :cond_f

    const/4 v0, 0x1

    .line 96
    .local v0, "changed":Z
    :goto_5
    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    .line 97
    if-eqz v0, :cond_e

    .line 98
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    .line 99
    :cond_e
    return-void

    .line 95
    .end local v0    # "changed":Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 143
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v0, "mainObj":Lorg/json/JSONObject;
    :try_start_5
    iget-object v2, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 147
    const-string v2, "userId"

    iget-object v3, p0, Lcom/onesignal/OSSubscriptionState;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :goto_10
    iget-object v2, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 152
    const-string v2, "pushToken"

    iget-object v3, p0, Lcom/onesignal/OSSubscriptionState;->pushToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :goto_1b
    const-string v2, "userSubscriptionSetting"

    iget-boolean v3, p0, Lcom/onesignal/OSSubscriptionState;->userSubscriptionSetting:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 157
    const-string v2, "subscribed"

    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getSubscribed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 163
    :goto_2b
    return-object v0

    .line 149
    :cond_2c
    const-string v2, "userId"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_33} :catch_34

    goto :goto_10

    .line 159
    :catch_34
    move-exception v1

    .line 160
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2b

    .line 154
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_39
    :try_start_39
    const-string v2, "pushToken"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_40} :catch_34

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/onesignal/OSPermissionSubscriptionState;
.super Ljava/lang/Object;
.source "OSPermissionSubscriptionState.java"


# instance fields
.field permissionStatus:Lcom/onesignal/OSPermissionState;

.field subscriptionStatus:Lcom/onesignal/OSSubscriptionState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissionStatus()Lcom/onesignal/OSPermissionState;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    return-object v0
.end method

.method public getSubscriptionStatus()Lcom/onesignal/OSSubscriptionState;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v0, "mainObj":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "permissionStatus"

    iget-object v3, p0, Lcom/onesignal/OSPermissionSubscriptionState;->permissionStatus:Lcom/onesignal/OSPermissionState;

    invoke-virtual {v3}, Lcom/onesignal/OSPermissionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v2, "subscriptionStatus"

    iget-object v3, p0, Lcom/onesignal/OSPermissionSubscriptionState;->subscriptionStatus:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v3}, Lcom/onesignal/OSSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1b} :catch_1c

    .line 55
    :goto_1b
    return-object v0

    .line 51
    :catch_1c
    move-exception v1

    .line 52
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

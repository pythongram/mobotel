.class public Lcom/onesignal/OSPermissionState;
.super Ljava/lang/Object;
.source "OSPermissionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private enabled:Z

.field observable:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable",
            "<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSPermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .registers 6
    .param p1, "asFrom"    # Z

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Lcom/onesignal/OSObservable;

    const-string v2, "changed"

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    .line 46
    if-eqz p1, :cond_1e

    .line 47
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "ONESIGNAL_ACCEPTED_NOTIFICATION_LAST"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    .line 52
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_1d
    return-void

    .line 51
    :cond_1e
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->refreshAsTo()V

    goto :goto_1d
.end method

.method private setEnabled(Z)V
    .registers 4
    .param p1, "set"    # Z

    .prologue
    .line 65
    iget-boolean v1, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    if-eq v1, p1, :cond_f

    const/4 v0, 0x1

    .line 66
    .local v0, "changed":Z
    :goto_5
    iput-boolean p1, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    .line 67
    if-eqz v0, :cond_e

    .line 68
    iget-object v1, p0, Lcom/onesignal/OSPermissionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    .line 69
    :cond_e
    return-void

    .line 65
    .end local v0    # "changed":Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 84
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 86
    :goto_4
    return-object v0

    .line 85
    :catch_5
    move-exception v0

    .line 86
    const/4 v0, 0x0

    goto :goto_4
.end method

.method compare(Lcom/onesignal/OSPermissionState;)Z
    .registers 4
    .param p1, "from"    # Lcom/onesignal/OSPermissionState;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    iget-boolean v1, p1, Lcom/onesignal/OSPermissionState;->enabled:Z

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getEnabled()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    return v0
.end method

.method persistAsFrom()V
    .registers 5

    .prologue
    .line 72
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getGcmPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ONESIGNAL_ACCEPTED_NOTIFICATION_LAST"

    iget-boolean v3, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method

.method refreshAsTo()V
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/onesignal/OSPermissionState;->setEnabled(Z)V

    .line 58
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v0, "mainObj":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "enabled"

    iget-boolean v3, p0, Lcom/onesignal/OSPermissionState;->enabled:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_d

    .line 99
    :goto_c
    return-object v0

    .line 95
    :catch_d
    move-exception v1

    .line 96
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

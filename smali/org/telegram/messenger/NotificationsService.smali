.class public Lorg/telegram/messenger/NotificationsService;
.super Landroid/app/Service;
.source "NotificationsService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 20
    const-string v0, "service started"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 22
    return-void
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    .line 35
    const-string v2, "service destroyed"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 37
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "pushService"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.telegram.start"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/NotificationsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_21
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

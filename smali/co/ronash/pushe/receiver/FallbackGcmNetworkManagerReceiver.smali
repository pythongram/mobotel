.class public Lco/ronash/pushe/receiver/FallbackGcmNetworkManagerReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    const-string v0, "co.ronash.pushe.CHECK_TASKS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    const-string v0, "Checking for due Gcm Tasks"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lco/ronash/pushe/task/scheduler/b/a;->a(Landroid/content/Context;)Lco/ronash/pushe/task/scheduler/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/a;->b()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_f

    :catch_20
    move-exception v0

    invoke-static {p1}, Lco/ronash/pushe/log/b;->a(Landroid/content/Context;)Lco/ronash/pushe/log/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/b;->a(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.class public Lco/ronash/pushe/service/FallbackGcmTaskRunner;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "FallbackGcmTaskRunner"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lco/ronash/pushe/task/c;Lco/ronash/pushe/task/scheduler/b/b;)V
    .registers 4

    sget-object v0, Lco/ronash/pushe/service/a;->a:[I

    invoke-virtual {p0}, Lco/ronash/pushe/task/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result code of handleScheduledTask is unexpected value. ResultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_24
    return-void

    :pswitch_25
    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->a()V

    goto :goto_24

    :pswitch_29
    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->b()V

    goto :goto_24

    :pswitch_2d
    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->c()V

    goto :goto_24

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8

    invoke-static {p0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    const-string v0, "co.ronash.pushe.ACTION_TASK_READY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    const-string v0, "task_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lco/ronash/pushe/task/scheduler/b/a;->a(Landroid/content/Context;)Lco/ronash/pushe/task/scheduler/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/task/scheduler/b/a;->a(Ljava/lang/String;)Lco/ronash/pushe/task/scheduler/b/b;

    move-result-object v1

    if-nez v1, :cond_36

    const-string v1, "Missing scheduled task is running"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Tag"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    goto :goto_f

    :cond_36
    invoke-static {p0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    invoke-virtual {v1}, Lco/ronash/pushe/task/scheduler/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lco/ronash/pushe/task/d;->b(Ljava/lang/String;)Lco/ronash/pushe/task/c;

    move-result-object v0

    invoke-static {v0, v1}, Lco/ronash/pushe/service/FallbackGcmTaskRunner;->a(Lco/ronash/pushe/task/c;Lco/ronash/pushe/task/scheduler/b/b;)V

    goto :goto_f
.end method

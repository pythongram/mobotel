.class public Lco/ronash/pushe/task/scheduler/b/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lco/ronash/pushe/task/scheduler/b/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lco/ronash/pushe/task/scheduler/b/c;

.field private d:Lco/ronash/pushe/task/scheduler/b/c;

.field private e:Lco/ronash/pushe/task/scheduler/b/c;

.field private f:J

.field private g:Landroid/app/AlarmManager;

.field private h:Landroid/app/PendingIntent;

.field private i:Lco/ronash/pushe/d/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/task/scheduler/b/a;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/b/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/task/scheduler/b/a;
    .registers 3

    sget-object v0, Lco/ronash/pushe/task/scheduler/b/a;->a:Lco/ronash/pushe/task/scheduler/b/a;

    if-nez v0, :cond_13

    const-class v1, Lco/ronash/pushe/task/scheduler/b/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lco/ronash/pushe/task/scheduler/b/a;->a:Lco/ronash/pushe/task/scheduler/b/a;

    if-nez v0, :cond_12

    new-instance v0, Lco/ronash/pushe/task/scheduler/b/a;

    invoke-direct {v0, p0}, Lco/ronash/pushe/task/scheduler/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/ronash/pushe/task/scheduler/b/a;->a:Lco/ronash/pushe/task/scheduler/b/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lco/ronash/pushe/task/scheduler/b/a;->a:Lco/ronash/pushe/task/scheduler/b/a;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lco/ronash/pushe/task/scheduler/b/a;)V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/task/scheduler/b/a;->f()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/task/scheduler/b/a;Lco/ronash/pushe/task/scheduler/b/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/ronash/pushe/task/scheduler/b/a;->b(Lco/ronash/pushe/task/scheduler/b/b;)V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/task/scheduler/b/a;Lco/ronash/pushe/task/scheduler/b/b;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/b;Z)V

    return-void
.end method

.method private declared-synchronized a(Lco/ronash/pushe/task/scheduler/b/b;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lco/ronash/pushe/d/b;->c:Lco/ronash/pushe/d/b;

    invoke-virtual {v0}, Lco/ronash/pushe/d/b;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lco/ronash/pushe/task/scheduler/b/b;->b(I)V

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->e:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0, p1}, Lco/ronash/pushe/task/scheduler/b/c;->a(Lco/ronash/pushe/task/scheduler/b/b;)V

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->e:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/c;->a()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lco/ronash/pushe/task/scheduler/b/b;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lco/ronash/pushe/d/b;->b:Lco/ronash/pushe/d/b;

    invoke-virtual {v0}, Lco/ronash/pushe/d/b;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lco/ronash/pushe/task/scheduler/b/b;->b(I)V

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->c:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0, p1}, Lco/ronash/pushe/task/scheduler/b/c;->a(Lco/ronash/pushe/task/scheduler/b/b;)V

    if-eqz p2, :cond_1c

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->c:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/c;->a()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_34

    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    sget-object v0, Lco/ronash/pushe/d/b;->a:Lco/ronash/pushe/d/b;

    invoke-virtual {v0}, Lco/ronash/pushe/d/b;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lco/ronash/pushe/task/scheduler/b/b;->b(I)V

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->d:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0, p1}, Lco/ronash/pushe/task/scheduler/b/c;->a(Lco/ronash/pushe/task/scheduler/b/b;)V

    if-eqz p2, :cond_1c

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->d:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/c;->a()V
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_34

    goto :goto_1c

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lco/ronash/pushe/task/scheduler/b/c;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/c;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/scheduler/b/b;

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/b;->f()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-gtz v5, :cond_13

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_13

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2e
    :try_start_2e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/scheduler/b/b;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lco/ronash/pushe/task/scheduler/b/a;->b(Lco/ronash/pushe/task/scheduler/b/b;Z)V

    invoke-direct {p0, v0}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/b;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lco/ronash/pushe/task/scheduler/b/a;->b:Landroid/content/Context;

    const-class v4, Lco/ronash/pushe/service/FallbackGcmTaskRunner;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "co.ronash.pushe.ACTION_TASK_READY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "task_tag"

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_61
    .catchall {:try_start_2e .. :try_end_61} :catchall_2b

    goto :goto_32

    :cond_62
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lco/ronash/pushe/task/scheduler/b/a;)Lco/ronash/pushe/d/f;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->i:Lco/ronash/pushe/d/f;

    return-object v0
.end method

.method private declared-synchronized b(Lco/ronash/pushe/task/scheduler/b/b;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->e:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0, p1}, Lco/ronash/pushe/task/scheduler/b/c;->b(Lco/ronash/pushe/task/scheduler/b/b;)V

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->e:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/c;->a()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lco/ronash/pushe/task/scheduler/b/b;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->c:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0, p1}, Lco/ronash/pushe/task/scheduler/b/c;->b(Lco/ronash/pushe/task/scheduler/b/b;)V

    if-eqz p2, :cond_13

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->c:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/c;->a()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_22

    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->d:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0, p1}, Lco/ronash/pushe/task/scheduler/b/c;->b(Lco/ronash/pushe/task/scheduler/b/b;)V

    if-eqz p2, :cond_13

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->d:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/c;->a()V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_22

    goto :goto_13

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d()Lco/ronash/pushe/task/scheduler/b/a;
    .registers 1

    sget-object v0, Lco/ronash/pushe/task/scheduler/b/a;->a:Lco/ronash/pushe/task/scheduler/b/a;

    return-object v0
.end method

.method private e()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->b:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v2}, Lco/ronash/pushe/k/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22

    :cond_25
    move v0, v1

    goto :goto_22
.end method

.method private f()V
    .registers 8

    const-wide/32 v2, 0xdbba0

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->h:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->g:Landroid/app/AlarmManager;

    if-nez v0, :cond_18

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->g:Landroid/app/AlarmManager;

    :cond_18
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/task/scheduler/b/a;->b:Landroid/content/Context;

    const-class v4, Lco/ronash/pushe/receiver/FallbackGcmNetworkManagerReceiver;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "co.ronash.pushe.CHECK_TASKS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/task/scheduler/b/a;->b:Landroid/content/Context;

    const v4, 0xca11

    const/high16 v5, 0x8000000

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->h:Landroid/app/PendingIntent;

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->g:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    iget-object v6, p0, Lco/ronash/pushe/task/scheduler/b/a;->h:Landroid/app/PendingIntent;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_7
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->h:Landroid/app/PendingIntent;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->g:Landroid/app/AlarmManager;

    if-nez v0, :cond_15

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->g:Landroid/app/AlarmManager;

    :cond_15
    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->g:Landroid/app/AlarmManager;

    iget-object v1, p0, Lco/ronash/pushe/task/scheduler/b/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->h:Landroid/app/PendingIntent;

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lco/ronash/pushe/task/scheduler/b/b;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->e:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0, p1}, Lco/ronash/pushe/task/scheduler/b/c;->a(Ljava/lang/String;)Lco/ronash/pushe/task/scheduler/b/b;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->i:Lco/ronash/pushe/d/f;

    if-nez v0, :cond_d

    new-instance v0, Lco/ronash/pushe/d/f;

    iget-object v1, p0, Lco/ronash/pushe/task/scheduler/b/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lco/ronash/pushe/d/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->i:Lco/ronash/pushe/d/f;

    :cond_d
    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->i:Lco/ronash/pushe/d/f;

    invoke-virtual {v0}, Lco/ronash/pushe/d/f;->a()V

    new-instance v0, Lco/ronash/pushe/task/scheduler/b/c;

    iget-object v1, p0, Lco/ronash/pushe/task/scheduler/b/a;->i:Lco/ronash/pushe/d/f;

    sget-object v2, Lco/ronash/pushe/d/b;->b:Lco/ronash/pushe/d/b;

    invoke-virtual {v2}, Lco/ronash/pushe/d/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/d/f;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lco/ronash/pushe/task/scheduler/b/c;-><init>(Lco/ronash/pushe/task/scheduler/b/a;Ljava/util/List;)V

    iput-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->c:Lco/ronash/pushe/task/scheduler/b/c;

    new-instance v0, Lco/ronash/pushe/task/scheduler/b/c;

    iget-object v1, p0, Lco/ronash/pushe/task/scheduler/b/a;->i:Lco/ronash/pushe/d/f;

    sget-object v2, Lco/ronash/pushe/d/b;->a:Lco/ronash/pushe/d/b;

    invoke-virtual {v2}, Lco/ronash/pushe/d/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/d/f;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lco/ronash/pushe/task/scheduler/b/c;-><init>(Lco/ronash/pushe/task/scheduler/b/a;Ljava/util/List;)V

    iput-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->d:Lco/ronash/pushe/task/scheduler/b/c;

    new-instance v0, Lco/ronash/pushe/task/scheduler/b/c;

    iget-object v1, p0, Lco/ronash/pushe/task/scheduler/b/a;->i:Lco/ronash/pushe/d/f;

    sget-object v2, Lco/ronash/pushe/d/b;->c:Lco/ronash/pushe/d/b;

    invoke-virtual {v2}, Lco/ronash/pushe/d/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/d/f;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lco/ronash/pushe/task/scheduler/b/c;-><init>(Lco/ronash/pushe/task/scheduler/b/a;Ljava/util/List;)V

    iput-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->e:Lco/ronash/pushe/task/scheduler/b/c;

    return-void
.end method

.method public declared-synchronized b()V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lco/ronash/pushe/task/scheduler/b/a;->f:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3c

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    :goto_14
    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    iput-wide v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->f:J

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->d:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-direct {p0, v0}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/c;)V

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->d:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/c;->a()V

    invoke-direct {p0}, Lco/ronash/pushe/task/scheduler/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->c:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-direct {p0, v0}, Lco/ronash/pushe/task/scheduler/b/a;->a(Lco/ronash/pushe/task/scheduler/b/c;)V

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->c:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/c;->a()V

    :cond_32
    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/b/a;->c()I

    move-result v0

    if-lez v0, :cond_3f

    invoke-direct {p0}, Lco/ronash/pushe/task/scheduler/b/a;->f()V
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_3c

    goto :goto_14

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3f
    :try_start_3f
    invoke-direct {p0}, Lco/ronash/pushe/task/scheduler/b/a;->g()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_3c

    goto :goto_14
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/scheduler/b/a;->c:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v0}, Lco/ronash/pushe/task/scheduler/b/c;->b()I

    move-result v0

    iget-object v1, p0, Lco/ronash/pushe/task/scheduler/b/a;->d:Lco/ronash/pushe/task/scheduler/b/c;

    invoke-virtual {v1}, Lco/ronash/pushe/task/scheduler/b/c;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

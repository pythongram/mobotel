.class public Lco/ronash/pushe/task/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lco/ronash/pushe/task/d;


# instance fields
.field private b:Ljava/util/Map;

.field private c:Lco/ronash/pushe/task/scheduler/a;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/ronash/pushe/task/d;->b:Ljava/util/Map;

    new-instance v0, Lco/ronash/pushe/task/scheduler/a/c;

    invoke-direct {v0, p1}, Lco/ronash/pushe/task/scheduler/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/ronash/pushe/task/d;->c:Lco/ronash/pushe/task/scheduler/a;

    return-void
.end method

.method private a(Lco/ronash/pushe/k/l;)I
    .registers 5

    const-string v0, "retry_count"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_18

    move-result v0

    :goto_c
    add-int/lit8 v0, v0, 0x1

    const-string v1, "retry_count"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/task/d;
    .registers 3

    sget-object v0, Lco/ronash/pushe/task/d;->a:Lco/ronash/pushe/task/d;

    if-nez v0, :cond_13

    const-class v1, Lco/ronash/pushe/task/d;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lco/ronash/pushe/task/d;->a:Lco/ronash/pushe/task/d;

    if-nez v0, :cond_12

    new-instance v0, Lco/ronash/pushe/task/d;

    invoke-direct {v0, p0}, Lco/ronash/pushe/task/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/ronash/pushe/task/d;->a:Lco/ronash/pushe/task/d;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1b

    :cond_13
    sget-object v0, Lco/ronash/pushe/task/d;->a:Lco/ronash/pushe/task/d;

    invoke-direct {v0, p0}, Lco/ronash/pushe/task/d;->b(Landroid/content/Context;)V

    sget-object v0, Lco/ronash/pushe/task/d;->a:Lco/ronash/pushe/task/d;

    return-object v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private a()Lco/ronash/pushe/task/scheduler/a;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/task/d;->c:Lco/ronash/pushe/task/scheduler/a;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_7

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private b(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_13} :catch_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_13} :catch_28

    :goto_13
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lco/ronash/pushe/task/b;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_24} :catch_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_24} :catch_49

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    move-object v1, p1

    goto :goto_13

    :catch_28
    move-exception v1

    move-object v1, v0

    :goto_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25

    :catch_49
    move-exception v2

    goto :goto_2a

    :catch_4b
    move-exception v1

    goto :goto_25
.end method

.method private c(Ljava/lang/Class;)Z
    .registers 3

    const-class v0, Lco/ronash/pushe/task/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lco/ronash/pushe/k/l;)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    const-class v2, Lco/ronash/pushe/service/IntentTaskRunner;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "co.ronash.pushe.RUN_TASK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_19

    const-string v1, "task_type"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_19
    if-eqz p2, :cond_24

    const-string v1, "task_data"

    invoke-virtual {p2}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_24
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lco/ronash/pushe/task/a;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/a;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v0, "task_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, v2}, Lco/ronash/pushe/task/d;->a(Ljava/lang/String;)Lco/ronash/pushe/task/a;

    move-result-object v0

    if-nez v0, :cond_31

    const-string v0, "Retrieving intent task failed"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1d
    return-void

    :cond_1e
    if-eqz v0, :cond_66

    const-class v2, Lco/ronash/pushe/task/b/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance v0, Lco/ronash/pushe/task/b/d;

    invoke-direct {v0}, Lco/ronash/pushe/task/b/d;-><init>()V

    :cond_31
    :goto_31
    const-string v2, "task_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    :try_start_39
    invoke-static {v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;)Lco/ronash/pushe/k/l;
    :try_end_3c
    .catch Lco/ronash/pushe/k/c; {:try_start_39 .. :try_end_3c} :catch_5d

    move-result-object v1

    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v2, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Lco/ronash/pushe/task/b;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_1d

    :catch_43
    move-exception v0

    const-string v1, "Error in running a task"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Error"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    goto :goto_1d

    :catch_5d
    move-exception v2

    const-string v2, "Error parsing task json data from intent"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    :cond_66
    move-object v0, v1

    goto :goto_31
.end method

.method public a(Lco/ronash/pushe/task/a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method public a(Lco/ronash/pushe/task/a;Lco/ronash/pushe/k/l;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "task_id"

    invoke-virtual {p1}, Lco/ronash/pushe/task/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/task/d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lco/ronash/pushe/task/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;Lco/ronash/pushe/task/a/d;)V

    return-void
.end method

.method public a(Ljava/lang/Class;Lco/ronash/pushe/k/l;Lco/ronash/pushe/task/a/d;)V
    .registers 11

    const/4 v4, 0x4

    const/4 v6, 0x1

    new-instance v1, Lco/ronash/pushe/task/a/e;

    invoke-direct {v1}, Lco/ronash/pushe/task/a/e;-><init>()V

    if-eqz p3, :cond_c

    invoke-virtual {v1, p3}, Lco/ronash/pushe/task/a/e;->a(Lco/ronash/pushe/task/a/d;)V

    :cond_c
    invoke-direct {p0, p1}, Lco/ronash/pushe/task/d;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lco/ronash/pushe/task/a/e;->c(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;

    :cond_19
    const-class v0, Lco/ronash/pushe/task/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/a/a;

    if-eqz v0, :cond_6d

    invoke-virtual {v1, v0}, Lco/ronash/pushe/task/a/e;->a(Lco/ronash/pushe/task/a/a;)V

    :goto_26
    invoke-virtual {v1}, Lco/ronash/pushe/task/a/e;->a()Lco/ronash/pushe/task/a/d;

    move-result-object v1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lco/ronash/pushe/task/d;->c(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_35
    :goto_35
    if-eqz p2, :cond_40

    iget-object v2, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    :cond_40
    invoke-direct {p0, p1, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lco/ronash/pushe/task/d;->a()Lco/ronash/pushe/task/scheduler/a;

    move-result-object v2

    iget-object v3, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-interface {v2, v3, v0, v1}, Lco/ronash/pushe/task/scheduler/a;->a(Landroid/content/Context;Ljava/lang/String;Lco/ronash/pushe/task/a/d;)V

    const-string v1, "Scheduling GCM Task"

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Type"

    aput-object v5, v3, v4

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "Tag"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-void

    :cond_6d
    new-instance v0, Lco/ronash/pushe/task/a/b;

    invoke-direct {v0}, Lco/ronash/pushe/task/a/b;-><init>()V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/task/a/e;->a(Lco/ronash/pushe/task/a/a;)V

    goto :goto_26

    :cond_76
    if-eqz p2, :cond_35

    invoke-static {v4}, Lco/ronash/pushe/k/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_35
.end method

.method public a(Ljava/lang/Class;Lco/ronash/pushe/task/a/d;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;Lco/ronash/pushe/task/a/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lco/ronash/pushe/task/c;
    .registers 10

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v1, "Running GCM Task"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Tag"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-direct {p0, p1}, Lco/ronash/pushe/task/d;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, p1}, Lco/ronash/pushe/task/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2f

    move-object v3, v0

    :goto_21
    if-nez v4, :cond_3b

    const-string v0, "Invalid task type %s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    :goto_2e
    return-object v0

    :cond_2f
    iget-object v1, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    move-object v3, v0

    goto :goto_21

    :cond_3b
    :try_start_3b
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/b;
    :try_end_41
    .catch Ljava/lang/InstantiationException; {:try_start_3b .. :try_end_41} :catch_9a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_41} :catch_a7

    const/4 v1, -0x1

    if-eqz v3, :cond_48

    invoke-direct {p0, v3}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/k/l;)I

    move-result v1

    :cond_48
    iget-object v2, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-interface {v0, v2, v3}, Lco/ronash/pushe/task/b;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;

    move-result-object v2

    if-eqz v3, :cond_b5

    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    if-eq v2, v0, :cond_b5

    iget-object v0, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lco/ronash/pushe/d/c;->c(Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    if-ne v2, v0, :cond_e5

    if-ltz v1, :cond_e5

    const-class v0, Lco/ronash/pushe/task/a/a;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/a/a;

    if-eqz v0, :cond_c1

    invoke-interface {v0}, Lco/ronash/pushe/task/a/a;->e()I

    move-result v3

    if-lez v3, :cond_c1

    invoke-interface {v0}, Lco/ronash/pushe/task/a/a;->e()I

    move-result v0

    if-le v1, v0, :cond_c1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed too many times, aborting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_2e

    :catch_9a
    move-exception v0

    const-string v0, "Creating task instance %s failed"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_2e

    :catch_a7
    move-exception v0

    const-string v0, "Creating task isntance %s failed"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto/16 :goto_2e

    :cond_b5
    if-eqz v3, :cond_5d

    iget-object v0, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    goto :goto_5d

    :cond_c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " attempt %d failed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e5
    move-object v0, v2

    goto/16 :goto_2e
.end method

.method public b(Ljava/lang/Class;)V
    .registers 5

    invoke-direct {p0, p1}, Lco/ronash/pushe/task/d;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot cancel non-singleton task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lco/ronash/pushe/task/d;->a()Lco/ronash/pushe/task/scheduler/a;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/task/d;->d:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lco/ronash/pushe/task/scheduler/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/Class;Lco/ronash/pushe/k/l;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/k/l;Lco/ronash/pushe/task/a/d;)V

    return-void
.end method

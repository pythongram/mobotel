.class public Lco/ronash/pushe/task/scheduler/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/task/scheduler/a;
.implements Lcom/evernote/android/job/JobCreator;


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lco/ronash/pushe/task/scheduler/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lco/ronash/pushe/task/scheduler/a/c;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/JobManager;->addJobCreator(Lcom/evernote/android/job/JobCreator;)V

    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getConfig()Lcom/evernote/android/job/JobManager$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobManager$Config;->setVerbose(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lco/ronash/pushe/task/a/d;)Lcom/evernote/android/job/JobRequest;
    .registers 9

    new-instance v0, Lcom/evernote/android/job/JobRequest$Builder;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lco/ronash/pushe/task/scheduler/a/c;->a(Lcom/evernote/android/job/JobRequest$Builder;Lco/ronash/pushe/task/a/d;)V

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/evernote/android/job/JobRequest$Builder;->setExecutionWindow(JJ)Lcom/evernote/android/job/JobRequest$Builder;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/evernote/android/job/JobRequest$Builder;Lco/ronash/pushe/task/a/d;)V
    .registers 4

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/JobRequest$Builder;->setUpdateCurrent(Z)Lcom/evernote/android/job/JobRequest$Builder;

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/JobRequest$Builder;->setPersisted(Z)Lcom/evernote/android/job/JobRequest$Builder;

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->CONNECTED:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/JobRequest$Builder;->setRequiredNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)Lcom/evernote/android/job/JobRequest$Builder;

    :goto_25
    return-void

    :cond_26
    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->ANY:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/JobRequest$Builder;->setRequiredNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)Lcom/evernote/android/job/JobRequest$Builder;

    goto :goto_25
.end method

.method private b(Ljava/lang/String;Lco/ronash/pushe/task/a/d;)Lcom/evernote/android/job/JobRequest;
    .registers 9

    invoke-virtual {p2}, Lco/ronash/pushe/task/a/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long v2, v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    long-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/evernote/android/job/JobRequest$Builder;

    invoke-direct {v3, p1}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, p2}, Lco/ronash/pushe/task/scheduler/a/c;->a(Lcom/evernote/android/job/JobRequest$Builder;Lco/ronash/pushe/task/a/d;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Lcom/evernote/android/job/JobRequest$Builder;->setPeriodic(J)Lcom/evernote/android/job/JobRequest$Builder;

    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0, p2, v3}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_30

    invoke-static {p1}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/evernote/android/job/JobManager;->cancel(I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel job :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lco/ronash/pushe/task/a/d;)V
    .registers 8

    sget-boolean v0, Lco/ronash/pushe/task/scheduler/a/c;->a:Z

    if-nez v0, :cond_10

    invoke-virtual {p3}, Lco/ronash/pushe/task/a/d;->c()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    invoke-virtual {p3}, Lco/ronash/pushe/task/a/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2e

    invoke-direct {p0, p2, p3}, Lco/ronash/pushe/task/scheduler/a/c;->a(Ljava/lang/String;Lco/ronash/pushe/task/a/d;)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    :goto_22
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->schedule()I

    move-result v0

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;I)V

    return-void

    :cond_2e
    invoke-direct {p0, p2, p3}, Lco/ronash/pushe/task/scheduler/a/c;->b(Ljava/lang/String;Lco/ronash/pushe/task/a/d;)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    goto :goto_22
.end method

.method public create(Ljava/lang/String;)Lcom/evernote/android/job/Job;
    .registers 3

    new-instance v0, Lco/ronash/pushe/task/scheduler/a/a;

    invoke-direct {v0, p1}, Lco/ronash/pushe/task/scheduler/a/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

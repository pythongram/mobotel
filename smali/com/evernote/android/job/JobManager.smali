.class public final Lcom/evernote/android/job/JobManager;
.super Ljava/lang/Object;
.source "JobManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/JobManager$Config;
    }
.end annotation


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;

.field private static final PACKAGE:Ljava/lang/Package;

.field private static volatile instance:Lcom/evernote/android/job/JobManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mApi:Lcom/evernote/android/job/util/JobApi;

.field private final mConfig:Lcom/evernote/android/job/JobManager$Config;

.field private final mContext:Landroid/content/Context;

.field private final mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

.field private final mJobExecutor:Lcom/evernote/android/job/JobExecutor;

.field private final mJobStorage:Lcom/evernote/android/job/JobStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 88
    const-class v0, Lcom/evernote/android/job/JobManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    sput-object v0, Lcom/evernote/android/job/JobManager;->PACKAGE:Ljava/lang/Package;

    .line 89
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobManager"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobManager;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    .line 187
    new-instance v0, Lcom/evernote/android/job/JobCreatorHolder;

    invoke-direct {v0}, Lcom/evernote/android/job/JobCreatorHolder;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

    .line 188
    new-instance v0, Lcom/evernote/android/job/JobStorage;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/JobStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    .line 189
    new-instance v0, Lcom/evernote/android/job/JobExecutor;

    invoke-direct {v0}, Lcom/evernote/android/job/JobExecutor;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    .line 190
    new-instance v0, Lcom/evernote/android/job/JobManager$Config;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/JobManager$Config;-><init>(Lcom/evernote/android/job/JobManager;Lcom/evernote/android/job/JobManager$1;)V

    iput-object v0, p0, Lcom/evernote/android/job/JobManager;->mConfig:Lcom/evernote/android/job/JobManager$Config;

    .line 192
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/evernote/android/job/JobManager;->mConfig:Lcom/evernote/android/job/JobManager$Config;

    invoke-virtual {v1}, Lcom/evernote/android/job/JobManager$Config;->isGcmApiEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobApi;->getDefault(Landroid/content/Context;Z)Lcom/evernote/android/job/util/JobApi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/JobManager;->setJobProxy(Lcom/evernote/android/job/util/JobApi;)V

    .line 194
    invoke-direct {p0}, Lcom/evernote/android/job/JobManager;->rescheduleTasksIfNecessary()V

    .line 195
    return-void
.end method

.method static synthetic access$100(Lcom/evernote/android/job/JobManager;)Lcom/evernote/android/job/JobStorage;
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobManager;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/evernote/android/job/JobManager;Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobProxy;
    .registers 3
    .param p0, "x0"    # Lcom/evernote/android/job/JobManager;
    .param p1, "x1"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobManager;->getJobProxy(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lnet/vrallev/android/cat/CatLog;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/evernote/android/job/JobManager;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Package;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/evernote/android/job/JobManager;->PACKAGE:Ljava/lang/Package;

    return-object v0
.end method

.method static synthetic access$500(Lcom/evernote/android/job/JobManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobManager;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelAllInner(Ljava/lang/String;)I
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "canceled":I
    iget-object v5, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Lcom/evernote/android/job/JobStorage;->getAllJobRequests(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v4

    .line 407
    .local v4, "requests":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/JobRequest;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evernote/android/job/JobRequest;

    .line 408
    .local v3, "request":Lcom/evernote/android/job/JobRequest;
    invoke-direct {p0, v3}, Lcom/evernote/android/job/JobManager;->cancelInner(Lcom/evernote/android/job/JobRequest;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 413
    .end local v3    # "request":Lcom/evernote/android/job/JobRequest;
    :cond_21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {p0}, Lcom/evernote/android/job/JobManager;->getAllJobs()Ljava/util/Set;

    move-result-object v2

    .line 414
    .local v2, "jobs":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/Job;>;"
    :goto_2b
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2f
    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/android/job/Job;

    .line 415
    .local v1, "job":Lcom/evernote/android/job/Job;
    invoke-direct {p0, v1}, Lcom/evernote/android/job/JobManager;->cancelInner(Lcom/evernote/android/job/Job;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 413
    .end local v1    # "job":Lcom/evernote/android/job/Job;
    .end local v2    # "jobs":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/Job;>;"
    :cond_44
    invoke-virtual {p0, p1}, Lcom/evernote/android/job/JobManager;->getAllJobsForTag(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    goto :goto_2b

    .line 419
    .restart local v2    # "jobs":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/Job;>;"
    :cond_49
    return v0
.end method

.method private cancelInner(Lcom/evernote/android/job/Job;)Z
    .registers 7
    .param p1, "job"    # Lcom/evernote/android/job/Job;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 394
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/evernote/android/job/Job;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {p1}, Lcom/evernote/android/job/Job;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 395
    sget-object v2, Lcom/evernote/android/job/JobManager;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v3, "Cancel running %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-virtual {p1}, Lcom/evernote/android/job/Job;->cancel()V

    .line 399
    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e
.end method

.method private cancelInner(Lcom/evernote/android/job/JobRequest;)Z
    .registers 7
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 383
    if-eqz p1, :cond_22

    .line 384
    sget-object v2, Lcom/evernote/android/job/JobManager;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v3, "Found pending job %s, canceling"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobManager;->getJobProxy(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobProxy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/evernote/android/job/JobProxy;->cancel(I)V

    .line 386
    invoke-virtual {p0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 389
    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21
.end method

.method public static create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    sget-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    if-nez v0, :cond_4d

    .line 103
    const-class v1, Lcom/evernote/android/job/JobManager;

    monitor-enter v1

    .line 104
    :try_start_7
    sget-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    if-nez v0, :cond_4c

    .line 105
    const-string v0, "Context cannot be null"

    invoke-static {p0, v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/evernote/android/job/JobManager;->PACKAGE:Ljava/lang/Package;

    if-eqz v0, :cond_22

    .line 109
    sget-object v0, Lcom/evernote/android/job/JobManager;->PACKAGE:Ljava/lang/Package;

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/evernote/android/job/util/JobCat;

    invoke-direct {v2}, Lcom/evernote/android/job/util/JobCat;-><init>()V

    invoke-static {v0, v2}, Lnet/vrallev/android/cat/CatGlobal;->setDefaultCatLogPackage(Ljava/lang/String;Lnet/vrallev/android/cat/CatLog;)V

    .line 112
    :cond_22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 117
    :cond_2c
    new-instance v0, Lcom/evernote/android/job/JobManager;

    invoke-direct {v0, p0}, Lcom/evernote/android/job/JobManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    .line 119
    invoke-static {p0}, Lcom/evernote/android/job/util/JobUtil;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 120
    const-string v0, "No wake lock permission"

    invoke-static {v0}, Lnet/vrallev/android/cat/Cat;->w(Ljava/lang/String;)V

    .line 122
    :cond_3e
    invoke-static {p0}, Lcom/evernote/android/job/util/JobUtil;->hasBootPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 123
    const-string v0, "No boot permission"

    invoke-static {v0}, Lnet/vrallev/android/cat/Cat;->w(Ljava/lang/String;)V

    .line 126
    :cond_49
    invoke-static {p0}, Lcom/evernote/android/job/JobManager;->sendAddJobCreatorIntent(Landroid/content/Context;)V

    .line 128
    :cond_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_50

    .line 131
    :cond_4d
    sget-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    return-object v0

    .line 128
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0
.end method

.method public static create(Landroid/content/Context;Lcom/evernote/android/job/JobCreator;)Lcom/evernote/android/job/JobManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobCreator"    # Lcom/evernote/android/job/JobCreator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    const-class v2, Lcom/evernote/android/job/JobManager;

    monitor-enter v2

    .line 147
    :try_start_3
    sget-object v1, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    if-nez v1, :cond_16

    const/4 v0, 0x1

    .line 148
    .local v0, "addJobCreator":Z
    :goto_8
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    .line 150
    invoke-static {p0}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;

    .line 152
    if-eqz v0, :cond_13

    .line 153
    sget-object v1, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/JobManager;->addJobCreator(Lcom/evernote/android/job/JobCreator;)V

    .line 156
    :cond_13
    sget-object v1, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    return-object v1

    .line 147
    .end local v0    # "addJobCreator":Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_8

    .line 148
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private getJobProxy(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobProxy;
    .registers 3
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 475
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobApi()Lcom/evernote/android/job/util/JobApi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evernote/android/job/JobManager;->getJobProxy(Lcom/evernote/android/job/util/JobApi;)Lcom/evernote/android/job/JobProxy;

    move-result-object v0

    return-object v0
.end method

.method private getJobProxy(Lcom/evernote/android/job/util/JobApi;)Lcom/evernote/android/job/JobProxy;
    .registers 3
    .param p1, "api"    # Lcom/evernote/android/job/util/JobApi;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/util/JobApi;->getCachedProxy(Landroid/content/Context;)Lcom/evernote/android/job/JobProxy;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lcom/evernote/android/job/JobManager;
    .registers 3

    .prologue
    .line 166
    sget-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    if-nez v0, :cond_17

    .line 167
    const-class v1, Lcom/evernote/android/job/JobManager;

    monitor-enter v1

    .line 168
    :try_start_7
    sget-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    if-nez v0, :cond_16

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "You need to call create() at least once to create the singleton"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_13

    .line 174
    :cond_17
    sget-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    return-object v0
.end method

.method private rescheduleTasksIfNecessary()V
    .registers 7

    .prologue
    .line 483
    iget-object v1, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/evernote/android/job/JobManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/evernote/android/job/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 485
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    new-instance v1, Lcom/evernote/android/job/JobManager$1;

    invoke-direct {v1, p0, v0}, Lcom/evernote/android/job/JobManager$1;-><init>(Lcom/evernote/android/job/JobManager;Landroid/os/PowerManager$WakeLock;)V

    .line 525
    invoke-virtual {v1}, Lcom/evernote/android/job/JobManager$1;->start()V

    .line 526
    return-void
.end method

.method private static sendAddJobCreatorIntent(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 624
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.evernote.android.job.ADD_JOB_CREATOR"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 626
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "myPackage":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 629
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 630
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_18

    iget-boolean v7, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v7, :cond_18

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 631
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 636
    :try_start_3c
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 637
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;

    .line 639
    .local v3, "receiver":Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;
    sget-object v7, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v3, p0, v7}, Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;->addJobCreator(Landroid/content/Context;Lcom/evernote/android/job/JobManager;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4d} :catch_4e

    goto :goto_18

    .line 640
    .end local v3    # "receiver":Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;
    :catch_4e
    move-exception v7

    goto :goto_18

    .line 643
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_50
    return-void
.end method


# virtual methods
.method public addJobCreator(Lcom/evernote/android/job/JobCreator;)V
    .registers 3
    .param p1, "jobCreator"    # Lcom/evernote/android/job/JobCreator;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobCreatorHolder;->addJobCreator(Lcom/evernote/android/job/JobCreator;)V

    .line 441
    return-void
.end method

.method public cancel(I)Z
    .registers 5
    .param p1, "jobId"    # I

    .prologue
    .line 358
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/evernote/android/job/JobManager;->getJobRequest(IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/evernote/android/job/JobManager;->cancelInner(Lcom/evernote/android/job/JobRequest;)Z

    move-result v1

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/JobManager;->getJob(I)Lcom/evernote/android/job/Job;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/evernote/android/job/JobManager;->cancelInner(Lcom/evernote/android/job/Job;)Z

    move-result v2

    or-int v0, v1, v2

    .line 359
    .local v0, "result":Z
    iget-object v1, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/evernote/android/job/JobProxy$Common;->cleanUpOrphanedJob(Landroid/content/Context;I)V

    .line 360
    return v0
.end method

.method public cancelAll()I
    .registers 2

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/evernote/android/job/JobManager;->cancelAllInner(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public cancelAllForTag(Ljava/lang/String;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobManager;->cancelAllInner(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method destroy()V
    .registers 3

    .prologue
    .line 469
    const-class v1, Lcom/evernote/android/job/JobManager;

    monitor-enter v1

    .line 470
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/evernote/android/job/JobManager;->instance:Lcom/evernote/android/job/JobManager;

    .line 471
    monitor-exit v1

    .line 472
    return-void

    .line 471
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public forceApi(Lcom/evernote/android/job/util/JobApi;)V
    .registers 6
    .param p1, "api"    # Lcom/evernote/android/job/util/JobApi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 336
    invoke-static {p1}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/util/JobApi;

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/JobManager;->setJobProxy(Lcom/evernote/android/job/util/JobApi;)V

    .line 337
    sget-object v0, Lcom/evernote/android/job/JobManager;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "Changed API to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method public getAllJobRequests()Ljava/util/Set;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/evernote/android/job/JobStorage;->getAllJobRequests(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllJobRequestsForTag(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/evernote/android/job/JobStorage;->getAllJobRequests(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllJobs()Ljava/util/Set;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/Job;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobExecutor;->getAllJobs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllJobsForTag(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/Job;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobExecutor;->getAllJobsForTag(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getApi()Lcom/evernote/android/job/util/JobApi;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mApi:Lcom/evernote/android/job/util/JobApi;

    return-object v0
.end method

.method public getConfig()Lcom/evernote/android/job/JobManager$Config;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mConfig:Lcom/evernote/android/job/JobManager$Config;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getJob(I)Lcom/evernote/android/job/Job;
    .registers 3
    .param p1, "jobId"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobExecutor;->getJob(I)Lcom/evernote/android/job/Job;

    move-result-object v0

    return-object v0
.end method

.method getJobCreatorHolder()Lcom/evernote/android/job/JobCreatorHolder;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

    return-object v0
.end method

.method getJobExecutor()Lcom/evernote/android/job/JobExecutor;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobExecutor:Lcom/evernote/android/job/JobExecutor;

    return-object v0
.end method

.method public getJobRequest(I)Lcom/evernote/android/job/JobRequest;
    .registers 3
    .param p1, "jobId"    # I

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/JobManager;->getJobRequest(IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    return-object v0
.end method

.method getJobRequest(IZ)Lcom/evernote/android/job/JobRequest;
    .registers 5
    .param p1, "jobId"    # I
    .param p2, "includeTransient"    # Z

    .prologue
    .line 261
    iget-object v1, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/JobStorage;->get(I)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    .line 262
    .local v0, "jobRequest":Lcom/evernote/android/job/JobRequest;
    if-nez p2, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->isTransient()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 263
    const/4 v0, 0x0

    .line 265
    .end local v0    # "jobRequest":Lcom/evernote/android/job/JobRequest;
    :cond_11
    return-object v0
.end method

.method getJobStorage()Lcom/evernote/android/job/JobStorage;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    return-object v0
.end method

.method public removeJobCreator(Lcom/evernote/android/job/JobCreator;)V
    .registers 3
    .param p1, "jobCreator"    # Lcom/evernote/android/job/JobCreator;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobCreatorHolder;->removeJobCreator(Lcom/evernote/android/job/JobCreator;)V

    .line 450
    return-void
.end method

.method public schedule(Lcom/evernote/android/job/JobRequest;)V
    .registers 10
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 217
    iget-object v4, p0, Lcom/evernote/android/job/JobManager;->mJobCreatorHolder:Lcom/evernote/android/job/JobCreatorHolder;

    invoke-virtual {v4}, Lcom/evernote/android/job/JobCreatorHolder;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 218
    sget-object v4, Lcom/evernote/android/job/JobManager;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v5, "you haven\'t registered a JobCreator with addJobCreator(), it\'s likely that your job never will be executed"

    invoke-virtual {v4, v5}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    .line 221
    :cond_f
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isUpdateCurrent()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 222
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/evernote/android/job/JobManager;->cancelAllForTag(Ljava/lang/String;)I

    .line 225
    :cond_1c
    iget-object v4, p0, Lcom/evernote/android/job/JobManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/evernote/android/job/JobProxy$Common;->cleanUpOrphanedJob(Landroid/content/Context;I)V

    .line 227
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobApi()Lcom/evernote/android/job/util/JobApi;

    move-result-object v1

    .line 228
    .local v1, "jobApi":Lcom/evernote/android/job/util/JobApi;
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v2

    .line 229
    .local v2, "periodic":Z
    if-eqz v2, :cond_70

    invoke-virtual {v1}, Lcom/evernote/android/job/util/JobApi;->isFlexSupport()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_70

    const/4 v0, 0x1

    .line 231
    .local v0, "flexSupport":Z
    :goto_42
    sget-object v4, Lcom/evernote/android/job/util/JobApi;->GCM:Lcom/evernote/android/job/util/JobApi;

    if-ne v1, v4, :cond_55

    iget-object v4, p0, Lcom/evernote/android/job/JobManager;->mConfig:Lcom/evernote/android/job/JobManager$Config;

    invoke-virtual {v4}, Lcom/evernote/android/job/JobManager$Config;->isGcmApiEnabled()Z

    move-result v4

    if-nez v4, :cond_55

    .line 233
    sget-object v4, Lcom/evernote/android/job/JobManager;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v5, "GCM API disabled, but used nonetheless"

    invoke-virtual {v4, v5}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    .line 236
    :cond_55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/evernote/android/job/JobRequest;->setScheduledAt(J)V

    .line 237
    invoke-virtual {p1, v0}, Lcom/evernote/android/job/JobRequest;->setFlexSupport(Z)V

    .line 238
    iget-object v4, p0, Lcom/evernote/android/job/JobManager;->mJobStorage:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {v4, p1}, Lcom/evernote/android/job/JobStorage;->put(Lcom/evernote/android/job/JobRequest;)V

    .line 240
    invoke-direct {p0, v1}, Lcom/evernote/android/job/JobManager;->getJobProxy(Lcom/evernote/android/job/util/JobApi;)Lcom/evernote/android/job/JobProxy;

    move-result-object v3

    .line 241
    .local v3, "proxy":Lcom/evernote/android/job/JobProxy;
    if-eqz v2, :cond_76

    .line 242
    if-eqz v0, :cond_72

    .line 243
    invoke-interface {v3, p1}, Lcom/evernote/android/job/JobProxy;->plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V

    .line 250
    :goto_6f
    return-void

    .line 229
    .end local v0    # "flexSupport":Z
    .end local v3    # "proxy":Lcom/evernote/android/job/JobProxy;
    :cond_70
    const/4 v0, 0x0

    goto :goto_42

    .line 245
    .restart local v0    # "flexSupport":Z
    .restart local v3    # "proxy":Lcom/evernote/android/job/JobProxy;
    :cond_72
    invoke-interface {v3, p1}, Lcom/evernote/android/job/JobProxy;->plantPeriodic(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_6f

    .line 248
    :cond_76
    invoke-interface {v3, p1}, Lcom/evernote/android/job/JobProxy;->plantOneOff(Lcom/evernote/android/job/JobRequest;)V

    goto :goto_6f
.end method

.method protected setJobProxy(Lcom/evernote/android/job/util/JobApi;)V
    .registers 2
    .param p1, "api"    # Lcom/evernote/android/job/util/JobApi;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/evernote/android/job/JobManager;->mApi:Lcom/evernote/android/job/util/JobApi;

    .line 206
    return-void
.end method

.method public setVerbose(Z)V
    .registers 3
    .param p1, "verbose"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/evernote/android/job/JobManager;->mConfig:Lcom/evernote/android/job/JobManager$Config;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/JobManager$Config;->setVerbose(Z)V

    .line 431
    return-void
.end method

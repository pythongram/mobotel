.class public Lcom/evernote/android/job/gcm/JobProxyGcm;
.super Ljava/lang/Object;
.source "JobProxyGcm.java"

# interfaces
.implements Lcom/evernote/android/job/JobProxy;


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;


# instance fields
.field private final mGcmNetworkManager:Lcom/google/android/gms/gcm/GcmNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobProxyGcm"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/gcm/JobProxyGcm;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/gcm/JobProxyGcm;->mGcmNetworkManager:Lcom/google/android/gms/gcm/GcmNetworkManager;

    .line 59
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .registers 5
    .param p1, "jobId"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/evernote/android/job/gcm/JobProxyGcm;->mGcmNetworkManager:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->createTag(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V

    .line 112
    return-void
.end method

.method protected convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I
    .registers 5
    .param p1, "networkType"    # Lcom/evernote/android/job/JobRequest$NetworkType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 139
    sget-object v1, Lcom/evernote/android/job/gcm/JobProxyGcm$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest$NetworkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_14
    const/4 v0, 0x2

    .line 147
    :goto_15
    :pswitch_15
    return v0

    .line 143
    :pswitch_16
    const/4 v0, 0x0

    goto :goto_15

    .line 139
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_16
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method protected createTag(I)Ljava/lang/String;
    .registers 3
    .param p1, "jobId"    # I

    .prologue
    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createTag(Lcom/evernote/android/job/JobRequest;)Ljava/lang/String;
    .registers 3
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/gcm/JobProxyGcm;->createTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z
    .registers 3
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public plantOneOff(Lcom/evernote/android/job/JobRequest;)V
    .registers 16
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    const-wide/16 v10, 0x3e8

    .line 63
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v4

    .line 64
    .local v4, "startMs":J
    div-long v6, v4, v10

    .line 66
    .local v6, "startSeconds":J
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    .line 67
    .local v0, "endMs":J
    div-long v10, v0, v10

    const-wide/16 v12, 0x1

    add-long/2addr v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 69
    .local v2, "endSeconds":J
    new-instance v9, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v9}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    invoke-virtual {p0, v9, p1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->prepareBuilder(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/JobRequest;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    .line 70
    invoke-virtual {v9, v6, v7, v2, v3}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v9

    .line 71
    invoke-virtual {v9}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v8

    .line 73
    .local v8, "task":Lcom/google/android/gms/gcm/OneoffTask;
    iget-object v9, p0, Lcom/evernote/android/job/gcm/JobProxyGcm;->mGcmNetworkManager:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    .line 75
    sget-object v9, Lcom/evernote/android/job/gcm/JobProxyGcm;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v10, "Scheduled OneoffTask, %s, start %s, end %s, reschedule count %d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static {v4, v5}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 76
    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getRescheduleCount(Lcom/evernote/android/job/JobRequest;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 75
    invoke-virtual {v9, v10, v11}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public plantPeriodic(Lcom/evernote/android/job/JobRequest;)V
    .registers 10
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    const-wide/16 v4, 0x3e8

    .line 81
    new-instance v1, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;-><init>()V

    invoke-virtual {p0, v1, p1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->prepareBuilder(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/JobRequest;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    .line 82
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPeriod(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setFlex(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->build()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    .line 86
    .local v0, "task":Lcom/google/android/gms/gcm/PeriodicTask;
    iget-object v1, p0, Lcom/evernote/android/job/gcm/JobProxyGcm;->mGcmNetworkManager:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    .line 88
    sget-object v1, Lcom/evernote/android/job/gcm/JobProxyGcm;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v2, "Scheduled PeriodicTask, %s, interval %s, flex %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 89
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 88
    invoke-virtual {v1, v2, v3}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V
    .registers 14
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 94
    sget-object v5, Lcom/evernote/android/job/gcm/JobProxyGcm;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v6, "plantPeriodicFlexSupport called although flex is supported"

    invoke-virtual {v5, v6}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    .line 97
    .local v2, "startMs":J
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    .line 99
    .local v0, "endMs":J
    new-instance v5, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    invoke-virtual {p0, v5, p1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->prepareBuilder(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/JobRequest;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    div-long v6, v2, v8

    div-long v8, v0, v8

    .line 100
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v5

    .line 101
    invoke-virtual {v5}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v4

    .line 103
    .local v4, "task":Lcom/google/android/gms/gcm/OneoffTask;
    iget-object v5, p0, Lcom/evernote/android/job/gcm/JobProxyGcm;->mGcmNetworkManager:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    .line 105
    sget-object v5, Lcom/evernote/android/job/gcm/JobProxyGcm;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v6, "Scheduled periodic (flex support), %s, start %s, end %s, flex %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 106
    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 105
    invoke-virtual {v5, v6, v7}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method protected prepareBuilder(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/JobRequest;)Lcom/google/android/gms/gcm/Task$Builder;
    .registers 5
    .param p2, "request"    # Lcom/evernote/android/job/JobRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/gcm/Task$Builder;",
            ">(TT;",
            "Lcom/evernote/android/job/JobRequest;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "builder":Lcom/google/android/gms/gcm/Task$Builder;, "TT;"
    invoke-virtual {p0, p2}, Lcom/evernote/android/job/gcm/JobProxyGcm;->createTag(Lcom/evernote/android/job/JobRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/gcm/Task$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    const-class v1, Lcom/evernote/android/job/gcm/PlatformGcmService;

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/gcm/JobProxyGcm;->convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->isPersisted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->requiresCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setRequiresCharging(Z)Lcom/google/android/gms/gcm/Task$Builder;

    .line 127
    return-object p1
.end method

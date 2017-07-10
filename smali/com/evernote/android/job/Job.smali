.class public abstract Lcom/evernote/android/job/Job;
.super Ljava/lang/Object;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/Job$Params;,
        Lcom/evernote/android/job/Job$Result;
    }
.end annotation


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mCanceled:Z

.field private mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishedTimeStamp:J

.field private mParams:Lcom/evernote/android/job/Job$Params;

.field private mResult:Lcom/evernote/android/job/Job$Result;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "Job"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/Job;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/evernote/android/job/Job;->mFinishedTimeStamp:J

    .line 79
    sget-object v0, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    iput-object v0, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 296
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 299
    :goto_4
    return v1

    .line 297
    :catch_5
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_4
.end method

.method private meetsRequirements()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/android/job/JobRequest;->requirementsEnforced()Z

    move-result v2

    if-nez v2, :cond_11

    .line 153
    :cond_10
    :goto_10
    return v0

    .line 139
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isRequirementChargingMet()Z

    move-result v2

    if-nez v2, :cond_20

    .line 140
    sget-object v0, Lcom/evernote/android/job/Job;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v2, "Job requires charging, reschedule"

    invoke-virtual {v0, v2}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    move v0, v1

    .line 141
    goto :goto_10

    .line 143
    :cond_20
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isRequirementDeviceIdleMet()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 144
    sget-object v0, Lcom/evernote/android/job/Job;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v2, "Job requires device to be idle, reschedule"

    invoke-virtual {v0, v2}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    move v0, v1

    .line 145
    goto :goto_10

    .line 147
    :cond_2f
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isRequirementNetworkTypeMet()Z

    move-result v2

    if-nez v2, :cond_10

    .line 148
    sget-object v2, Lcom/evernote/android/job/Job;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v3, "Job requires network to be %s, but was %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v5

    aput-object v5, v4, v1

    .line 149
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/evernote/android/job/util/Device;->getNetworkType(Landroid/content/Context;)Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v5

    aput-object v5, v4, v0

    .line 148
    invoke-virtual {v2, v3, v4}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 150
    goto :goto_10
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/android/job/Job;->mCanceled:Z

    .line 233
    :cond_9
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 305
    if-ne p0, p1, :cond_4

    const/4 v1, 0x1

    .line 310
    :goto_3
    return v1

    .line 306
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    :cond_12
    move-object v0, p1

    .line 308
    check-cast v0, Lcom/evernote/android/job/Job;

    .line 310
    .local v0, "job":Lcom/evernote/android/job/Job;
    iget-object v1, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    iget-object v2, v0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/Job$Params;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method protected final getContext()Landroid/content/Context;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 222
    iget-object v1, p0, Lcom/evernote/android/job/Job;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 223
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/evernote/android/job/Job;->mApplicationContext:Landroid/content/Context;

    .end local v0    # "context":Landroid/content/Context;
    :cond_c
    return-object v0
.end method

.method final getFinishedTimeStamp()J
    .registers 3

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/evernote/android/job/Job;->mFinishedTimeStamp:J

    return-wide v0
.end method

.method protected final getParams()Lcom/evernote/android/job/Job$Params;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    return-object v0
.end method

.method final getResult()Lcom/evernote/android/job/Job$Result;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->hashCode()I

    move-result v0

    return v0
.end method

.method protected final isCanceled()Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/evernote/android/job/Job;->mCanceled:Z

    return v0
.end method

.method public final isFinished()Z
    .registers 5

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/evernote/android/job/Job;->mFinishedTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isRequirementChargingMet()Z
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requiresCharging()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/util/Device;->isCharging(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected isRequirementDeviceIdleMet()Z
    .registers 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requiresDeviceIdle()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/util/Device;->isIdle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected isRequirementNetworkTypeMet()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v1

    .line 178
    .local v1, "requirement":Lcom/evernote/android/job/JobRequest$NetworkType;
    sget-object v4, Lcom/evernote/android/job/JobRequest$NetworkType;->ANY:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-ne v1, v4, :cond_13

    .line 190
    :cond_12
    :goto_12
    return v2

    .line 182
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/evernote/android/job/util/Device;->getNetworkType(Landroid/content/Context;)Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v0

    .line 184
    .local v0, "current":Lcom/evernote/android/job/JobRequest$NetworkType;
    sget-object v4, Lcom/evernote/android/job/Job$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest$NetworkType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_46

    .line 192
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not implemented"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :pswitch_2e
    sget-object v4, Lcom/evernote/android/job/JobRequest$NetworkType;->ANY:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-ne v0, v4, :cond_12

    move v2, v3

    goto :goto_12

    .line 188
    :pswitch_34
    sget-object v4, Lcom/evernote/android/job/JobRequest$NetworkType;->NOT_ROAMING:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-eq v0, v4, :cond_3c

    sget-object v4, Lcom/evernote/android/job/JobRequest$NetworkType;->UNMETERED:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-ne v0, v4, :cond_3d

    :cond_3c
    move v3, v2

    :cond_3d
    move v2, v3

    goto :goto_12

    .line 190
    :pswitch_3f
    sget-object v4, Lcom/evernote/android/job/JobRequest$NetworkType;->UNMETERED:Lcom/evernote/android/job/JobRequest$NetworkType;

    if-eq v0, v4, :cond_12

    move v2, v3

    goto :goto_12

    .line 184
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_34
        :pswitch_3f
    .end packed-switch
.end method

.method protected onReschedule(I)V
    .registers 2
    .param p1, "newJobId"    # I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 132
    return-void
.end method

.method protected abstract onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method final runJob()Lcom/evernote/android/job/Job$Result;
    .registers 5

    .prologue
    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/evernote/android/job/Job;->meetsRequirements()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 109
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/Job;->onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;

    .line 114
    :goto_10
    iget-object v0, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_28

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/android/job/Job;->mFinishedTimeStamp:J

    .line 114
    return-object v0

    .line 111
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/Job$Params;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    :goto_25
    iput-object v0, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_28

    goto :goto_10

    .line 117
    :catchall_28
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/android/job/Job;->mFinishedTimeStamp:J

    throw v0

    .line 111
    :cond_30
    :try_start_30
    sget-object v0, Lcom/evernote/android/job/Job$Result;->RESCHEDULE:Lcom/evernote/android/job/Job$Result;
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_28

    goto :goto_25
.end method

.method final setContext(Landroid/content/Context;)Lcom/evernote/android/job/Job;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/evernote/android/job/Job;->mContextReference:Ljava/lang/ref/WeakReference;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/Job;->mApplicationContext:Landroid/content/Context;

    .line 212
    return-object p0
.end method

.method final setRequest(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/Job;
    .registers 4
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 197
    new-instance v0, Lcom/evernote/android/job/Job$Params;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/evernote/android/job/Job$Params;-><init>(Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/Job$1;)V

    iput-object v0, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    .line 198
    return-object p0
.end method

.method protected startWakefulService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "job{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    .line 321
    invoke-virtual {v1}, Lcom/evernote/android/job/Job$Params;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Lcom/evernote/android/job/Job;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/Job;->mResult:Lcom/evernote/android/job/Job$Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/evernote/android/job/Job;->mCanceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", periodic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    .line 325
    invoke-virtual {v1}, Lcom/evernote/android/job/Job$Params;->isPeriodic()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/Job;->mParams:Lcom/evernote/android/job/Job$Params;

    .line 327
    invoke-virtual {v1}, Lcom/evernote/android/job/Job$Params;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    return-object v0
.end method

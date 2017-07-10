.class public final Lcom/evernote/android/job/Job$Params;
.super Ljava/lang/Object;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Params"
.end annotation


# instance fields
.field private mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

.field private final mRequest:Lcom/evernote/android/job/JobRequest;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/JobRequest;)V
    .registers 2
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/Job$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "x1"    # Lcom/evernote/android/job/Job$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/evernote/android/job/Job$Params;-><init>(Lcom/evernote/android/job/JobRequest;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 531
    if-ne p0, p1, :cond_4

    const/4 v1, 0x1

    .line 536
    :goto_3
    return v1

    .line 532
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

    .line 534
    check-cast v0, Lcom/evernote/android/job/Job$Params;

    .line 536
    .local v0, "params":Lcom/evernote/android/job/Job$Params;
    iget-object v1, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    iget-object v2, v0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/JobRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public getBackoffMs()J
    .registers 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getBackoffMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackoffPolicy()Lcom/evernote/android/job/JobRequest$BackoffPolicy;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getBackoffPolicy()Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getEndMs()J
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getEndMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    if-nez v0, :cond_17

    .line 517
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getExtras()Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/Job$Params;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .line 518
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    if-nez v0, :cond_17

    .line 519
    new-instance v0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {v0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/Job$Params;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .line 522
    :cond_17
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    return-object v0
.end method

.method public getFailureCount()I
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getNumFailures()I

    move-result v0

    return v0
.end method

.method public getFlexMs()J
    .registers 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    return v0
.end method

.method public getIntervalMs()J
    .registers 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v0

    return-wide v0
.end method

.method getRequest()Lcom/evernote/android/job/JobRequest;
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    return-object v0
.end method

.method public getScheduledAt()J
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getScheduledAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartMs()J
    .registers 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getStartMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExact()Z
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->isExact()Z

    move-result v0

    return v0
.end method

.method public isPeriodic()Z
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v0

    return v0
.end method

.method public isPersisted()Z
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->isPersisted()Z

    move-result v0

    return v0
.end method

.method public requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public requirementsEnforced()Z
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requirementsEnforced()Z

    move-result v0

    return v0
.end method

.method public requiresCharging()Z
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requiresCharging()Z

    move-result v0

    return v0
.end method

.method public requiresDeviceIdle()Z
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->requiresDeviceIdle()Z

    move-result v0

    return v0
.end method

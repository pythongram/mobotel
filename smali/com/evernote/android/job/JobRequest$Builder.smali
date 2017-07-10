.class public final Lcom/evernote/android/job/JobRequest$Builder;
.super Ljava/lang/Object;
.source "JobRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackoffMs:J

.field private mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

.field private mEndMs:J

.field private mExact:Z

.field private mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

.field private mExtrasXml:Ljava/lang/String;

.field private mFlexMs:J

.field private final mId:I

.field private mIntervalMs:J

.field private mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

.field private mPersisted:Z

.field private mRequirementsEnforced:Z

.field private mRequiresCharging:Z

.field private mRequiresDeviceIdle:Z

.field private mStartMs:J

.field private final mTag:Ljava/lang/String;

.field private mUpdateCurrent:Z


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .registers 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    .line 523
    const-string v1, "tag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    .line 525
    const-string v1, "startMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 526
    const-string v1, "endMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 528
    const-string v1, "backoffMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 530
    :try_start_41
    const-string v1, "backoffPolicy"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_51} :catch_d0

    .line 536
    :goto_51
    const-string v1, "intervalMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 537
    const-string v1, "flexMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    .line 539
    const-string v1, "requirementsEnforced"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_de

    move v1, v2

    :goto_76
    iput-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    .line 540
    const-string v1, "requiresCharging"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_e0

    move v1, v2

    :goto_85
    iput-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    .line 541
    const-string v1, "requiresDeviceIdle"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_e2

    move v1, v2

    :goto_94
    iput-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    .line 542
    const-string v1, "exact"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_e4

    move v1, v2

    :goto_a3
    iput-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    .line 544
    :try_start_a5
    const-string v1, "networkType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/android/job/JobRequest$NetworkType;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_b5} :catch_e6

    .line 550
    :goto_b5
    const-string v1, "extras"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    .line 552
    const-string v1, "persisted"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_f3

    :goto_cd
    iput-boolean v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mPersisted:Z

    .line 553
    return-void

    .line 531
    :catch_d0
    move-exception v0

    .line 532
    .local v0, "t":Ljava/lang/Throwable;
    # getter for: Lcom/evernote/android/job/JobRequest;->CAT:Lnet/vrallev/android/cat/CatLog;
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$2100()Lnet/vrallev/android/cat/CatLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 533
    sget-object v1, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    goto/16 :goto_51

    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_de
    move v1, v3

    .line 539
    goto :goto_76

    :cond_e0
    move v1, v3

    .line 540
    goto :goto_85

    :cond_e2
    move v1, v3

    .line 541
    goto :goto_94

    :cond_e4
    move v1, v3

    .line 542
    goto :goto_a3

    .line 545
    :catch_e6
    move-exception v0

    .line 546
    .restart local v0    # "t":Ljava/lang/Throwable;
    # getter for: Lcom/evernote/android/job/JobRequest;->CAT:Lnet/vrallev/android/cat/CatLog;
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$2100()Lnet/vrallev/android/cat/CatLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 547
    sget-object v1, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    goto :goto_b5

    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_f3
    move v2, v3

    .line 552
    goto :goto_cd
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/evernote/android/job/JobRequest$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Lcom/evernote/android/job/JobRequest$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/JobRequest;Z)V
    .registers 5
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "createId"    # Z

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    if-eqz p2, :cond_72

    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage;->nextJobId()I

    move-result v0

    :goto_11
    iput v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    .line 498
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getStartMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 501
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getEndMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 503
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getBackoffMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 504
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getBackoffPolicy()Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    .line 506
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 507
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    .line 509
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requirementsEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    .line 510
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiresCharging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    .line 511
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiresDeviceIdle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    .line 512
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isExact()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    .line 513
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 515
    # getter for: Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;
    invoke-static {p1}, Lcom/evernote/android/job/JobRequest;->access$2000(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .line 516
    # getter for: Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;
    invoke-static {p1}, Lcom/evernote/android/job/JobRequest;->access$2000(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPersisted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mPersisted:Z

    .line 518
    return-void

    .line 497
    :cond_72
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    goto :goto_11
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobRequest;ZLcom/evernote/android/job/JobRequest$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/evernote/android/job/JobRequest$1;

    .prologue
    .line 443
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Lcom/evernote/android/job/JobRequest;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, -0x1

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    invoke-static {p1}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    .line 485
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage;->nextJobId()I

    move-result v0

    iput v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    .line 487
    iput-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 488
    iput-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 490
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 491
    sget-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    .line 493
    sget-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 494
    return-void
.end method

.method static synthetic access$000(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    return v0
.end method

.method static synthetic access$100(Lcom/evernote/android/job/JobRequest$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/JobRequest$NetworkType;
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/evernote/android/job/JobRequest$Builder;Lcom/evernote/android/job/util/support/PersistableBundleCompat;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;
    .param p1, "x1"    # Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/evernote/android/job/JobRequest$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mPersisted:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mUpdateCurrent:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/evernote/android/job/JobRequest$Builder;Landroid/content/ContentValues;)V
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;
    .param p1, "x1"    # Landroid/content/ContentValues;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobRequest$Builder;->fillContentValues(Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$200(Lcom/evernote/android/job/JobRequest$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/evernote/android/job/JobRequest$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/evernote/android/job/JobRequest$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/JobRequest$BackoffPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    return-object v0
.end method

.method static synthetic access$600(Lcom/evernote/android/job/JobRequest$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/evernote/android/job/JobRequest$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/evernote/android/job/JobRequest$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    return v0
.end method

.method private fillContentValues(Landroid/content/ContentValues;)V
    .registers 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 556
    const-string v0, "_id"

    iget v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    const-string v0, "tag"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v0, "startMs"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 560
    const-string v0, "endMs"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 562
    const-string v0, "backoffMs"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 563
    const-string v0, "backoffPolicy"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "intervalMs"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 566
    const-string v0, "flexMs"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    const-string v0, "requirementsEnforced"

    iget-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 569
    const-string v0, "requiresCharging"

    iget-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 570
    const-string v0, "requiresDeviceIdle"

    iget-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 571
    const-string v0, "exact"

    iget-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 572
    const-string v0, "networkType"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest$NetworkType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    if-eqz v0, :cond_a6

    .line 575
    const-string v0, "extras"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-virtual {v1}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->saveToXml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_9a
    :goto_9a
    const-string v0, "persisted"

    iget-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mPersisted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 580
    return-void

    .line 576
    :cond_a6
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 577
    const-string v0, "extras"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a
.end method


# virtual methods
.method public build()Lcom/evernote/android/job/JobRequest;
    .registers 15

    .prologue
    const-wide v12, 0x2aaaaaaaaaaaaaaaL

    const-wide/16 v10, -0x1

    const-wide/16 v8, 0x0

    .line 876
    iget v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    const-string v1, "id can\'t be negative"

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 877
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 878
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    const-string v2, "backoffMs must be > 0"

    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentPositive(JLjava/lang/String;)J

    .line 879
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    invoke-static {v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-static {v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_89

    .line 883
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinInterval()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "intervalMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 884
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinFlex()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    const-string v6, "flexMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 886
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    sget-wide v2, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_59

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    sget-wide v2, Lcom/evernote/android/job/JobRequest;->MIN_FLEX:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_89

    .line 888
    :cond_59
    # getter for: Lcom/evernote/android/job/JobRequest;->CAT:Lnet/vrallev/android/cat/CatLog;
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$2100()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    const-string v1, "AllowSmallerIntervals enabled, this will crash on Android N and later, interval %d (minimum is %d), flex %d (minimum is %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 889
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-wide v4, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-wide v4, Lcom/evernote/android/job/JobRequest;->MIN_FLEX:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 888
    invoke-virtual {v0, v1, v2}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    :cond_89
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    if-eqz v0, :cond_9b

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_9b

    .line 894
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setExact() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_9b
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    if-eqz v0, :cond_af

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_af

    .line 897
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setExecutionWindow() for an exact job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_af
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    if-eqz v0, :cond_d1

    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    if-nez v0, :cond_c9

    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    if-nez v0, :cond_c9

    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    if-nez v0, :cond_c9

    sget-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobRequest$NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 900
    :cond_c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t require any condition for an exact job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_d1
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_eb

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_e3

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_eb

    .line 904
    :cond_e3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_eb
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_105

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_fd

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_105

    .line 907
    :cond_fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setExecutionWindow() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_105
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_125

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-nez v0, :cond_11d

    sget-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_125

    .line 910
    :cond_11d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A periodic job will not respect any back-off policy, so calling setBackoffCriteria() with setPeriodic() is an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_125
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_13c

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    cmp-long v0, v0, v12

    if-gtz v0, :cond_137

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_13c

    .line 915
    :cond_137
    const-string v0, "Attention: your execution window is too large. This could result in undesired behavior, see https://github.com/evernote/android-job/blob/master/FAQ.md"

    invoke-static {v0}, Lnet/vrallev/android/cat/Cat;->w(Ljava/lang/String;)V

    .line 918
    :cond_13c
    new-instance v0, Lcom/evernote/android/job/JobRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/JobRequest;-><init>(Lcom/evernote/android/job/JobRequest$Builder;Lcom/evernote/android/job/JobRequest$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 923
    if-ne p0, p1, :cond_5

    .line 928
    :cond_4
    :goto_4
    return v1

    .line 924
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 926
    check-cast v0, Lcom/evernote/android/job/JobRequest$Builder;

    .line 928
    .local v0, "builder":Lcom/evernote/android/job/JobRequest$Builder;
    iget v3, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    iget v4, v0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 933
    iget v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    return v0
.end method

.method public setBackoffCriteria(JLcom/evernote/android/job/JobRequest$BackoffPolicy;)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 7
    .param p1, "backoffMs"    # J
    .param p3, "backoffPolicy"    # Lcom/evernote/android/job/JobRequest$BackoffPolicy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 838
    const-string v0, "backoffMs must be > 0"

    invoke-static {p1, p2, v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 839
    invoke-static {p3}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    .line 840
    return-object p0
.end method

.method public setExact(J)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 14
    .param p1, "exactMs"    # J

    .prologue
    const-wide v8, 0x5555555555555554L    # 1.1945305291614953E103

    const/4 v6, 0x1

    .line 772
    iput-boolean v6, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    .line 773
    cmp-long v0, p1, v8

    if-lez v0, :cond_32

    .line 774
    const-string v0, "exactMs clamped from %d days to %d days"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lnet/vrallev/android/cat/Cat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    const-wide p1, 0x5555555555555554L    # 1.1945305291614953E103

    .line 778
    :cond_32
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/evernote/android/job/JobRequest$Builder;->setExecutionWindow(JJ)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setExecutionWindow(JJ)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 12
    .param p1, "startMs"    # J
    .param p3, "endMs"    # J

    .prologue
    .line 614
    const-string v0, "startMs must be greater than 0"

    invoke-static {p1, p2, v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 615
    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "endMs"

    move-wide v0, p3

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 617
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    const-wide v2, 0x5555555555555554L    # 1.1945305291614953E103

    cmp-long v0, v0, v2

    if-lez v0, :cond_52

    .line 618
    const-string v0, "startMs reduced from %d days to %d days"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v4, 0x5555555555555554L    # 1.1945305291614953E103

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/vrallev/android/cat/Cat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    const-wide v0, 0x5555555555555554L    # 1.1945305291614953E103

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 621
    :cond_52
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    const-wide v2, 0x5555555555555554L    # 1.1945305291614953E103

    cmp-long v0, v0, v2

    if-lez v0, :cond_8d

    .line 622
    const-string v0, "endMs reduced from %d days to %d days"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v4, 0x5555555555555554L    # 1.1945305291614953E103

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/vrallev/android/cat/Cat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    const-wide v0, 0x5555555555555554L    # 1.1945305291614953E103

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 626
    :cond_8d
    return-object p0
.end method

.method public setExtras(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 3
    .param p1, "extras"    # Lcom/evernote/android/job/util/support/PersistableBundleCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 635
    if-nez p1, :cond_8

    .line 636
    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .line 637
    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    .line 641
    :goto_7
    return-object p0

    .line 639
    :cond_8
    new-instance v0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)V

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    goto :goto_7
.end method

.method public setPeriodic(J)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 4
    .param p1, "intervalMs"    # J

    .prologue
    .line 795
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/evernote/android/job/JobRequest$Builder;->setPeriodic(JJ)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPeriodic(JJ)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 12
    .param p1, "intervalMs"    # J
    .param p3, "flexMs"    # J

    .prologue
    .line 817
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinInterval()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "intervalMs"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 818
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinFlex()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    const-string v6, "flexMs"

    move-wide v0, p3

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    .line 819
    return-object p0
.end method

.method public setPersisted(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 4
    .param p1, "persisted"    # Z

    .prologue
    .line 852
    if-eqz p1, :cond_18

    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/util/JobUtil;->hasBootPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 853
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Does not have RECEIVE_BOOT_COMPLETED permission, which is mandatory for this feature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_18
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mPersisted:Z

    .line 856
    return-object p0
.end method

.method public setRequiredNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 2
    .param p1, "networkType"    # Lcom/evernote/android/job/JobRequest$NetworkType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 691
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 692
    return-object p0
.end method

.method public setRequirementsEnforced(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 2
    .param p1, "enforced"    # Z

    .prologue
    .line 671
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    .line 672
    return-object p0
.end method

.method public setRequiresCharging(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 2
    .param p1, "requiresCharging"    # Z

    .prologue
    .line 710
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    .line 711
    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 2
    .param p1, "requiresDeviceIdle"    # Z

    .prologue
    .line 731
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    .line 732
    return-object p0
.end method

.method public setUpdateCurrent(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 2
    .param p1, "updateCurrent"    # Z

    .prologue
    .line 868
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mUpdateCurrent:Z

    .line 869
    return-object p0
.end method

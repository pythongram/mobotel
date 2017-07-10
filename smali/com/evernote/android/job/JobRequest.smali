.class public final Lcom/evernote/android/job/JobRequest;
.super Ljava/lang/Object;
.source "JobRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/JobRequest$NetworkType;,
        Lcom/evernote/android/job/JobRequest$BackoffPolicy;,
        Lcom/evernote/android/job/JobRequest$Builder;
    }
.end annotation


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;

.field public static final DEFAULT_BACKOFF_MS:J = 0x7530L

.field public static final DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

.field public static final DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

.field public static final MIN_FLEX:J

.field public static final MIN_INTERVAL:J

.field private static final WINDOW_THRESHOLD_MAX:J = 0x5555555555555554L

.field private static final WINDOW_THRESHOLD_WARNING:J = 0x2aaaaaaaaaaaaaaaL


# instance fields
.field private final mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

.field private mFlexSupport:Z

.field private final mJobApi:Lcom/evernote/android/job/util/JobApi;

.field private mNumFailures:I

.field private mScheduledAt:J

.field private mTransient:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 65
    sget-object v0, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->EXPONENTIAL:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    sput-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    .line 72
    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->ANY:Lcom/evernote/android/job/JobRequest$NetworkType;

    sput-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/JobRequest;->MIN_FLEX:J

    .line 106
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobRequest"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobRequest;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/JobRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    .line 126
    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z
    invoke-static {p1}, Lcom/evernote/android/job/JobRequest$Builder;->access$000(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/evernote/android/job/util/JobApi;->V_14:Lcom/evernote/android/job/util/JobApi;

    :goto_d
    iput-object v0, p0, Lcom/evernote/android/job/JobRequest;->mJobApi:Lcom/evernote/android/job/util/JobApi;

    .line 127
    return-void

    .line 126
    :cond_10
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getApi()Lcom/evernote/android/job/util/JobApi;

    move-result-object v0

    goto :goto_d
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobRequest$Builder;Lcom/evernote/android/job/JobRequest$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;
    .param p2, "x1"    # Lcom/evernote/android/job/JobRequest$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobRequest;-><init>(Lcom/evernote/android/job/JobRequest$Builder;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobRequest$Builder;
    .registers 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    return-object v0
.end method

.method static synthetic access$2100()Lnet/vrallev/android/cat/CatLog;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/evernote/android/job/JobRequest;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-object v0
.end method

.method static fromCursor(Landroid/database/Cursor;)Lcom/evernote/android/job/JobRequest;
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 408
    new-instance v1, Lcom/evernote/android/job/JobRequest$Builder;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Landroid/database/Cursor;Lcom/evernote/android/job/JobRequest$1;)V

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    .line 409
    .local v0, "request":Lcom/evernote/android/job/JobRequest;
    const-string v1, "numFailures"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    .line 410
    const-string v1, "scheduledAt"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    .line 411
    const-string v1, "isTransient"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_50

    move v1, v2

    :goto_31
    iput-boolean v1, v0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    .line 412
    const-string v1, "flexSupport"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_52

    :goto_3f
    iput-boolean v2, v0, Lcom/evernote/android/job/JobRequest;->mFlexSupport:Z

    .line 414
    iget v1, v0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    const-string v2, "failure count can\'t be negative"

    invoke-static {v1, v2}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 415
    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    const-string v1, "scheduled at can\'t be negative"

    invoke-static {v2, v3, v1}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 417
    return-object v0

    :cond_50
    move v1, v3

    .line 411
    goto :goto_31

    :cond_52
    move v2, v3

    .line 412
    goto :goto_3f
.end method

.method static getMinFlex()J
    .registers 4

    .prologue
    .line 113
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getConfig()Lcom/evernote/android/job/JobManager$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager$Config;->isAllowSmallerIntervalsForMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_16
    return-wide v0

    :cond_17
    sget-wide v0, Lcom/evernote/android/job/JobRequest;->MIN_FLEX:J

    goto :goto_16
.end method

.method static getMinInterval()J
    .registers 4

    .prologue
    .line 109
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getConfig()Lcom/evernote/android/job/JobManager$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager$Config;->isAllowSmallerIntervalsForMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_16
    return-wide v0

    :cond_17
    sget-wide v0, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    goto :goto_16
.end method


# virtual methods
.method public cancelAndEdit()Lcom/evernote/android/job/JobRequest$Builder;
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 362
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/evernote/android/job/JobManager;->cancel(I)Z

    .line 363
    new-instance v0, Lcom/evernote/android/job/JobRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v7, v1}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Lcom/evernote/android/job/JobRequest;ZLcom/evernote/android/job/JobRequest$1;)V

    .line 364
    .local v0, "builder":Lcom/evernote/android/job/JobRequest$Builder;
    iput-boolean v7, p0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    .line 366
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v1

    if-nez v1, :cond_39

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    sub-long v4, v6, v8

    .line 368
    .local v4, "offset":J
    const-wide/16 v2, 0x1

    .line 369
    .local v2, "minValue":J
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getStartMs()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getEndMs()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/evernote/android/job/JobRequest$Builder;->setExecutionWindow(JJ)Lcom/evernote/android/job/JobRequest$Builder;

    .line 372
    .end local v2    # "minValue":J
    .end local v4    # "offset":J
    :cond_39
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 422
    if-ne p0, p1, :cond_4

    const/4 v1, 0x1

    .line 427
    :goto_3
    return v1

    .line 423
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

    .line 425
    check-cast v0, Lcom/evernote/android/job/JobRequest;

    .line 427
    .local v0, "request":Lcom/evernote/android/job/JobRequest;
    iget-object v1, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    iget-object v2, v0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/JobRequest$Builder;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public getBackoffMs()J
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$600(Lcom/evernote/android/job/JobRequest$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method getBackoffOffset()J
    .registers 9

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    const-wide/16 v2, 0x0

    .line 290
    :goto_8
    return-wide v2

    .line 273
    :cond_9
    sget-object v2, Lcom/evernote/android/job/JobRequest$1;->$SwitchMap$com$evernote$android$job$JobRequest$BackoffPolicy:[I

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getBackoffPolicy()Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_50

    .line 287
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not implemented"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    :pswitch_20
    iget v2, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getBackoffMs()J

    move-result-wide v4

    mul-long v0, v2, v4

    .line 290
    .local v0, "offset":J
    :goto_29
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_8

    .line 279
    .end local v0    # "offset":J
    :pswitch_36
    iget v2, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    if-nez v2, :cond_3d

    .line 280
    const-wide/16 v0, 0x0

    .restart local v0    # "offset":J
    goto :goto_29

    .line 282
    .end local v0    # "offset":J
    :cond_3d
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getBackoffMs()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v6, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 284
    .restart local v0    # "offset":J
    goto :goto_29

    .line 273
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_20
        :pswitch_36
    .end packed-switch
.end method

.method public getBackoffPolicy()Lcom/evernote/android/job/JobRequest$BackoffPolicy;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$500(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getEndMs()J
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$400(Lcom/evernote/android/job/JobRequest$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1300(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    move-result-object v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1400(Lcom/evernote/android/job/JobRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 241
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;
    invoke-static {v1}, Lcom/evernote/android/job/JobRequest$Builder;->access$1400(Lcom/evernote/android/job/JobRequest$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->fromXml(Ljava/lang/String;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    move-result-object v1

    # setter for: Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    invoke-static {v0, v1}, Lcom/evernote/android/job/JobRequest$Builder;->access$1302(Lcom/evernote/android/job/JobRequest$Builder;Lcom/evernote/android/job/util/support/PersistableBundleCompat;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .line 243
    :cond_23
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1300(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    move-result-object v0

    return-object v0
.end method

.method public getFlexMs()J
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$800(Lcom/evernote/android/job/JobRequest$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntervalMs()J
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$700(Lcom/evernote/android/job/JobRequest$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method getJobApi()Lcom/evernote/android/job/util/JobApi;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mJobApi:Lcom/evernote/android/job/util/JobApi;

    return-object v0
.end method

.method public getJobId()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mId:I
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$100(Lcom/evernote/android/job/JobRequest$Builder;)I

    move-result v0

    return v0
.end method

.method getNumFailures()I
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    return v0
.end method

.method public getScheduledAt()J
    .registers 3

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    return-wide v0
.end method

.method public getStartMs()J
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$300(Lcom/evernote/android/job/JobRequest$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$200(Lcom/evernote/android/job/JobRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest$Builder;->hashCode()I

    move-result v0

    return v0
.end method

.method incNumFailures()V
    .registers 4

    .prologue
    .line 384
    iget v1, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    .line 385
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 386
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "numFailures"

    iget v2, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/evernote/android/job/JobStorage;->update(Lcom/evernote/android/job/JobRequest;Landroid/content/ContentValues;)V

    .line 388
    return-void
.end method

.method public isExact()Z
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$000(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method isFlexSupport()Z
    .registers 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest;->mFlexSupport:Z

    return v0
.end method

.method public isPeriodic()Z
    .registers 5

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPersisted()Z
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mPersisted:Z
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1500(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method isTransient()Z
    .registers 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    return v0
.end method

.method public isUpdateCurrent()Z
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mUpdateCurrent:Z
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1600(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method public requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1200(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public requirementsEnforced()Z
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$900(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method public requiresCharging()Z
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1000(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method public requiresDeviceIdle()Z
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # getter for: Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z
    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1100(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method reschedule(ZZ)I
    .registers 6
    .param p1, "failure"    # Z
    .param p2, "newJob"    # Z

    .prologue
    .line 376
    new-instance v1, Lcom/evernote/android/job/JobRequest$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Lcom/evernote/android/job/JobRequest;ZLcom/evernote/android/job/JobRequest$1;)V

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    .line 377
    .local v0, "newRequest":Lcom/evernote/android/job/JobRequest;
    if-eqz p1, :cond_12

    .line 378
    iget v1, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    .line 380
    :cond_12
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->schedule()I

    move-result v1

    return v1
.end method

.method public schedule()I
    .registers 2

    .prologue
    .line 349
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/JobManager;->schedule(Lcom/evernote/android/job/JobRequest;)V

    .line 350
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    return v0
.end method

.method setFlexSupport(Z)V
    .registers 2
    .param p1, "flexSupport"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest;->mFlexSupport:Z

    .line 340
    return-void
.end method

.method setScheduledAt(J)V
    .registers 4
    .param p1, "timeStamp"    # J

    .prologue
    .line 298
    iput-wide p1, p0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    .line 299
    return-void
.end method

.method setTransient(Z)V
    .registers 5
    .param p1, "isTransient"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    .line 392
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 393
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "isTransient"

    iget-boolean v2, p0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 394
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/evernote/android/job/JobStorage;->update(Lcom/evernote/android/job/JobRequest;Landroid/content/ContentValues;)V

    .line 395
    return-void
.end method

.method toContentValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 398
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    # invokes: Lcom/evernote/android/job/JobRequest$Builder;->fillContentValues(Landroid/content/ContentValues;)V
    invoke-static {v1, v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1800(Lcom/evernote/android/job/JobRequest$Builder;Landroid/content/ContentValues;)V

    .line 400
    const-string v1, "numFailures"

    iget v2, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v1, "scheduledAt"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v1, "isTransient"

    iget-boolean v2, p0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 403
    const-string v1, "flexSupport"

    iget-boolean v2, p0, Lcom/evernote/android/job/JobRequest;->mFlexSupport:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 404
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

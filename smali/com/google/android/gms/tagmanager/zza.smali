.class public Lcom/google/android/gms/tagmanager/zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zza$zza;
    }
.end annotation


# static fields
.field private static zzbEI:Ljava/lang/Object;

.field private static zzbEJ:Lcom/google/android/gms/tagmanager/zza;


# instance fields
.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final zzXh:Ljava/lang/Thread;

.field private volatile zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private volatile zzbEC:J

.field private volatile zzbED:J

.field private volatile zzbEE:J

.field private volatile zzbEF:J

.field private final zzbEG:Ljava/lang/Object;

.field private zzbEH:Lcom/google/android/gms/tagmanager/zza$zza;

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbEI:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zza$zza;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zza$zza;Lcom/google/android/gms/common/util/zze;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEC:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbED:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zza;->mClosed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEG:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/tagmanager/zza$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zza$1;-><init>(Lcom/google/android/gms/tagmanager/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEH:Lcom/google/android/gms/tagmanager/zza$zza;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zza;->zzuP:Lcom/google/android/gms/common/util/zze;

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->mContext:Landroid/content/Context;

    :goto_27
    if-eqz p2, :cond_2b

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEH:Lcom/google/android/gms/tagmanager/zza$zza;

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEE:J

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/tagmanager/zza$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zza$2;-><init>(Lcom/google/android/gms/tagmanager/zza;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzXh:Ljava/lang/Thread;

    return-void

    :cond_40
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->mContext:Landroid/content/Context;

    goto :goto_27
.end method

.method private zzPW()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzPX()V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_9} :catch_e
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    :try_start_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_b

    throw v0

    :catch_e
    move-exception v0

    goto :goto_9
.end method

.method private zzPX()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEE:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzbED:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEG:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_21

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEE:J

    :cond_20
    return-void

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private zzPY()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEF:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_13
    return-void
.end method

.method private zzPZ()V
    .registers 5

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zza;->mClosed:Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEH:Lcom/google/android/gms/tagmanager/zza$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zza$zza;->zzQa()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_1e

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEF:J

    const-string v0, "Obtained fresh AdvertisingId info from GmsCore."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbg(Ljava/lang/String;)V

    :cond_1e
    monitor-enter p0

    :try_start_1f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_39

    :try_start_23
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEG:Ljava/lang/Object;

    monitor-enter v1
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_32

    :try_start_26
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEG:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zza;->zzbEC:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    goto :goto_5

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbg(Ljava/lang/String;)V

    goto :goto_5

    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zza;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zza;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzPZ()V

    return-void
.end method

.method public static zzbS(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zza;
    .registers 3

    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbEJ:Lcom/google/android/gms/tagmanager/zza;

    if-nez v0, :cond_18

    sget-object v1, Lcom/google/android/gms/tagmanager/zza;->zzbEI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbEJ:Lcom/google/android/gms/tagmanager/zza;

    if-nez v0, :cond_17

    new-instance v0, Lcom/google/android/gms/tagmanager/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zza;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbEJ:Lcom/google/android/gms/tagmanager/zza;

    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbEJ:Lcom/google/android/gms/tagmanager/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zza;->start()V

    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b

    :cond_18
    sget-object v0, Lcom/google/android/gms/tagmanager/zza;->zzbEJ:Lcom/google/android/gms/tagmanager/zza;

    return-object v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public isLimitAdTrackingEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzPW()V

    :goto_7
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzPY()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzPX()V

    goto :goto_7

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    goto :goto_f
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzXh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public zzPV()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzPW()V

    :goto_7
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzPY()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zza;->zzPX()V

    goto :goto_7

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zzadB:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.class public Lcom/google/android/gms/internal/zzauj;
.super Lcom/google/android/gms/internal/zzauh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzauj$zza;
    }
.end annotation


# instance fields
.field protected zzbuV:Lcom/google/android/gms/internal/zzauj$zza;

.field private zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private final zzbuX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzbuY:Z

.field private zzbuZ:Ljava/lang/String;

.field private zzbva:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuX:Ljava/util/Set;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuZ:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbva:Ljava/lang/String;

    return-void
.end method

.method private zzMS()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzauj;->zzMT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzauj;->zzf(Ljava/lang/Class;)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMc()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private zzMT()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauj;->zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/zzauj;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzauj;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauj;->zzaM(Z)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 10

    const-wide/16 v6, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzaut;->zzfX(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Invalid conditional user property name"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_39
    return-void

    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzm(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Invalid conditional user property value"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    :cond_52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzn(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Unable to normalize conditional user property value"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    :cond_6a
    iput-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLa()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_7e

    cmp-long v1, v2, v6

    if-gez v1, :cond_90

    :cond_7e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v4, "Invalid conditional user property timeout"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    :cond_90
    iget-wide v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLb()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a2

    cmp-long v1, v2, v6

    if-gez v1, :cond_b4

    :cond_a2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v4, "Invalid conditional user property time to live"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzauj$2;-><init>(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    goto/16 :goto_39
.end method

.method private zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 19

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "User property not set since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMt()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Setting user property (FE)"

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzauq;

    move-object v1, p2

    move-wide v2, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaul;->zzb(Lcom/google/android/gms/internal/zzauq;)V

    goto :goto_24
.end method

.method private zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iput-wide v0, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    if-eqz p3, :cond_1c

    iput-object p3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iput-object p4, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$3;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzauj$3;-><init>(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method private zzaM(Z)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaua;->setMeasurementEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->zzMW()V

    return-void
.end method

.method private zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v2

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzauj$5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzauj$5;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_48

    const-wide/16 v0, 0x1388

    :try_start_1b
    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_39
    .catchall {:try_start_1b .. :try_end_1e} :catchall_48

    :goto_1e
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_48

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Timed out waiting for get user properties"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_38
    return-object v0

    :catch_39
    move-exception v0

    :try_start_3a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Interrupted waiting for get user properties"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e

    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_48

    throw v0

    :cond_4b
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    :cond_6e
    move-object v0, v1

    goto :goto_38
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauj;->zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 21
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaue;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Conditional property not sent since Firebase Analytics is disabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_35
    return-void

    :cond_36
    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_4b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;
    :try_end_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_92} :catch_bd

    move-result-object v18

    new-instance v4, Lcom/google/android/gms/internal/zzatg;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-wide/from16 v16, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/internal/zzatg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzaul;->zzf(Lcom/google/android/gms/internal/zzatg;)V

    goto/16 :goto_35

    :catch_bd
    move-exception v2

    goto/16 :goto_35
.end method

.method private zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 21
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaue;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Event not sent since app measurement is disabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzauj;->zzbuY:Z

    if-nez v2, :cond_2f

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzauj;->zzbuY:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzauj;->zzMS()V

    :cond_2f
    const-string v2, "am"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaut;->zzgd(Ljava/lang/String;)Z

    move-result v2

    if-eqz p6, :cond_5d

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v3, :cond_5d

    if-nez v2, :cond_5d

    if-nez v9, :cond_5d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, p2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_24

    :cond_5d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaue;->zzMt()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzaut;->zzfV(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_94

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKM()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, p2, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_92

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_86
    iget-object v5, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v5

    const-string v6, "_ev"

    invoke-virtual {v5, v3, v6, v4, v2}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_24

    :cond_92
    const/4 v2, 0x0

    goto :goto_86

    :cond_94
    const-string v2, "_o"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_o"

    invoke-static {v2}, Lcom/google/android/gms/common/util/zzf;->zzx(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v3, p2, v0, v2, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_sc"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ce

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzauk;->zzMU()Lcom/google/android/gms/internal/zzauk$zza;

    move-result-object v3

    if-eqz v3, :cond_cb

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/internal/zzauk$zza;->zzbvz:Z

    :cond_cb
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzauk;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;Landroid/os/Bundle;)V

    :cond_ce
    if-eqz p7, :cond_11c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzaut;->zzM(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v8, v2

    :goto_d9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Logging event (FE)"

    invoke-virtual {v2, v3, p2, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzatq;

    new-instance v4, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v4, v8}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    move-object v3, p2

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzaul;->zzc(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    if-nez v9, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj;->zzbuX:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_104
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/AppMeasurement$zzc;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/AppMeasurement$zzc;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_104

    :cond_11c
    move-object v8, v2

    goto :goto_d9
.end method

.method private zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 21
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaue;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Conditional property not cleared since Firebase Analytics is disabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_27
    return-void

    :cond_28
    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_4e} :catch_7d

    move-result-object v18

    new-instance v4, Lcom/google/android/gms/internal/zzatg;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-wide/from16 v16, v0

    move-object v7, v2

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/internal/zzatg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzaul;->zzf(Lcom/google/android/gms/internal/zzatg;)V

    goto :goto_27

    :catch_7d
    move-exception v2

    goto :goto_27
.end method

.method private zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v2

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/zzauj$4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauj$4;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_47

    const-wide/16 v0, 0x1388

    :try_start_1a
    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_38
    .catchall {:try_start_1a .. :try_end_1d} :catchall_47

    :goto_1d
    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_47

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Timed out waiting for get conditional user properties"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_37
    return-object v0

    :catch_38
    move-exception v0

    :try_start_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Interrupted waiting for get conditional user properties"

    invoke-virtual {v1, v3, p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1d

    :catchall_47
    move-exception v0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_47

    throw v0

    :cond_4a
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    new-instance v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbqX:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbqY:Z

    iput-boolean v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    if-eqz v4, :cond_a0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    if-eqz v4, :cond_a0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    :cond_a0
    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbrb:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    if-eqz v4, :cond_be

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    if-eqz v4, :cond_be

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    :cond_be
    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzauq;->zzbwc:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbrd:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    if-eqz v4, :cond_e2

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    if-eqz v4, :cond_e2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_e2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    :cond_e7
    move-object v0, v1

    goto/16 :goto_37
.end method


# virtual methods
.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJV()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getAppInstanceId()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzMr()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$11;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzauj$11;-><init>(Lcom/google/android/gms/internal/zzauj;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_e

    :catch_21
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to schedule task for getAppInstanceId"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_e
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzauj;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJV()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzKY()I

    move-result v0

    return v0
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJV()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzauj;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Package name should be null when calling setConditionalUserProperty"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_20
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzauj;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJV()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzauj;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public setMeasurementEnabled(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzauj$1;-><init>(Lcom/google/android/gms/internal/zzauj;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzauj$6;-><init>(Lcom/google/android/gms/internal/zzauj;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzauj$7;-><init>(Lcom/google/android/gms/internal/zzauj;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic zzJV()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJV()V

    return-void
.end method

.method public bridge synthetic zzJW()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJW()V

    return-void
.end method

.method public bridge synthetic zzJX()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJX()V

    return-void
.end method

.method public bridge synthetic zzJY()Lcom/google/android/gms/internal/zzatb;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJZ()Lcom/google/android/gms/internal/zzatf;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJZ()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKa()Lcom/google/android/gms/internal/zzauj;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKb()Lcom/google/android/gms/internal/zzatu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKc()Lcom/google/android/gms/internal/zzatl;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKd()Lcom/google/android/gms/internal/zzaul;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKe()Lcom/google/android/gms/internal/zzauk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKf()Lcom/google/android/gms/internal/zzatv;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKg()Lcom/google/android/gms/internal/zzatj;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKh()Lcom/google/android/gms/internal/zzaut;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKi()Lcom/google/android/gms/internal/zzauc;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKj()Lcom/google/android/gms/internal/zzaun;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKj()Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKk()Lcom/google/android/gms/internal/zzaud;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKl()Lcom/google/android/gms/internal/zzatx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKm()Lcom/google/android/gms/internal/zzaua;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKn()Lcom/google/android/gms/internal/zzati;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    return-object v0
.end method

.method public zzMQ()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuV:Lcom/google/android/gms/internal/zzauj$zza;

    if-nez v1, :cond_22

    new-instance v1, Lcom/google/android/gms/internal/zzauj$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzauj$zza;-><init>(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/internal/zzauj$1;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuV:Lcom/google/android/gms/internal/zzauj$zza;

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuV:Lcom/google/android/gms/internal/zzauj$zza;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuV:Lcom/google/android/gms/internal/zzauj$zza;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public zzMR()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMt()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->zzMR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatl;->zzLS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "auto"

    const-string v2, "_ou"

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/zzauj;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_11
.end method

.method public zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_14
    const-string v1, "EventInterceptor already set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :cond_19
    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public zza(Lcom/google/android/gms/measurement/AppMeasurement$zzc;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuX:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "OnEventListener already registered"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .registers 25

    if-eqz p5, :cond_25

    new-instance v8, Landroid/os/Bundle;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v13

    new-instance v2, Lcom/google/android/gms/internal/zzauj$8;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/zzauj$8;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void

    :cond_25
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    goto :goto_9
.end method

.method zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .registers 15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauj$9;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzauj$9;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .registers 13

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v0, :cond_e

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaut;->zzgd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_e
    move v5, v4

    :goto_f
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    :cond_19
    const/4 v5, 0x0

    goto :goto_f
.end method

.method public zzaN(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Fetching user attributes (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzauj$10;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/gms/internal/zzauj$10;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_56

    const-wide/16 v2, 0x1388

    :try_start_29
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_47
    .catchall {:try_start_29 .. :try_end_2c} :catchall_56

    :goto_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_56

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_46

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Timed out waiting for get user properties"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_46
    return-object v0

    :catch_47
    move-exception v0

    :try_start_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Interrupted waiting for get user properties"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2c

    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_56

    throw v0
.end method

.method public zzar(J)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaud;->zzMq()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Cannot retrieve app instance id from analytics worker thread"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaud;->zzbc()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Cannot retrieve app instance id from main thread"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_18

    :cond_31
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v1

    :try_start_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzauj$12;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzauj$12;-><init>(Lcom/google/android/gms/internal/zzauj;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_5e

    :try_start_43
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_46} :catch_4e
    .catchall {:try_start_43 .. :try_end_46} :catchall_5e

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_5e

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_18

    :catch_4e
    move-exception v2

    :try_start_4f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Interrupted waiting for app instance id"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_18

    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_4f .. :try_end_60} :catchall_5e

    throw v0
.end method

.method public zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p4

    move-object v6, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzaut;->zzfX(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result v3

    invoke-virtual {v2, p2, v3, v6}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2d
    iget-object v3, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    if-eqz p3, :cond_82

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/zzaut;->zzm(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result v3

    invoke-virtual {v2, p2, v3, v6}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    instance-of v3, p3, Ljava/lang/String;

    if-nez v3, :cond_5d

    instance-of v3, p3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_65

    :cond_5d
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_65
    iget-object v3, p0, Lcom/google/android/gms/internal/zzauj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_38

    :cond_71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/zzaut;->zzn(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_38

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_38

    :cond_82
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_38
.end method

.method public zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuW:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v0, :cond_f

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaut;->zzgd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_f
    move v5, v4

    :goto_10
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    :cond_19
    move v5, v6

    goto :goto_10
.end method

.method public zzf(Ljava/lang/Class;)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "initialize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public declared-synchronized zzfQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj;->zzJW()V

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbva:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuZ:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_26

    :goto_13
    monitor-exit p0

    return-object v0

    :cond_15
    const-wide/16 v0, 0x7530

    :try_start_17
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzauj;->zzar(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_13

    :cond_1f
    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj;->zzbva:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj;->zzbuZ:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_26

    goto :goto_13

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic zzmR()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzmR()V

    return-void
.end method

.method protected zzmS()V
    .registers 1

    return-void
.end method

.method public bridge synthetic zznR()Lcom/google/android/gms/common/util/zze;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

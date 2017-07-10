.class public Lcom/google/android/gms/internal/zzauk;
.super Lcom/google/android/gms/internal/zzauh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzauk$zza;
    }
.end annotation


# instance fields
.field protected zzbvm:Lcom/google/android/gms/internal/zzauk$zza;

.field private volatile zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

.field private zzbvo:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

.field private zzbvp:J

.field private final zzbvq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/zzauk$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbvr:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzbvs:Z

.field private zzbvt:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

.field private zzbvu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvq:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvr:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzauk$zza;Z)V
    .registers 13
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    :goto_9
    if-eqz v1, :cond_a5

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement$zzf;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V

    move-object v1, v0

    :goto_11
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzauk;->zzbvs:Z

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvr:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/AppMeasurement$zzd;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_25} :catch_90
    .catchall {:try_start_13 .. :try_end_25} :catchall_a1

    :try_start_25
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/measurement/AppMeasurement$zzd;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;Lcom/google/android/gms/measurement/AppMeasurement$zzf;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_48
    .catchall {:try_start_25 .. :try_end_28} :catchall_a1

    move-result v0

    and-int/2addr v0, v2

    :goto_2a
    move v2, v0

    goto :goto_19

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvo:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    if-eqz v1, :cond_a8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzauk;->zzbvp:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_a8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvo:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    goto :goto_9

    :catch_48
    move-exception v0

    :try_start_49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "onScreenChangeCallback threw exception"

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_56} :catch_90
    .catchall {:try_start_49 .. :try_end_56} :catchall_a1

    move v0, v2

    goto :goto_2a

    :cond_58
    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzauk;->zzbvs:Z

    :goto_5a
    if-eqz v2, :cond_8f

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauk$zza;->zzbqg:Ljava/lang/String;

    if-nez v0, :cond_6e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzauk;->zzfS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/zzauk$zza;->zzbqg:Ljava/lang/String;

    :cond_6e
    new-instance v0, Lcom/google/android/gms/internal/zzauk$zza;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzauk$zza;-><init>(Lcom/google/android/gms/internal/zzauk$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvo:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzauk;->zzbvp:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzauk$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/google/android/gms/internal/zzauk$1;-><init>(Lcom/google/android/gms/internal/zzauk;ZLcom/google/android/gms/internal/zzauk$zza;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    :cond_8f
    return-void

    :catch_90
    move-exception v0

    :try_start_91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "onScreenChangeCallback loop threw exception"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9e
    .catchall {:try_start_91 .. :try_end_9e} :catchall_a1

    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzauk;->zzbvs:Z

    goto :goto_5a

    :catchall_a1
    move-exception v0

    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzauk;->zzbvs:Z

    throw v0

    :cond_a5
    move-object v1, v0

    goto/16 :goto_11

    :cond_a8
    move-object v1, v0

    goto/16 :goto_9
.end method

.method private zza(Lcom/google/android/gms/internal/zzauk$zza;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/zzauk$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatb;->zzW(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKj()Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzauk$zza;->zzbvz:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaun;->zzaO(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzauk$zza;->zzbvz:Z

    :cond_1e
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzauk;Lcom/google/android/gms/internal/zzauk$zza;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauk;->zza(Lcom/google/android/gms/internal/zzauk$zza;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;Landroid/os/Bundle;)V
    .registers 6

    if-eqz p1, :cond_25

    if-eqz p0, :cond_25

    const-string v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqf:Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string v0, "_sn"

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string v0, "_sc"

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_si"

    iget-wide v2, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqh:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_25
    return-void
.end method

.method static zzfS(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x24

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_11

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_10

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v0, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauk;->zzv(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzauk$zza;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/zzauk$zza;->zzbqh:J

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzauk$zza;->zzbqf:Ljava/lang/String;

    const-string v2, "referrer_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzauk$zza;->zzbqg:Ljava/lang/String;

    goto :goto_2
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauk;->zzv(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzauk$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvo:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzauk;->zzbvp:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzauk$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzauk$2;-><init>(Lcom/google/android/gms/internal/zzauk;Lcom/google/android/gms/internal/zzauk$zza;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauk;->zzv(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzauk$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzauk;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzauk$zza;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatb;->zzJU()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 9
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauk$zza;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzauk$zza;->zzbqh:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "name"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauk$zza;->zzbqf:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "referrer_name"

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauk$zza;->zzbqg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public registerOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zzd;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$zzd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzJW()V

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Attempting to register null OnScreenChangeCallback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvr:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvr:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method public setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v1, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called with a non-null activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzbc()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called from the main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_12

    :cond_2b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvs:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Cannot call setCurrentScreen from onScreenChangeCallback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_12

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    if-nez v0, :cond_4f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_12

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_65

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_12

    :cond_65
    if-nez p3, :cond_73

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzauk;->zzfS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqg:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqf:Ljava/lang/String;

    if-nez v0, :cond_83

    if-eqz p2, :cond_93

    :cond_83
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqf:Ljava/lang/String;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqf:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    :cond_93
    move v0, v1

    :goto_94
    if-eqz v2, :cond_a9

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_a7
    const/4 v0, 0x0

    goto :goto_94

    :cond_a9
    if-eqz p2, :cond_d6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_bf

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKP()I

    move-result v2

    if-le v0, v2, :cond_d6

    :cond_bf
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_d6
    if-eqz p3, :cond_103

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_ec

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKP()I

    move-result v2

    if-le v0, v2, :cond_103

    :cond_ec
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_103
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Setting current screen to name, class"

    if-nez p2, :cond_12b

    const-string v0, "null"

    :goto_111
    invoke-virtual {v2, v3, v0, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzauk$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaut;->zzNi()J

    move-result-wide v2

    invoke-direct {v0, p2, p3, v2, v3}, Lcom/google/android/gms/internal/zzauk$zza;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauk;->zzbvq:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzauk;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzauk$zza;Z)V

    goto/16 :goto_12

    :cond_12b
    move-object v0, p2

    goto :goto_111
.end method

.method public unregisterOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zzd;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$zzd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzJW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvr:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

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

.method public zzMU()Lcom/google/android/gms/internal/zzauk$zza;
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvm:Lcom/google/android/gms/internal/zzauk$zza;

    return-object v0
.end method

.method public zzMV()Lcom/google/android/gms/measurement/AppMeasurement$zzf;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzJW()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvn:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    if-nez v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement$zzf;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V

    goto :goto_8
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzmR()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvu:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvu:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_16

    :cond_12
    iput-object p1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvu:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauk;->zzbvt:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

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

.method zzv(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzauk$zza;
    .registers 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzbvq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauk$zza;

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzauk;->zzfS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzauk$zza;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaut;->zzNi()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/google/android/gms/internal/zzauk$zza;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauk;->zzbvq:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-object v0
.end method

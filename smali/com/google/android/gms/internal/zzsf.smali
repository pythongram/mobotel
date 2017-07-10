.class public Lcom/google/android/gms/internal/zzsf;
.super Lcom/google/android/gms/internal/zzsa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzsf$zza;
    }
.end annotation


# instance fields
.field private final zzael:Lcom/google/android/gms/internal/zzsf$zza;

.field private zzaem:Lcom/google/android/gms/internal/zzta;

.field private final zzaen:Lcom/google/android/gms/internal/zzsr;

.field private zzaeo:Lcom/google/android/gms/internal/zztj;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzsc;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsa;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    new-instance v0, Lcom/google/android/gms/internal/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsc;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztj;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzaeo:Lcom/google/android/gms/internal/zztj;

    new-instance v0, Lcom/google/android/gms/internal/zzsf$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzsf$zza;-><init>(Lcom/google/android/gms/internal/zzsf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzael:Lcom/google/android/gms/internal/zzsf$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzsf$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzsf$1;-><init>(Lcom/google/android/gms/internal/zzsf;Lcom/google/android/gms/internal/zzsc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzaen:Lcom/google/android/gms/internal/zzsr;

    return-void
.end method

.method private onDisconnect()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzmA()Lcom/google/android/gms/internal/zzry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzry;->zznN()V

    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzaem:Lcom/google/android/gms/internal/zzta;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzaem:Lcom/google/android/gms/internal/zzta;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzsf;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsf;->onDisconnect()V

    :cond_12
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzsf;)Lcom/google/android/gms/internal/zzsf$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzael:Lcom/google/android/gms/internal/zzsf$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzsf;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsf;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzsf;Lcom/google/android/gms/internal/zzta;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsf;->zza(Lcom/google/android/gms/internal/zzta;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzta;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzmR()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsf;->zzaem:Lcom/google/android/gms/internal/zzta;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsf;->zzoo()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzmA()Lcom/google/android/gms/internal/zzry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzry;->onServiceConnected()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzsf;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsf;->zzop()V

    return-void
.end method

.method private zzoo()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzaeo:Lcom/google/android/gms/internal/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztj;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzaen:Lcom/google/android/gms/internal/zzsr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zznT()Lcom/google/android/gms/internal/zzsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsp;->zzpq()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzsr;->zzy(J)V

    return-void
.end method

.method private zzop()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsf;->zzbP(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->disconnect()V

    goto :goto_9
.end method


# virtual methods
.method public connect()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzob()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsf;->zzaem:Lcom/google/android/gms/internal/zzta;

    if-eqz v1, :cond_c

    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsf;->zzael:Lcom/google/android/gms/internal/zzsf$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsf$zza;->zzoq()Lcom/google/android/gms/internal/zzta;

    move-result-object v1

    if-eqz v1, :cond_1a

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsf;->zzaem:Lcom/google/android/gms/internal/zzta;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsf;->zzoo()V

    goto :goto_b

    :cond_1a
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public disconnect()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzob()V

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsf;->zzael:Lcom/google/android/gms/internal/zzsf$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_13} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_13} :catch_1e

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzaem:Lcom/google/android/gms/internal/zzta;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzaem:Lcom/google/android/gms/internal/zzta;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsf;->onDisconnect()V

    :cond_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_13

    :catch_20
    move-exception v0

    goto :goto_13
.end method

.method public isConnected()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzaem:Lcom/google/android/gms/internal/zzta;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public zzb(Lcom/google/android/gms/internal/zzsz;)Z
    .registers 9

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf;->zzaem:Lcom/google/android/gms/internal/zzta;

    if-nez v0, :cond_10

    move v0, v6

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsz;->zzpS()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zznT()Lcom/google/android/gms/internal/zzsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsp;->zzpj()Ljava/lang/String;

    move-result-object v4

    :goto_1e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsz;->zzfE()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsz;->zzpQ()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzta;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsf;->zzoo()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_30} :catch_3b

    const/4 v0, 0x1

    goto :goto_f

    :cond_32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zznT()Lcom/google/android/gms/internal/zzsp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsp;->zzpk()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    :catch_3b
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsf;->zzbP(Ljava/lang/String;)V

    move v0, v6

    goto :goto_f
.end method

.method protected zzmS()V
    .registers 1

    return-void
.end method

.method public zzon()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsf;->zzob()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsf;->zzaem:Lcom/google/android/gms/internal/zzta;

    if-nez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    :try_start_c
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzta;->zznK()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsf;->zzoo()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_14

    const/4 v0, 0x1

    goto :goto_b

    :catch_14
    move-exception v1

    const-string v1, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzsf;->zzbP(Ljava/lang/String;)V

    goto :goto_b
.end method

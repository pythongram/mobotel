.class public final Lcom/google/android/gms/internal/zzaum;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaum$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zzbvT:Lcom/google/android/gms/internal/zzaum$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaum$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaum$zza;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaum;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaum;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaum;->zzbvT:Lcom/google/android/gms/internal/zzaum$zza;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaum;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private zzKl()Lcom/google/android/gms/internal/zzatx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaum;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaue;->zzbM(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaum;)Lcom/google/android/gms/internal/zzaum$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaum;->zzbvT:Lcom/google/android/gms/internal/zzaum$zza;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaum;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaum;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static zzj(Landroid/content/Context;Z)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_c

    const-string v0, "com.google.android.gms.measurement.PackageMeasurementService"

    :goto_7
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzaut;->zzy(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_c
    const-string v0, "com.google.android.gms.measurement.AppMeasurementService"

    goto :goto_7
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaum;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "onBind called with null intent"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v0, Lcom/google/android/gms/internal/zzauf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaum;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaue;->zzbM(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzauf;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    goto :goto_10

    :cond_29
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaum;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "onBind received unknown action"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public onCreate()V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaum;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaue;->zzbM(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaum;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaue;->zzbM(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaum;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "onRebind called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaum;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "onRebind called. action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaum;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaue;->zzbM(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    if-nez p1, :cond_17

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "AppMeasurementService started with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_16
    :goto_16
    return v6

    :cond_17
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Local AppMeasurementService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzaum$1;

    invoke-direct {v3, p0, v0, p3, v1}, Lcom/google/android/gms/internal/zzaum$1;-><init>(Lcom/google/android/gms/internal/zzaum;Lcom/google/android/gms/internal/zzaue;ILcom/google/android/gms/internal/zzatx;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    goto :goto_16
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaum;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "onUnbind called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_10
    return v3

    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaum;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "onUnbind called for intent. action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10
.end method

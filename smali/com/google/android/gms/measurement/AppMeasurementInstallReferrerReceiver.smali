.class public final Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lcom/google/android/gms/internal/zzaub$zza;


# instance fields
.field private zzbqj:Lcom/google/android/gms/internal/zzaub;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private zzJS()Lcom/google/android/gms/internal/zzaub;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->zzbqj:Lcom/google/android/gms/internal/zzaub;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzaub;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaub;-><init>(Lcom/google/android/gms/internal/zzaub$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->zzbqj:Lcom/google/android/gms/internal/zzaub;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->zzbqj:Lcom/google/android/gms/internal/zzaub;

    return-object v0
.end method


# virtual methods
.method public doStartService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->zzJS()Lcom/google/android/gms/internal/zzaub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaub;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

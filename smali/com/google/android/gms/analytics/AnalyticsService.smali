.class public final Lcom/google/android/gms/analytics/AnalyticsService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/internal/zzti$zza;


# instance fields
.field private zzabq:Lcom/google/android/gms/internal/zzti;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private zzmq()Lcom/google/android/gms/internal/zzti;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzabq:Lcom/google/android/gms/internal/zzti;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzti;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzti;-><init>(Lcom/google/android/gms/internal/zzti$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzabq:Lcom/google/android/gms/internal/zzti;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzabq:Lcom/google/android/gms/internal/zzti;

    return-object v0
.end method


# virtual methods
.method public callServiceStopSelfResult(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzmq()Lcom/google/android/gms/internal/zzti;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzmq()Lcom/google/android/gms/internal/zzti;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzti;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzmq()Lcom/google/android/gms/internal/zzti;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzti;->onDestroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzmq()Lcom/google/android/gms/internal/zzti;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzti;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

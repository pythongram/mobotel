.class public final Lcom/google/android/gms/maps/MapsInitializer;
.super Ljava/lang/Object;


# static fields
.field private static zzpT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/maps/MapsInitializer;->zzpT:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    const-class v1, Lcom/google/android/gms/maps/MapsInitializer;

    monitor-enter v1

    :try_start_4
    const-string v2, "Context is null"

    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/google/android/gms/maps/MapsInitializer;->zzpT:Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1a

    if-eqz v2, :cond_f

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzai;->zzbI(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zzc;
    :try_end_12
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_f .. :try_end_12} :catch_1d
    .catchall {:try_start_f .. :try_end_12} :catchall_1a

    move-result-object v2

    :try_start_13
    invoke-static {v2}, Lcom/google/android/gms/maps/MapsInitializer;->zza(Lcom/google/android/gms/maps/internal/zzc;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/gms/maps/MapsInitializer;->zzpT:Z
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1a

    goto :goto_d

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1d
    move-exception v0

    :try_start_1e
    iget v0, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_1a

    goto :goto_d
.end method

.method public static zza(Lcom/google/android/gms/maps/internal/zzc;)V
    .registers 3

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/zzc;->zzJE()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zza(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V

    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/zzc;->zzJF()Lcom/google/android/gms/maps/model/internal/zza;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->zza(Lcom/google/android/gms/maps/model/internal/zza;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

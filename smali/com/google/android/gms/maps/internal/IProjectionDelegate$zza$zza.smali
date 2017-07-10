.class Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IProjectionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private zzrk:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza$zza;->zzrk:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza$zza;->zzrk:Landroid/os/IBinder;

    return-object v0
.end method

.method public fromScreenLocation(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_9
    const-string v1, "com.google.android.gms.maps.internal.IProjectionDelegate"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_36

    invoke-interface {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_14
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza$zza;->zzrk:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_38

    :cond_2f
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :cond_36
    move-object v1, v0

    goto :goto_14

    :catchall_38
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_8
    const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza$zza;->zzrk:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/google/android/gms/maps/model/VisibleRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/VisibleRegion;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    :goto_25
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_25

    :catchall_2e
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_8
    const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_30

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza$zza;->zzrk:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_35

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :cond_30
    const/4 v0, 0x0

    :try_start_31
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_17

    :catchall_35
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

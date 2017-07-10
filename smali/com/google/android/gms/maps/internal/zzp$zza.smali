.class public abstract Lcom/google/android/gms/maps/internal/zzp$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/zzp$zza$zza;
    }
.end annotation


# direct methods
.method public static zzdK(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/zzp;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.internal.IOnLocationChangeListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/zzp;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/internal/zzp;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/zzp$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/zzp$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_42

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v0, "com.google.android.gms.maps.internal.IOnLocationChangeListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :sswitch_10
    const-string v0, "com.google.android.gms.maps.internal.IOnLocationChangeListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/zzp$zza;->zzK(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_8

    :sswitch_25
    const-string v0, "com.google.android.gms.maps.internal.IOnLocationChangeListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/zzp$zza;->zze(Landroid/location/Location;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_8

    :cond_40
    const/4 v0, 0x0

    goto :goto_38

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

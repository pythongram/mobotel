.class public abstract Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IProjectionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IProjectionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza$zza;
    }
.end annotation


# direct methods
.method public static zzeb(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IProjectionDelegate;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IProjectionDelegate;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/internal/IProjectionDelegate;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_76

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    goto :goto_a

    :sswitch_12
    const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza;->fromScreenLocation(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_30

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2e
    move v0, v2

    goto :goto_a

    :cond_30
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    :sswitch_34
    const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    :goto_47
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_54

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_54
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_a

    :cond_59
    move-object v0, v1

    goto :goto_47

    :sswitch_5b
    const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IProjectionDelegate$zza;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_71

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Lcom/google/android/gms/maps/model/VisibleRegion;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6f
    move v0, v2

    goto :goto_a

    :cond_71
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6f

    nop

    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_34
        0x3 -> :sswitch_5b
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

.class public abstract Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza$zza;
    }
.end annotation


# direct methods
.method public static zzef(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_ce

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_11
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza;->getStreetViewPanorama()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_23

    invoke-interface {v2}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    goto :goto_9

    :sswitch_28
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_3b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_43
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza;->onResume()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_50
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza;->onPause()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_5d
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza;->onDestroy()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_6a
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza;->onLowMemory()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_77
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8a

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_8a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9b

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_98
    move v0, v1

    goto/16 :goto_9

    :cond_9b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_98

    :sswitch_a0
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza;->getView()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_b2

    invoke-interface {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_b2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v1

    goto/16 :goto_9

    :sswitch_b8
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzaf$zza;->zzea(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/zzaf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate$zza;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/internal/zzaf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_28
        0x3 -> :sswitch_43
        0x4 -> :sswitch_50
        0x5 -> :sswitch_5d
        0x6 -> :sswitch_6a
        0x7 -> :sswitch_77
        0x8 -> :sswitch_a0
        0x9 -> :sswitch_b8
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

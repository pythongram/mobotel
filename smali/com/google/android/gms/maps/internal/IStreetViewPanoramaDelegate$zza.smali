.class public abstract Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza$zza;
    }
.end annotation


# direct methods
.method public static zzed(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_1f0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v1

    :cond_1d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->enableZoom(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_24
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    move v0, v1

    :cond_30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->enablePanning(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_37
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_43

    move v0, v1

    :cond_43
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->enableUserNavigation(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_4a
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_56

    move v0, v1

    :cond_56
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->enableStreetNames(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_5d
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->isZoomGesturesEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6c

    move v0, v1

    :cond_6c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_70
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->isPanningGesturesEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_7f

    move v0, v1

    :cond_7f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_83
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->isUserNavigationEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_92

    move v0, v1

    :cond_92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_97
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->isStreetNamesEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_a6

    move v0, v1

    :cond_a6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_ab
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ca

    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    :goto_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->animateTo(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_ca
    move-object v0, v2

    goto :goto_be

    :sswitch_cc
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->getPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_e2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_e2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_e7
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->setPositionWithID(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_f8
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_113

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    :goto_10b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_113
    move-object v0, v2

    goto :goto_10b

    :sswitch_115
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_134

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    :goto_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->setPositionWithRadius(Lcom/google/android/gms/maps/model/LatLng;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_134
    move-object v0, v2

    goto :goto_128

    :sswitch_136
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->getStreetViewPanoramaLocation()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_14c

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_14c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_151
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzac$zza;->zzdX(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/zzac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->setOnStreetViewPanoramaChangeListener(Lcom/google/android/gms/maps/internal/zzac;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_166
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzab$zza;->zzdW(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/zzab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/internal/zzab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_17b
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzad$zza;->zzdY(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/zzad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/internal/zzad;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_190
    const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->pointToOrientation(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1ae

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_1ae
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_1b3
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d8

    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    :goto_1c6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->orientationToPoint(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1d3

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_1d3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    :cond_1d8
    move-object v0, v2

    goto :goto_1c6

    :sswitch_1da
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzae$zza;->zzdZ(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/zzae;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$zza;->setOnStreetViewPanoramaLongClickListener(Lcom/google/android/gms/maps/internal/zzae;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    nop

    :sswitch_data_1f0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_24
        0x3 -> :sswitch_37
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_5d
        0x6 -> :sswitch_70
        0x7 -> :sswitch_83
        0x8 -> :sswitch_97
        0x9 -> :sswitch_ab
        0xa -> :sswitch_cc
        0xb -> :sswitch_e7
        0xc -> :sswitch_f8
        0xd -> :sswitch_115
        0xe -> :sswitch_136
        0xf -> :sswitch_151
        0x10 -> :sswitch_166
        0x11 -> :sswitch_17b
        0x12 -> :sswitch_190
        0x13 -> :sswitch_1b3
        0x14 -> :sswitch_1da
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

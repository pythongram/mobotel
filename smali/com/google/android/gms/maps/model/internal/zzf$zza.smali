.class public abstract Lcom/google/android/gms/maps/model/internal/zzf$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/zzf$zza$zza;
    }
.end annotation


# direct methods
.method public static zzen(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzf;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/zzf;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/model/internal/zzf;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/zzf$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_248

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    :sswitch_b
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->remove()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_1d
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_2d
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    :cond_40
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_47
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5c

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_5c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_60
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_70
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_80
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setSnippet(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_91
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    :sswitch_a2
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b6

    move v0, v1

    :goto_ae
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setDraggable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_b6
    move v0, v2

    goto :goto_ae

    :sswitch_b8
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->isDraggable()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c7

    move v2, v1

    :cond_c7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_cc
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->showInfoWindow()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_d9
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->hideInfoWindow()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_e6
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->isInfoWindowShown()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_f5

    move v2, v1

    :cond_f5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_fa
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_106

    move v2, v1

    :cond_106
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setVisible(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_10e
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->isVisible()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_11d

    move v2, v1

    :cond_11d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_122
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->zzen(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->zzj(Lcom/google/android/gms/maps/model/internal/zzf;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_139

    move v2, v1

    :cond_139
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_13e
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->hashCodeRemote()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_14f
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->zzM(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_164
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setAnchor(FF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_179
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_185

    move v2, v1

    :cond_185
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setFlat(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_18d
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->isFlat()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_19c

    move v2, v1

    :cond_19c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_1a1
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setRotation(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1b2
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->getRotation()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_1c3
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setInfoWindowAnchor(FF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1d8
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setAlpha(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1e9
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->getAlpha()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_1fa
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setZIndex(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_20b
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->getZIndex()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_21c
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->setTag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_231
    const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzf$zza;->getTag()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_243

    invoke-interface {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_243
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    :sswitch_data_248
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_47
        0x5 -> :sswitch_60
        0x6 -> :sswitch_70
        0x7 -> :sswitch_80
        0x8 -> :sswitch_91
        0x9 -> :sswitch_a2
        0xa -> :sswitch_b8
        0xb -> :sswitch_cc
        0xc -> :sswitch_d9
        0xd -> :sswitch_e6
        0xe -> :sswitch_fa
        0xf -> :sswitch_10e
        0x10 -> :sswitch_122
        0x11 -> :sswitch_13e
        0x12 -> :sswitch_14f
        0x13 -> :sswitch_164
        0x14 -> :sswitch_179
        0x15 -> :sswitch_18d
        0x16 -> :sswitch_1a1
        0x17 -> :sswitch_1b2
        0x18 -> :sswitch_1c3
        0x19 -> :sswitch_1d8
        0x1a -> :sswitch_1e9
        0x1b -> :sswitch_1fa
        0x1c -> :sswitch_20b
        0x1d -> :sswitch_21c
        0x1e -> :sswitch_231
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

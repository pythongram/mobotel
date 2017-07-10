.class public abstract Lcom/google/android/gms/maps/model/internal/zzb$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/zzb$zza$zza;
    }
.end annotation


# direct methods
.method public static zzej(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzb;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/zzb;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/model/internal/zzb;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/zzb$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_1d8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    :sswitch_b
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->remove()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_1d
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_2d
    const-string v2, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    :cond_40
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_47
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

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
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->setRadius(D)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_70
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->getRadius()D

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_a

    :sswitch_80
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->setStrokeWidth(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_91
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_a2
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->setStrokeColor(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_b3
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->getStrokeColor()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_c4
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->setFillColor(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_d5
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->getFillColor()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_e6
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->setZIndex(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_f7
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->getZIndex()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_108
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11c

    move v0, v1

    :goto_114
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->setVisible(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_11c
    move v0, v2

    goto :goto_114

    :sswitch_11e
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->isVisible()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12d

    move v2, v1

    :cond_12d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_132
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->zzej(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zzb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->zzb(Lcom/google/android/gms/maps/model/internal/zzb;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_149

    move v2, v1

    :cond_149
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_14e
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->hashCodeRemote()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_15f
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16b

    move v2, v1

    :cond_16b
    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->setClickable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_173
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->isClickable()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_182

    move v2, v1

    :cond_182
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_187
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/maps/model/PatternItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->setStrokePattern(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_19a
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->getStrokePattern()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    :sswitch_1ab
    const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->setTag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1c0
    const-string v2, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/zzb$zza;->getTag()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1d2

    invoke-interface {v2}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1d2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    nop

    :sswitch_data_1d8
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
        0xa -> :sswitch_b3
        0xb -> :sswitch_c4
        0xc -> :sswitch_d5
        0xd -> :sswitch_e6
        0xe -> :sswitch_f7
        0xf -> :sswitch_108
        0x10 -> :sswitch_11e
        0x11 -> :sswitch_132
        0x12 -> :sswitch_14e
        0x13 -> :sswitch_15f
        0x14 -> :sswitch_173
        0x15 -> :sswitch_187
        0x16 -> :sswitch_19a
        0x17 -> :sswitch_1ab
        0x18 -> :sswitch_1c0
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

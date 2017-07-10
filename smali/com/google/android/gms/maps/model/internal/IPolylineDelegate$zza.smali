.class public abstract Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza$zza;
    }
.end annotation


# direct methods
.method public static zzep(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_23a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    :sswitch_b
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->remove()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_1d
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_2d
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setPoints(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_3f
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_a

    :sswitch_4f
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setWidth(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_5f
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getWidth()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_a

    :sswitch_6f
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setColor(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_7f
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getColor()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_90
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setZIndex(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_a1
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getZIndex()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_b2
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_be

    move v0, v1

    :cond_be
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setVisible(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_c6
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->isVisible()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_d5

    move v0, v1

    :cond_d5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_da
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e6

    move v0, v1

    :cond_e6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setGeodesic(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_ee
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->isGeodesic()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_fd

    move v0, v1

    :cond_fd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_102
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->zzep(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->equalsRemote(Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_119

    move v0, v1

    :cond_119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_11e
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->hashCodeRemote()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_12f
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13b

    move v0, v1

    :cond_13b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setClickable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_143
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->isClickable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_152

    move v0, v1

    :cond_152
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_157
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_172

    sget-object v0, Lcom/google/android/gms/maps/model/Cap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Cap;

    :goto_16a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setStartCap(Lcom/google/android/gms/maps/model/Cap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_172
    move-object v0, v2

    goto :goto_16a

    :sswitch_174
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getStartCap()Lcom/google/android/gms/maps/model/Cap;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_18a

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/Cap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_18a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_18f
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1aa

    sget-object v0, Lcom/google/android/gms/maps/model/Cap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Cap;

    :goto_1a2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_1aa
    move-object v0, v2

    goto :goto_1a2

    :sswitch_1ac
    const-string v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getEndCap()Lcom/google/android/gms/maps/model/Cap;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1c2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/Cap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_1c2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_1c7
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setJointType(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1d8
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getJointType()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_1e9
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/maps/model/PatternItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setPattern(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1fc
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getPattern()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    :sswitch_20d
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->setTag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_222
    const-string v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$zza;->getTag()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_234

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_234
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    nop

    :sswitch_data_23a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_4f
        0x6 -> :sswitch_5f
        0x7 -> :sswitch_6f
        0x8 -> :sswitch_7f
        0x9 -> :sswitch_90
        0xa -> :sswitch_a1
        0xb -> :sswitch_b2
        0xc -> :sswitch_c6
        0xd -> :sswitch_da
        0xe -> :sswitch_ee
        0xf -> :sswitch_102
        0x10 -> :sswitch_11e
        0x11 -> :sswitch_12f
        0x12 -> :sswitch_143
        0x13 -> :sswitch_157
        0x14 -> :sswitch_174
        0x15 -> :sswitch_18f
        0x16 -> :sswitch_1ac
        0x17 -> :sswitch_1c7
        0x18 -> :sswitch_1d8
        0x19 -> :sswitch_1e9
        0x1a -> :sswitch_1fc
        0x1b -> :sswitch_20d
        0x1c -> :sswitch_222
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

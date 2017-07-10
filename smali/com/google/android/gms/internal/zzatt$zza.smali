.class public abstract Lcom/google/android/gms/internal/zzatt$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzatt$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzatt$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzes(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzatt;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/zzatt;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/zzatt;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzatt$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzatt$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_23a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_a
    return v7

    :sswitch_b
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatq;

    move-object v1, v0

    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/google/android/gms/internal/zzatd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatd;

    :goto_33
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzatt$zza;->zza(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_3a
    move-object v1, v2

    goto :goto_25

    :cond_3c
    move-object v0, v2

    goto :goto_33

    :sswitch_3e
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_67

    sget-object v0, Lcom/google/android/gms/internal/zzauq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauq;

    move-object v1, v0

    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/google/android/gms/internal/zzatd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatd;

    :goto_60
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzatt$zza;->zza(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_67
    move-object v1, v2

    goto :goto_52

    :cond_69
    move-object v0, v2

    goto :goto_60

    :sswitch_6b
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_85

    sget-object v0, Lcom/google/android/gms/internal/zzatd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatd;

    :goto_7e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzatt$zza;->zza(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_85
    move-object v0, v2

    goto :goto_7e

    :sswitch_87
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_aa

    sget-object v0, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatq;

    :goto_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzatt$zza;->zza(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_aa
    move-object v0, v2

    goto :goto_9a

    :sswitch_ac
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c7

    sget-object v0, Lcom/google/android/gms/internal/zzatd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatd;

    :goto_bf
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzatt$zza;->zzb(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_c7
    move-object v0, v2

    goto :goto_bf

    :sswitch_c9
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ef

    sget-object v0, Lcom/google/android/gms/internal/zzatd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatd;

    :goto_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e3

    move v1, v7

    :cond_e3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatt$zza;->zza(Lcom/google/android/gms/internal/zzatd;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    :cond_ef
    move-object v0, v2

    goto :goto_dc

    :sswitch_f1
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_114

    sget-object v0, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatq;

    :goto_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatt$zza;->zza(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_a

    :cond_114
    move-object v0, v2

    goto :goto_104

    :sswitch_116
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatt$zza;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_134
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_153

    sget-object v0, Lcom/google/android/gms/internal/zzatd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatd;

    :goto_147
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzatt$zza;->zzc(Lcom/google/android/gms/internal/zzatd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_153
    move-object v0, v2

    goto :goto_147

    :sswitch_155
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17f

    sget-object v0, Lcom/google/android/gms/internal/zzatg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    move-object v1, v0

    :goto_169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_181

    sget-object v0, Lcom/google/android/gms/internal/zzatd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatd;

    :goto_177
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzatt$zza;->zza(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_17f
    move-object v1, v2

    goto :goto_169

    :cond_181
    move-object v0, v2

    goto :goto_177

    :sswitch_183
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19e

    sget-object v0, Lcom/google/android/gms/internal/zzatg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    :goto_196
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzatt$zza;->zzb(Lcom/google/android/gms/internal/zzatg;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_19e
    move-object v0, v2

    goto :goto_196

    :sswitch_1a0
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b4

    move v1, v7

    :cond_1b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ce

    sget-object v0, Lcom/google/android/gms/internal/zzatd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatd;

    :goto_1c2
    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/google/android/gms/internal/zzatt$zza;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzatd;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    :cond_1ce
    move-object v0, v2

    goto :goto_1c2

    :sswitch_1d0
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e8

    move v1, v7

    :cond_1e8
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzatt$zza;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    :sswitch_1f4
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21b

    sget-object v0, Lcom/google/android/gms/internal/zzatd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzatd;

    :goto_20f
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/gms/internal/zzatt$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzatd;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    :cond_21b
    move-object v0, v2

    goto :goto_20f

    :sswitch_21d
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzatt$zza;->zzn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    :sswitch_data_23a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3e
        0x4 -> :sswitch_6b
        0x5 -> :sswitch_87
        0x6 -> :sswitch_ac
        0x7 -> :sswitch_c9
        0x9 -> :sswitch_f1
        0xa -> :sswitch_116
        0xb -> :sswitch_134
        0xc -> :sswitch_155
        0xd -> :sswitch_183
        0xe -> :sswitch_1a0
        0xf -> :sswitch_1d0
        0x10 -> :sswitch_1f4
        0x11 -> :sswitch_21d
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

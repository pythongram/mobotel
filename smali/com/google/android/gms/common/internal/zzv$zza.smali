.class public abstract Lcom/google/android/gms/common/internal/zzv$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzv$zza$zza;
    }
.end annotation


# direct methods
.method public static zzbu(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzv;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzv;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/common/internal/zzv;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/common/internal/zzv$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzv$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const v0, 0xffffff

    if-le p1, v0, :cond_b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzu$zza;->zzbt(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzu;

    move-result-object v2

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_32

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_121

    sget-object v0, Lcom/google/android/gms/common/internal/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzj;

    :goto_2a
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/common/internal/zzv$zza;->zza(Lcom/google/android/gms/common/internal/zzu;Lcom/google/android/gms/common/internal/zzj;)V

    :goto_2d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_a

    :cond_32
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_48

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11e

    sget-object v0, Lcom/google/android/gms/common/internal/zzan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzan;

    :goto_44
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/common/internal/zzv$zza;->zza(Lcom/google/android/gms/common/internal/zzu;Lcom/google/android/gms/common/internal/zzan;)V

    goto :goto_2d

    :cond_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_11b

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    :goto_53
    packed-switch p1, :pswitch_data_124

    :cond_56
    :pswitch_56
    move-object v10, v1

    move-object v9, v1

    move-object v8, v1

    move-object v7, v1

    move-object v6, v1

    move-object v5, v1

    :goto_5c
    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/common/internal/zzv$zza;->zza(ILcom/google/android/gms/common/internal/zzu;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_114

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v10, v1

    move-object v9, v1

    move-object v7, v0

    move-object v6, v1

    move-object v5, v1

    goto :goto_5c

    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10f

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v10, v1

    move-object v8, v1

    move-object v7, v0

    goto :goto_5c

    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10c

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v7, v0

    goto :goto_5c

    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_106

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v10, v1

    move-object v9, v1

    move-object v8, v1

    move-object v7, v0

    goto :goto_5c

    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    move-object v10, v1

    move-object v9, v1

    move-object v8, v1

    move-object v7, v1

    goto/16 :goto_5c

    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v1

    move-object v9, v1

    move-object v8, v1

    move-object v7, v1

    move-object v6, v1

    goto/16 :goto_5c

    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v10, v1

    move-object v9, v1

    move-object v8, v1

    move-object v7, v0

    move-object v6, v1

    move-object v5, v1

    goto/16 :goto_5c

    :cond_106
    move-object v10, v1

    move-object v9, v1

    move-object v8, v1

    move-object v7, v1

    goto/16 :goto_5c

    :cond_10c
    move-object v7, v1

    goto/16 :goto_5c

    :cond_10f
    move-object v10, v1

    move-object v8, v1

    move-object v7, v1

    goto/16 :goto_5c

    :cond_114
    move-object v10, v1

    move-object v9, v1

    move-object v7, v1

    move-object v6, v1

    move-object v5, v1

    goto/16 :goto_5c

    :cond_11b
    move-object v4, v1

    goto/16 :goto_53

    :cond_11e
    move-object v0, v1

    goto/16 :goto_44

    :cond_121
    move-object v0, v1

    goto/16 :goto_2a

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_f0
        :pswitch_56
        :pswitch_56
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_98
        :pswitch_d7
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_62
        :pswitch_bc
        :pswitch_56
        :pswitch_56
        :pswitch_f0
        :pswitch_56
        :pswitch_f0
        :pswitch_56
        :pswitch_f0
        :pswitch_56
        :pswitch_56
        :pswitch_bc
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_e5
        :pswitch_56
        :pswitch_56
        :pswitch_f0
        :pswitch_f0
        :pswitch_56
        :pswitch_56
        :pswitch_f0
        :pswitch_56
        :pswitch_f0
    .end packed-switch
.end method

.method protected zza(ILcom/google/android/gms/common/internal/zzu;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected zza(Lcom/google/android/gms/common/internal/zzu;Lcom/google/android/gms/common/internal/zzan;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

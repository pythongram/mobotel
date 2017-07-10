.class public abstract Lcom/google/android/gms/internal/zzbaq$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzbaq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbaq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbaq$zza$zza;
    }
.end annotation


# direct methods
.method public static zzff(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbaq;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbaq;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/zzbaq;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzbaq$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbaq$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_14c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    :sswitch_b
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v2, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    sget-object v0, Lcom/google/android/gms/common/internal/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzd;

    :cond_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbap$zza;->zzfe(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbap;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzbaq$zza;->zza(Lcom/google/android/gms/common/internal/zzd;Lcom/google/android/gms/internal/zzbap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_33
    const-string v2, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_46

    sget-object v0, Lcom/google/android/gms/internal/zzban;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzban;

    :cond_46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbaq$zza;->zza(Lcom/google/android/gms/internal/zzban;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_4d
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60

    move v0, v1

    :goto_59
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbaq$zza;->zzaP(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_60
    move v0, v2

    goto :goto_59

    :sswitch_62
    const-string v2, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_75

    sget-object v0, Lcom/google/android/gms/common/internal/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzad;

    :cond_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzx$zza;->zzbw(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzx;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzbaq$zza;->zza(Lcom/google/android/gms/common/internal/zzad;Lcom/google/android/gms/common/internal/zzx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_84
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbaq$zza;->zznv(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_95
    const-string v2, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_ac

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    :cond_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbap$zza;->zzfe(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbap;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/android/gms/internal/zzbaq$zza;->zza(ILandroid/accounts/Account;Lcom/google/android/gms/internal/zzbap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_bc
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzr$zza;->zzbr(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzr;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d4

    move v2, v1

    :cond_d4
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/gms/internal/zzbaq$zza;->zza(Lcom/google/android/gms/common/internal/zzr;IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_dc
    const-string v2, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ef

    sget-object v0, Lcom/google/android/gms/internal/zzbar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbar;

    :cond_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbap$zza;->zzfe(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbap;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzbaq$zza;->zza(Lcom/google/android/gms/internal/zzbar;Lcom/google/android/gms/internal/zzbap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_ff
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbap$zza;->zzfe(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbaq$zza;->zzb(Lcom/google/android/gms/internal/zzbap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_114
    const-string v2, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_127

    sget-object v0, Lcom/google/android/gms/internal/zzbau;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbau;

    :cond_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbap$zza;->zzfe(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbap;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzbaq$zza;->zza(Lcom/google/android/gms/internal/zzbau;Lcom/google/android/gms/internal/zzbap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_137
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_143

    move v2, v1

    :cond_143
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzbaq$zza;->zzaQ(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    nop

    :sswitch_data_14c
    .sparse-switch
        0x2 -> :sswitch_11
        0x3 -> :sswitch_33
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_62
        0x7 -> :sswitch_84
        0x8 -> :sswitch_95
        0x9 -> :sswitch_bc
        0xa -> :sswitch_dc
        0xb -> :sswitch_ff
        0xc -> :sswitch_114
        0xd -> :sswitch_137
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

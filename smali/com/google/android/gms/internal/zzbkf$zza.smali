.class public abstract Lcom/google/android/gms/internal/zzbkf$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzbkf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbkf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbkf$zza$zza;
    }
.end annotation


# direct methods
.method public static zzfr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbkf;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbkf;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/zzbkf;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzbkf$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbkf$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    const/4 v1, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_82

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto :goto_9

    :sswitch_11
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/google/android/gms/internal/zzbka;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbka;

    :goto_2c
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzbkf$zza;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbka;)[Lcom/google/android/gms/internal/zzbkh;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v3

    goto :goto_9

    :cond_38
    move-object v0, v1

    goto :goto_2c

    :sswitch_3a
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_70

    sget-object v0, Lcom/google/android/gms/internal/zzbka;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbka;

    move-object v2, v0

    :goto_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Lcom/google/android/gms/internal/zzbkj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbkj;

    :goto_64
    invoke-virtual {p0, v4, v2, v0}, Lcom/google/android/gms/internal/zzbkf$zza;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbka;Lcom/google/android/gms/internal/zzbkj;)[Lcom/google/android/gms/internal/zzbkh;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v3

    goto :goto_9

    :cond_70
    move-object v2, v1

    goto :goto_56

    :cond_72
    move-object v0, v1

    goto :goto_64

    :sswitch_74
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbkf$zza;->zzTW()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_9

    nop

    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_74
        0x3 -> :sswitch_3a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

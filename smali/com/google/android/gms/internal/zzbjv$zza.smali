.class public abstract Lcom/google/android/gms/internal/zzbjv$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzbjv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbjv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbjv$zza$zza;
    }
.end annotation


# direct methods
.method public static zzfp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbjv;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbjv;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/zzbjv;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzbjv$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjv$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_5c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/google/android/gms/internal/zzbka;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbka;

    :goto_2a
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzbjv$zza;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbka;)[Lcom/google/android/gms/internal/zzbjr;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_8

    :cond_35
    const/4 v0, 0x0

    goto :goto_2a

    :sswitch_37
    const-string v0, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbjv$zza;->zzoh(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_4a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4a

    :sswitch_50
    const-string v0, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjv$zza;->zzTQ()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_37
        0x3 -> :sswitch_50
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

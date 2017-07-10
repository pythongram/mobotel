.class public abstract Lcom/google/android/gms/internal/zzbkg$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzbkg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbkg$zza$zza;
    }
.end annotation


# direct methods
.method public static zzfs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbkg;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbkg;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/zzbkg;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/zzbkg$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbkg$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_40

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    goto :goto_9

    :sswitch_11
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/google/android/gms/internal/zzbko;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbko;

    :goto_2c
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/zzbkg$zza;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzbko;)Lcom/google/android/gms/internal/zzbkf;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_39

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbkf;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_39
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_9

    :cond_3e
    move-object v0, v1

    goto :goto_2c

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_11
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

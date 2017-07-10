.class public final Lcom/google/android/gms/internal/zzaj$zze;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzaj$zze;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzkC:[Lcom/google/android/gms/internal/zzaj$zze;


# instance fields
.field public key:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaj$zze;->zzD()Lcom/google/android/gms/internal/zzaj$zze;

    return-void
.end method

.method public static zzC()[Lcom/google/android/gms/internal/zzaj$zze;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzaj$zze;->zzkC:[Lcom/google/android/gms/internal/zzaj$zze;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzbxr;->zzcuQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzaj$zze;->zzkC:[Lcom/google/android/gms/internal/zzaj$zze;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaj$zze;

    sput-object v0, Lcom/google/android/gms/internal/zzaj$zze;->zzkC:[Lcom/google/android/gms/internal/zzaj$zze;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzaj$zze;->zzkC:[Lcom/google/android/gms/internal/zzaj$zze;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzaj$zze;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzaj$zze;

    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zze;->key:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaj$zze;->key:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zze;->value:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaj$zze;->value:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_24
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaj$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_30

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaj$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_30
    move v0, v1

    goto :goto_5

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaj$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zze;->key:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zze;->value:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_26
    const/4 v0, 0x0

    :goto_27
    add-int/2addr v0, v1

    return v0

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v0

    goto :goto_27
.end method

.method public zzD()Lcom/google/android/gms/internal/zzaj$zze;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zze;->key:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zze;->value:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zze;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zze;->key:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zze;->value:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaj$zze;->zzr(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzaj$zze;

    move-result-object v0

    return-object v0
.end method

.method public zzr(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzaj$zze;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    move-result v0

    sparse-switch v0, :sswitch_data_1c

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zze;->key:I

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zze;->value:I

    goto :goto_0

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_15
    .end sparse-switch
.end method

.method protected zzu()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zze;->key:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zze;->value:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

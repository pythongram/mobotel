.class public final Lcom/google/android/gms/internal/zzauu$zze;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzauu$zze;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbwD:[Lcom/google/android/gms/internal/zzauu$zze;


# instance fields
.field public zzbwE:Ljava/lang/String;

.field public zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

.field public zzbwo:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauu$zze;->zzNr()Lcom/google/android/gms/internal/zzauu$zze;

    return-void
.end method

.method public static zzNq()[Lcom/google/android/gms/internal/zzauu$zze;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwD:[Lcom/google/android/gms/internal/zzauu$zze;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzbxr;->zzcuQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwD:[Lcom/google/android/gms/internal/zzauu$zze;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzauu$zze;

    sput-object v0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwD:[Lcom/google/android/gms/internal/zzauu$zze;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwD:[Lcom/google/android/gms/internal/zzauu$zze;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzauu$zze;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzauu$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    if-nez v2, :cond_3e

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    if-nez v2, :cond_49

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    if-nez v2, :cond_54

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    if-nez v2, :cond_5

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_30
    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_3c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3c
    move v0, v1

    goto :goto_5

    :cond_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_49
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_54
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzauu$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    if-nez v0, :cond_37

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    if-nez v0, :cond_3e

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    if-nez v0, :cond_45

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_35
    :goto_35
    add-int/2addr v0, v1

    return v0

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauu$zzc;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_35
.end method

.method public zzK(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zze;
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

    sparse-switch v0, :sswitch_data_32

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    goto :goto_0

    :sswitch_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauu$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    nop

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_19
        0x1a -> :sswitch_20
    .end sparse-switch
.end method

.method public zzNr()Lcom/google/android/gms/internal/zzauu$zze;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_22
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauu$zze;->zzK(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zze;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    return v0
.end method

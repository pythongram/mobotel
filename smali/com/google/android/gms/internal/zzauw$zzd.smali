.class public final Lcom/google/android/gms/internal/zzauw$zzd;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzauw$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauw$zzd;->zzNE()Lcom/google/android/gms/internal/zzauw$zzd;

    return-void
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzauw$zzd;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzauw$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_22
    iget-object v2, p1, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_2e

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2e
    move v0, v1

    goto :goto_5

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_25
    const/4 v0, 0x0

    :goto_26
    add-int/2addr v0, v1

    return v0

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v0

    goto :goto_26
.end method

.method public zzNE()Lcom/google/android/gms/internal/zzauw$zzd;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/zzauw$zze;->zzNF()[Lcom/google/android/gms/internal/zzauw$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzcuR:I

    return-object p0
.end method

.method public zzS(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauw$zzd;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    move-result v0

    sparse-switch v0, :sswitch_data_4e

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauw$zze;

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3f

    new-instance v3, Lcom/google/android/gms/internal/zzauw$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauw$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    array-length v0, v0

    goto :goto_1a

    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/zzauw$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauw$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    goto :goto_1

    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
    .end sparse-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    array-length v0, v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    aget-object v1, v1, v0

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauw$zzd;->zzS(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauw$zzd;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    array-length v0, v0

    if-lez v0, :cond_22

    const/4 v0, 0x0

    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1f

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    return v1
.end method

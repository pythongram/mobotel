.class public final Lcom/google/android/gms/internal/zzaj$zzb;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzaj$zzb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzkp:[Lcom/google/android/gms/internal/zzaj$zzb;


# instance fields
.field public name:I

.field public zzkq:[I

.field public zzkr:I

.field public zzks:Z

.field public zzkt:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaj$zzb;->zzy()Lcom/google/android/gms/internal/zzaj$zzb;

    return-void
.end method

.method public static zzx()[Lcom/google/android/gms/internal/zzaj$zzb;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkp:[Lcom/google/android/gms/internal/zzaj$zzb;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzbxr;->zzcuQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkp:[Lcom/google/android/gms/internal/zzaj$zzb;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaj$zzb;

    sput-object v0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkp:[Lcom/google/android/gms/internal/zzaj$zzb;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkp:[Lcom/google/android/gms/internal/zzaj$zzb;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzaj$zzb;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzaj$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkr:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaj$zzb;->zzkr:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->name:I

    iget v3, p1, Lcom/google/android/gms/internal/zzaj$zzb;->name:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzks:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzaj$zzb;->zzks:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkt:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzaj$zzb;->zzkt:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_3a
    iget-object v2, p1, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_46

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_46
    move v0, v1

    goto :goto_5

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbxr;->hashCode([I)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkr:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/zzaj$zzb;->name:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzks:Z

    if-eqz v0, :cond_45

    move v0, v1

    :goto_2c
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkt:Z

    if-eqz v3, :cond_47

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_42
    const/4 v0, 0x0

    :goto_43
    add-int/2addr v0, v1

    return v0

    :cond_45
    move v0, v2

    goto :goto_2c

    :cond_47
    move v1, v2

    goto :goto_33

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v0

    goto :goto_43
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkt:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkt:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzg(IZ)V

    :cond_a
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkr:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    array-length v0, v0

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2a
    iget v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->name:I

    if-eqz v0, :cond_34

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->name:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzks:Z

    if-eqz v0, :cond_3e

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzks:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzg(IZ)V

    :cond_3e
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaj$zzb;->zzo(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzaj$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzo(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzaj$zzb;
    .registers 7
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

    sparse-switch v0, :sswitch_data_a2

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeu()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkt:Z

    goto :goto_1

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkr:I

    goto :goto_1

    :sswitch_1d
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    if-nez v0, :cond_43

    move v0, v1

    :goto_28
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_32

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    :goto_32
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_47

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    array-length v0, v0

    goto :goto_28

    :cond_47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    goto :goto_1

    :sswitch_50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zzra(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v2

    move v0, v1

    :goto_5d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeC()I

    move-result v4

    if-lez v4, :cond_69

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_69
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbxl;->zzrc(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    if-nez v2, :cond_87

    move v2, v1

    :goto_71
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_7b

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7b
    :goto_7b
    array-length v4, v0

    if-ge v2, v4, :cond_8b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_87
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    array-length v2, v2

    goto :goto_71

    :cond_8b
    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zzrb(I)V

    goto/16 :goto_1

    :sswitch_92
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->name:I

    goto/16 :goto_1

    :sswitch_9a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeu()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzks:Z

    goto/16 :goto_1

    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1d
        0x1a -> :sswitch_50
        0x20 -> :sswitch_92
        0x30 -> :sswitch_9a
    .end sparse-switch
.end method

.method protected zzu()I
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkt:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkt:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzh(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkr:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    array-length v0, v0

    if-lez v0, :cond_55

    move v0, v1

    :goto_23
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    array-length v3, v3

    if-ge v0, v3, :cond_34

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbxm;->zzrg(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_34
    add-int v0, v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :goto_3c
    iget v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->name:I

    if-eqz v1, :cond_48

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->name:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzks:Z

    if-eqz v1, :cond_54

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzks:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_54
    return v0

    :cond_55
    move v0, v2

    goto :goto_3c
.end method

.method public zzy()Lcom/google/android/gms/internal/zzaj$zzb;
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuW:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkq:[I

    iput v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkr:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->name:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzks:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzkt:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaj$zzb;->zzcuR:I

    return-object p0
.end method

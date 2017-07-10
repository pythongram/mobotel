.class public final Lcom/google/android/gms/internal/zzauu$zza;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzauu$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbwj:[Lcom/google/android/gms/internal/zzauu$zza;


# instance fields
.field public zzbwk:Ljava/lang/Integer;

.field public zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

.field public zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauu$zza;->zzNk()Lcom/google/android/gms/internal/zzauu$zza;

    return-void
.end method

.method public static zzNj()[Lcom/google/android/gms/internal/zzauu$zza;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwj:[Lcom/google/android/gms/internal/zzauu$zza;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzbxr;->zzcuQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwj:[Lcom/google/android/gms/internal/zzauu$zza;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzauu$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwj:[Lcom/google/android/gms/internal/zzauu$zza;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwj:[Lcom/google/android/gms/internal/zzauu$zza;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzauu$zza;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzauu$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    if-nez v2, :cond_42

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_34
    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_40

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_40
    move v0, v1

    goto :goto_5

    :cond_42
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    if-nez v0, :cond_39

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    :cond_37
    :goto_37
    add-int/2addr v0, v1

    return v0

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_37
.end method

.method public zzG(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zza;
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

    sparse-switch v0, :sswitch_data_9a

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    goto :goto_1

    :sswitch_1a
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    if-nez v0, :cond_46

    move v0, v1

    :goto_25
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauu$zze;

    if-eqz v0, :cond_2f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2f
    :goto_2f
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4a

    new-instance v3, Lcom/google/android/gms/internal/zzauu$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauu$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    array-length v0, v0

    goto :goto_25

    :cond_4a
    new-instance v3, Lcom/google/android/gms/internal/zzauu$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauu$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    goto :goto_1

    :sswitch_59
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    if-nez v0, :cond_85

    move v0, v1

    :goto_64
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauu$zzb;

    if-eqz v0, :cond_6e

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6e
    :goto_6e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_89

    new-instance v3, Lcom/google/android/gms/internal/zzauu$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauu$zzb;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    :cond_85
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    array-length v0, v0

    goto :goto_64

    :cond_89
    new-instance v3, Lcom/google/android/gms/internal/zzauu$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauu$zzb;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    goto/16 :goto_1

    nop

    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_59
    .end sparse-switch
.end method

.method public zzNk()Lcom/google/android/gms/internal/zzauu$zza;
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/zzauu$zze;->zzNq()[Lcom/google/android/gms/internal/zzauu$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    invoke-static {}, Lcom/google/android/gms/internal/zzauu$zzb;->zzNl()[Lcom/google/android/gms/internal/zzauu$zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    array-length v0, v0

    if-lez v0, :cond_2b

    move v0, v1

    :goto_19
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    aget-object v2, v2, v0

    if-eqz v2, :cond_28

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    array-length v0, v0

    if-lez v0, :cond_46

    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    array-length v0, v0

    if-ge v1, v0, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    aget-object v0, v0, v1

    if-eqz v0, :cond_43

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_46
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauu$zza;->zzG(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zza;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    array-length v2, v2

    if-lez v2, :cond_35

    move v2, v0

    move v0, v1

    :goto_20
    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    array-length v3, v3

    if-ge v0, v3, :cond_34

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    aget-object v3, v3, v0

    if-eqz v3, :cond_31

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_34
    move v0, v2

    :cond_35
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    array-length v2, v2

    if-lez v2, :cond_52

    :goto_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    array-length v2, v2

    if-ge v1, v2, :cond_52

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4f

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_52
    return v0
.end method

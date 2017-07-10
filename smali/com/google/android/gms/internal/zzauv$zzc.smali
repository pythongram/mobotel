.class public final Lcom/google/android/gms/internal/zzauv$zzc;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzauv$zzc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbwS:[Lcom/google/android/gms/internal/zzauv$zzc;


# instance fields
.field public value:Ljava/lang/String;

.field public zzaB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauv$zzc;->zzNx()Lcom/google/android/gms/internal/zzauv$zzc;

    return-void
.end method

.method public static zzNw()[Lcom/google/android/gms/internal/zzauv$zzc;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzauv$zzc;->zzbwS:[Lcom/google/android/gms/internal/zzauv$zzc;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzbxr;->zzcuQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzauv$zzc;->zzbwS:[Lcom/google/android/gms/internal/zzauv$zzc;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzauv$zzc;

    sput-object v0, Lcom/google/android/gms/internal/zzauv$zzc;->zzbwS:[Lcom/google/android/gms/internal/zzauv$zzc;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzauv$zzc;->zzbwS:[Lcom/google/android/gms/internal/zzauv$zzc;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzauv$zzc;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzauv$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    if-nez v2, :cond_36

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    if-nez v2, :cond_41

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_28
    iget-object v2, p1, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_34

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_34
    move v0, v1

    goto :goto_5

    :cond_36
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_41
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    if-nez v0, :cond_2f

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    if-nez v0, :cond_36

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_2d
    :goto_2d
    add-int/2addr v0, v1

    return v0

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_2d
.end method

.method public zzNx()Lcom/google/android/gms/internal/zzauv$zzc;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzcuR:I

    return-object p0
.end method

.method public zzO(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauv$zzc;
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
    .end sparse-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_14
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauv$zzc;->zzO(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauv$zzc;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    return v0
.end method

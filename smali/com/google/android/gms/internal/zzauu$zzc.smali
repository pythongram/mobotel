.class public final Lcom/google/android/gms/internal/zzauu$zzc;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzauu$zzc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbwt:[Lcom/google/android/gms/internal/zzauu$zzc;


# instance fields
.field public zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

.field public zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

.field public zzbww:Ljava/lang/Boolean;

.field public zzbwx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauu$zzc;->zzNo()Lcom/google/android/gms/internal/zzauu$zzc;

    return-void
.end method

.method public static zzNn()[Lcom/google/android/gms/internal/zzauu$zzc;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwt:[Lcom/google/android/gms/internal/zzauu$zzc;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzbxr;->zzcuQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwt:[Lcom/google/android/gms/internal/zzauu$zzc;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzauu$zzc;

    sput-object v0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwt:[Lcom/google/android/gms/internal/zzauu$zzc;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwt:[Lcom/google/android/gms/internal/zzauu$zzc;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzauu$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    if-nez v2, :cond_46

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v2, :cond_51

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    if-nez v2, :cond_5c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    if-nez v2, :cond_67

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_2c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_72

    :cond_38
    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_44

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_44
    move v0, v1

    goto :goto_5

    :cond_46
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzauu$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_51
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzauu$zzd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_5c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5

    :cond_67
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_5

    :cond_72
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    if-nez v0, :cond_3f

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v0, :cond_46

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    if-nez v0, :cond_4d

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    if-nez v0, :cond_54

    move v0, v1

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5b

    :cond_3d
    :goto_3d
    add-int/2addr v0, v1

    return v0

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauu$zzf;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauu$zzd;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2e

    :cond_5b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_3d
.end method

.method public zzI(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zzc;
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

    sparse-switch v0, :sswitch_data_42

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    if-nez v0, :cond_19

    new-instance v0, Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauu$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :sswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauu$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_0

    :sswitch_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1f
        0x18 -> :sswitch_30
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public zzNo()Lcom/google/android/gms/internal/zzauu$zzc;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzg(IZ)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_2c
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauu$zzc;->zzI(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zzc;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    if-eqz v1, :cond_38

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    return v0
.end method

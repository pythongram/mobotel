.class public final Lcom/google/android/gms/internal/zzauw$zzg;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzauw$zzg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbxI:[Lcom/google/android/gms/internal/zzauw$zzg;


# instance fields
.field public name:Ljava/lang/String;

.field public zzaGV:Ljava/lang/String;

.field public zzbwe:Ljava/lang/Float;

.field public zzbwf:Ljava/lang/Double;

.field public zzbxJ:Ljava/lang/Long;

.field public zzbxc:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauw$zzg;->zzNJ()Lcom/google/android/gms/internal/zzauw$zzg;

    return-void
.end method

.method public static zzNI()[Lcom/google/android/gms/internal/zzauw$zzg;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxI:[Lcom/google/android/gms/internal/zzauw$zzg;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzbxr;->zzcuQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxI:[Lcom/google/android/gms/internal/zzauw$zzg;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzauw$zzg;

    sput-object v0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxI:[Lcom/google/android/gms/internal/zzauw$zzg;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxI:[Lcom/google/android/gms/internal/zzauw$zzg;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzauw$zzg;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzauw$zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    if-nez v2, :cond_56

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    if-nez v2, :cond_61

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    if-nez v2, :cond_6c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    if-nez v2, :cond_77

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    if-nez v2, :cond_5

    :cond_2c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    if-nez v2, :cond_82

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    if-nez v2, :cond_5

    :cond_34
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    if-nez v2, :cond_8e

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    if-nez v2, :cond_5

    :cond_3c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9a

    :cond_48
    iget-object v2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_54

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_54
    move v0, v1

    goto :goto_5

    :cond_56
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_61
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_6c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5

    :cond_77
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_5

    :cond_82
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto/16 :goto_5

    :cond_8e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto/16 :goto_5

    :cond_9a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbxp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_5
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    if-nez v0, :cond_4f

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    if-nez v0, :cond_56

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    if-nez v0, :cond_5d

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    if-nez v0, :cond_64

    move v0, v1

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    if-nez v0, :cond_6b

    move v0, v1

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    if-nez v0, :cond_72

    move v0, v1

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_79

    :cond_4d
    :goto_4d
    add-int/2addr v0, v1

    return v0

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_64
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_2e

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_36

    :cond_72
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    goto :goto_3e

    :cond_79
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_4d
.end method

.method public zzNJ()Lcom/google/android/gms/internal/zzauw$zzg;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzcuR:I

    return-object p0
.end method

.method public zzV(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauw$zzg;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    move-result v0

    sparse-switch v0, :sswitch_data_48

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    goto :goto_0

    :sswitch_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    goto :goto_0

    :sswitch_32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    goto :goto_0

    :sswitch_3d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    goto :goto_0

    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_19
        0x1a -> :sswitch_20
        0x20 -> :sswitch_27
        0x2d -> :sswitch_32
        0x31 -> :sswitch_3d
    .end sparse-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    if-eqz v0, :cond_3e

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzc(IF)V

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    if-eqz v0, :cond_4c

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zza(ID)V

    :cond_4c
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauw$zzg;->zzV(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauw$zzg;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    if-eqz v1, :cond_3c

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    if-eqz v1, :cond_4c

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwe:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzd(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    if-eqz v1, :cond_5c

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5c
    return v0
.end method

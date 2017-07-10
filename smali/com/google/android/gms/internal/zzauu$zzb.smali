.class public final Lcom/google/android/gms/internal/zzauu$zzb;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzauu$zzb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbwn:[Lcom/google/android/gms/internal/zzauu$zzb;


# instance fields
.field public zzbwo:Ljava/lang/Integer;

.field public zzbwp:Ljava/lang/String;

.field public zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

.field public zzbwr:Ljava/lang/Boolean;

.field public zzbws:Lcom/google/android/gms/internal/zzauu$zzd;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauu$zzb;->zzNm()Lcom/google/android/gms/internal/zzauu$zzb;

    return-void
.end method

.method public static zzNl()[Lcom/google/android/gms/internal/zzauu$zzb;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwn:[Lcom/google/android/gms/internal/zzauu$zzb;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzbxr;->zzcuQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwn:[Lcom/google/android/gms/internal/zzauu$zzb;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzauu$zzb;

    sput-object v0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwn:[Lcom/google/android/gms/internal/zzauu$zzb;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwn:[Lcom/google/android/gms/internal/zzauu$zzb;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzauu$zzb;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzauu$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    if-nez v2, :cond_50

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    if-nez v2, :cond_5b

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    if-nez v2, :cond_66

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    :cond_2e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v2, :cond_71

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v2, :cond_5

    :cond_36
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7c

    :cond_42
    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_4e

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4e
    move v0, v1

    goto :goto_5

    :cond_50
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_5b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_66
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_5

    :cond_71
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzauu$zzd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_5

    :cond_7c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    if-nez v0, :cond_48

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    if-nez v0, :cond_4f

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    if-nez v0, :cond_56

    move v0, v1

    :goto_2f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v0, :cond_5d

    move v0, v1

    :goto_37
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_64

    :cond_46
    :goto_46
    add-int/2addr v0, v1

    return v0

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauu$zzd;->hashCode()I

    move-result v0

    goto :goto_37

    :cond_64
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_46
.end method

.method public zzH(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zzb;
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

    sparse-switch v0, :sswitch_data_7c

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

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    goto :goto_1

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    goto :goto_1

    :sswitch_21
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    if-nez v0, :cond_4d

    move v0, v1

    :goto_2c
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauu$zzc;

    if-eqz v0, :cond_36

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    :goto_36
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_51

    new-instance v3, Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauu$zzc;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v0, v0

    goto :goto_2c

    :cond_51
    new-instance v3, Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauu$zzc;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    goto :goto_1

    :sswitch_60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v0, :cond_76

    new-instance v0, Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauu$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    goto :goto_1

    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_21
        0x20 -> :sswitch_60
        0x2a -> :sswitch_6b
    .end sparse-switch
.end method

.method public zzNm()Lcom/google/android/gms/internal/zzauu$zzb;
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzauu$zzc;->zzNn()[Lcom/google/android/gms/internal/zzauu$zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v0, v0

    if-lez v0, :cond_34

    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    aget-object v1, v1, v0

    if-eqz v1, :cond_31

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    if-eqz v0, :cond_42

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzg(IZ)V

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v0, :cond_4c

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauu$zzb;->zzH(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zzb;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v1, v1

    if-lez v1, :cond_42

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v2, v2

    if-ge v0, v2, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3e

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_41
    move v0, v1

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    if-eqz v1, :cond_52

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwr:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_52
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v1, :cond_5e

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5e
    return v0
.end method

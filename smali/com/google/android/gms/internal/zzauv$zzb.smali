.class public final Lcom/google/android/gms/internal/zzauv$zzb;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzauv$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbqL:Ljava/lang/String;

.field public zzbwN:Ljava/lang/Long;

.field public zzbwO:Ljava/lang/Integer;

.field public zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

.field public zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

.field public zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauv$zzb;->zzNv()Lcom/google/android/gms/internal/zzauv$zzb;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzauv$zzb;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzauv$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    if-nez v2, :cond_5c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    if-nez v2, :cond_67

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    if-nez v2, :cond_72

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    if-nez v2, :cond_5

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7d

    :cond_4e
    iget-object v2, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_5a

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_5a
    move v0, v1

    goto :goto_5

    :cond_5c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_67
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_72
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5

    :cond_7d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    if-nez v0, :cond_52

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    if-nez v0, :cond_59

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    if-nez v0, :cond_60

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_67

    :cond_50
    :goto_50
    add-int/2addr v0, v1

    return v0

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_67
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_50
.end method

.method public zzN(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauv$zzb;
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

    sparse-switch v0, :sswitch_data_ec

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaer()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    goto :goto_1

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    goto :goto_1

    :sswitch_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    goto :goto_1

    :sswitch_2c
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    if-nez v0, :cond_58

    move v0, v1

    :goto_37
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauv$zzc;

    if-eqz v0, :cond_41

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_41
    :goto_41
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5c

    new-instance v3, Lcom/google/android/gms/internal/zzauv$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauv$zzc;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_58
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    array-length v0, v0

    goto :goto_37

    :cond_5c
    new-instance v3, Lcom/google/android/gms/internal/zzauv$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauv$zzc;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    goto :goto_1

    :sswitch_6b
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    if-nez v0, :cond_97

    move v0, v1

    :goto_76
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauv$zza;

    if-eqz v0, :cond_80

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_80
    :goto_80
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9b

    new-instance v3, Lcom/google/android/gms/internal/zzauv$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauv$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_97
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    array-length v0, v0

    goto :goto_76

    :cond_9b
    new-instance v3, Lcom/google/android/gms/internal/zzauv$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauv$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    goto/16 :goto_1

    :sswitch_ab
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    if-nez v0, :cond_d7

    move v0, v1

    :goto_b6
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauu$zza;

    if-eqz v0, :cond_c0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c0
    :goto_c0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_db

    new-instance v3, Lcom/google/android/gms/internal/zzauu$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauu$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    :cond_d7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    array-length v0, v0

    goto :goto_b6

    :cond_db
    new-instance v3, Lcom/google/android/gms/internal/zzauu$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauu$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbxl;->zza(Lcom/google/android/gms/internal/zzbxt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    goto/16 :goto_1

    nop

    :sswitch_data_ec
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1a
        0x18 -> :sswitch_21
        0x22 -> :sswitch_2c
        0x2a -> :sswitch_6b
        0x32 -> :sswitch_ab
    .end sparse-switch
.end method

.method public zzNv()Lcom/google/android/gms/internal/zzauv$zzb;
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/zzauv$zzc;->zzNw()[Lcom/google/android/gms/internal/zzauv$zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    invoke-static {}, Lcom/google/android/gms/internal/zzauv$zza;->zzNt()[Lcom/google/android/gms/internal/zzauv$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzauu$zza;->zzNj()[Lcom/google/android/gms/internal/zzauu$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzcuR:I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    if-eqz v0, :cond_27

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    array-length v0, v0

    if-lez v0, :cond_43

    move v0, v1

    :goto_31
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    array-length v2, v2

    if-ge v0, v2, :cond_43

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    aget-object v2, v2, v0

    if-eqz v2, :cond_40

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    array-length v0, v0

    if-lez v0, :cond_5f

    move v0, v1

    :goto_4d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_5f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5c

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    array-length v0, v0

    if-lez v0, :cond_7a

    :goto_68
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    array-length v0, v0

    if-ge v1, v0, :cond_7a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    aget-object v0, v0, v1

    if-eqz v0, :cond_77

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzbxm;->zza(ILcom/google/android/gms/internal/zzbxt;)V

    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_7a
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauv$zzb;->zzN(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauv$zzb;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .registers 7

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzbxm;->zzf(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    if-eqz v2, :cond_21

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    if-eqz v2, :cond_31

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwO:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_31
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    array-length v2, v2

    if-lez v2, :cond_51

    move v2, v0

    move v0, v1

    :goto_3c
    iget-object v3, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    array-length v3, v3

    if-ge v0, v3, :cond_50

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4d

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_50
    move v0, v2

    :cond_51
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    array-length v2, v2

    if-lez v2, :cond_71

    move v2, v0

    move v0, v1

    :goto_5c
    iget-object v3, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_70

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6d

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_70
    move v0, v2

    :cond_71
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    array-length v2, v2

    if-lez v2, :cond_8e

    :goto_7a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    array-length v2, v2

    if-ge v1, v2, :cond_8e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    aget-object v2, v2, v1

    if-eqz v2, :cond_8b

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(ILcom/google/android/gms/internal/zzbxt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    :cond_8e
    return v0
.end method

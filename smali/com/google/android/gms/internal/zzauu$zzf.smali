.class public final Lcom/google/android/gms/internal/zzauu$zzf;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzauu$zzf;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbwG:Ljava/lang/Integer;

.field public zzbwH:Ljava/lang/String;

.field public zzbwI:Ljava/lang/Boolean;

.field public zzbwJ:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauu$zzf;->zzNs()Lcom/google/android/gms/internal/zzauu$zzf;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzauu$zzf;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzauu$zzf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    if-nez v2, :cond_48

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    if-nez v2, :cond_53

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    if-nez v2, :cond_5e

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_3a
    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_46

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_46
    move v0, v1

    goto :goto_5

    :cond_48
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_53
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_5e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5

    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    if-nez v0, :cond_40

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    if-nez v0, :cond_47

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    if-nez v0, :cond_4e

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_3e
    :goto_3e
    add-int/2addr v0, v1

    return v0

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_16

    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_55
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_3e
.end method

.method public zzL(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zzf;
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

    sparse-switch v0, :sswitch_data_64

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    packed-switch v0, :pswitch_data_7a

    goto :goto_1

    :pswitch_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    goto :goto_1

    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    goto :goto_1

    :sswitch_25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_30
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    if-nez v0, :cond_56

    move v0, v1

    :goto_3b
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_45
    :goto_45
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3b

    :cond_5a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    goto :goto_1

    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1e
        0x18 -> :sswitch_25
        0x22 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public zzNs()Lcom/google/android/gms/internal/zzauu$zzf;
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcvb:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzg(IZ)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_42

    const/4 v0, 0x0

    :goto_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_42

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3f

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_42
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauu$zzf;->zzL(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zzf;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    if-eqz v2, :cond_21

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    if-eqz v2, :cond_31

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbxm;->zzh(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_31
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_55

    move v2, v1

    move v3, v1

    :goto_3c
    iget-object v4, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_51

    iget-object v4, p0, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4e

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbxm;->zzkb(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_51
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_55
    return v0
.end method

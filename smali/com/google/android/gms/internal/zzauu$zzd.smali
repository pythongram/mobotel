.class public final Lcom/google/android/gms/internal/zzauu$zzd;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzauu$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbwA:Ljava/lang/String;

.field public zzbwB:Ljava/lang/String;

.field public zzbwC:Ljava/lang/String;

.field public zzbwy:Ljava/lang/Integer;

.field public zzbwz:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauu$zzd;->zzNp()Lcom/google/android/gms/internal/zzauu$zzd;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzauu$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    if-nez v2, :cond_4e

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    if-nez v2, :cond_59

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    if-nez v2, :cond_64

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    if-nez v2, :cond_6f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_2c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    if-nez v2, :cond_7a

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_34
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_85

    :cond_40
    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_4c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4c
    move v0, v1

    goto :goto_5

    :cond_4e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_59
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_64
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5

    :cond_6f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_5

    :cond_7a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_5

    :cond_85
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    if-nez v0, :cond_47

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    if-nez v0, :cond_4e

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    if-nez v0, :cond_55

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    if-nez v0, :cond_5c

    move v0, v1

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    if-nez v0, :cond_63

    move v0, v1

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxp;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_45
    :goto_45
    add-int/2addr v0, v1

    return v0

    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_16

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2e

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_36

    :cond_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxp;->hashCode()I

    move-result v1

    goto :goto_45
.end method

.method public zzJ(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zzd;
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

    sparse-switch v0, :sswitch_data_3e

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    goto :goto_0

    :pswitch_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeu()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    goto :goto_0

    :sswitch_2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    goto :goto_0

    :sswitch_36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1d
        0x1a -> :sswitch_28
        0x22 -> :sswitch_2f
        0x2a -> :sswitch_36
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public zzNp()Lcom/google/android/gms/internal/zzauu$zzd;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuI:Lcom/google/android/gms/internal/zzbxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzcuR:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzg(IZ)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    if-eqz v0, :cond_3a

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzq(ILjava/lang/String;)V

    :cond_3a
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzauu$zzd;->zzJ(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzauu$zzd;

    move-result-object v0

    return-object v0
.end method

.method protected zzu()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    if-eqz v1, :cond_24

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzh(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    if-eqz v1, :cond_30

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    if-eqz v1, :cond_3c

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    if-eqz v1, :cond_48

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_48
    return v0
.end method

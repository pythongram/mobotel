.class public final Lcom/google/android/gms/internal/zzag$zzf;
.super Lcom/google/android/gms/internal/zzbxn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxn",
        "<",
        "Lcom/google/android/gms/internal/zzag$zzf;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcA:[[B

.field public zzcB:Ljava/lang/Integer;

.field public zzcC:Ljava/lang/Integer;

.field public zzcv:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxn;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcvc:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcv:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcB:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcC:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcuR:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbxm;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    array-length v0, v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbxm;->zzb(I[B)V

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcv:[B

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcv:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzb(I[B)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcB:Ljava/lang/Integer;

    if-eqz v0, :cond_34

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcB:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcC:Ljava/lang/Integer;

    if-eqz v0, :cond_42

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcC:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzJ(II)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzag$zzf;->zzm(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzag$zzf;

    move-result-object v0

    return-object v0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzag$zzf;
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

    sparse-switch v0, :sswitch_data_68

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxn;->zza(Lcom/google/android/gms/internal/zzbxl;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxw;->zzb(Lcom/google/android/gms/internal/zzbxl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    if-nez v0, :cond_35

    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_39

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaeo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    array-length v0, v0

    goto :goto_1a

    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    goto :goto_1

    :sswitch_42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcv:[B

    goto :goto_1

    :sswitch_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    packed-switch v0, :pswitch_data_7e

    goto :goto_1

    :pswitch_51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcB:Ljava/lang/Integer;

    goto :goto_1

    :sswitch_58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxl;->zzaes()I

    move-result v0

    packed-switch v0, :pswitch_data_86

    goto :goto_1

    :pswitch_60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcC:Ljava/lang/Integer;

    goto :goto_1

    nop

    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_42
        0x18 -> :sswitch_49
        0x20 -> :sswitch_58
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_51
        :pswitch_51
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method protected zzu()I
    .registers 6

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbxn;->zzu()I

    move-result v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    array-length v1, v1

    if-lez v1, :cond_57

    move v1, v0

    move v2, v0

    :goto_10
    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    array-length v4, v4

    if-ge v0, v4, :cond_25

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcA:[[B

    aget-object v4, v4, v0

    if-eqz v4, :cond_22

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbxm;->zzai([B)I

    move-result v4

    add-int/2addr v1, v4

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_25
    add-int v0, v3, v1

    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    :goto_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcv:[B

    if-eqz v1, :cond_36

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcv:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_36
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcB:Ljava/lang/Integer;

    if-eqz v1, :cond_46

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcB:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_46
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcC:Ljava/lang/Integer;

    if-eqz v1, :cond_56

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zzf;->zzcC:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zzL(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_56
    return v0

    :cond_57
    move v0, v3

    goto :goto_2a
.end method

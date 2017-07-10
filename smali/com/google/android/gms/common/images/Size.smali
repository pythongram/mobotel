.class public final Lcom/google/android/gms/common/images/Size;
.super Ljava/lang/Object;


# instance fields
.field private final zzrC:I

.field private final zzrD:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/images/Size;->zzrC:I

    iput p2, p0, Lcom/google/android/gms/common/images/Size;->zzrD:I

    return-void
.end method

.method public static parseSize(Ljava/lang/String;)Lcom/google/android/gms/common/images/Size;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_18

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_18
    if-gez v0, :cond_1f

    invoke-static {p0}, Lcom/google/android/gms/common/images/Size;->zzdi(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_1f
    :try_start_1f
    new-instance v1, Lcom/google/android/gms/common/images/Size;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/images/Size;-><init>(II)V
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_37} :catch_38

    return-object v1

    :catch_38
    move-exception v0

    invoke-static {p0}, Lcom/google/android/gms/common/images/Size;->zzdi(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0
.end method

.method private static zzdi(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid Size: \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-ne p0, p1, :cond_9

    move v1, v0

    goto :goto_4

    :cond_9
    instance-of v2, p1, Lcom/google/android/gms/common/images/Size;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/google/android/gms/common/images/Size;

    iget v2, p0, Lcom/google/android/gms/common/images/Size;->zzrC:I

    iget v3, p1, Lcom/google/android/gms/common/images/Size;->zzrC:I

    if-ne v2, v3, :cond_1d

    iget v2, p0, Lcom/google/android/gms/common/images/Size;->zzrD:I

    iget v3, p1, Lcom/google/android/gms/common/images/Size;->zzrD:I

    if-ne v2, v3, :cond_1d

    :goto_1b
    move v1, v0

    goto :goto_4

    :cond_1d
    move v0, v1

    goto :goto_1b
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/images/Size;->zzrD:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/images/Size;->zzrC:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/common/images/Size;->zzrD:I

    iget v1, p0, Lcom/google/android/gms/common/images/Size;->zzrC:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/google/android/gms/common/images/Size;->zzrC:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/google/android/gms/common/images/Size;->zzrC:I

    iget v1, p0, Lcom/google/android/gms/common/images/Size;->zzrD:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class abstract Lcom/google/android/gms/common/zzf$zza;
.super Lcom/google/android/gms/common/internal/zzt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zza"
.end annotation


# instance fields
.field private zzays:I


# direct methods
.method protected constructor <init>([B)V
    .registers 9

    const/16 v6, 0x19

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzt$zza;-><init>()V

    array-length v1, p1

    if-eq v1, v6, :cond_65

    const-string v1, "GoogleCertificates"

    array-length v2, p1

    array-length v3, p1

    invoke-static {p1, v0, v3, v0}, Lcom/google/android/gms/common/util/zzn;->zza([BIIZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cert hash data has incorrect length ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1, v0, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    array-length v1, p1

    if-ne v1, v6, :cond_4c

    const/4 v0, 0x1

    :cond_4c
    array-length v1, p1

    const/16 v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "cert hash data has incorrect length. length="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    :cond_65
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/zzf$zza;->zzays:I

    return-void
.end method

.method protected static zzdc(Ljava/lang/String;)[B
    .registers 3

    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/google/android/gms/common/internal/zzt;

    if-nez v0, :cond_9

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    :try_start_9
    check-cast p1, Lcom/google/android/gms/common/internal/zzt;

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzt;->zzvb()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzf$zza;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_17

    move v0, v1

    goto :goto_8

    :cond_17
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzt;->zzva()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_8

    :cond_1f
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzf$zza;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2c} :catch_2e

    move-result v0

    goto :goto_8

    :catch_2e
    move-exception v0

    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to get Google certificates from remote"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_8
.end method

.method abstract getBytes()[B
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/zzf$zza;->zzays:I

    return v0
.end method

.method public zzva()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzf$zza;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public zzvb()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzf$zza;->hashCode()I

    move-result v0

    return v0
.end method

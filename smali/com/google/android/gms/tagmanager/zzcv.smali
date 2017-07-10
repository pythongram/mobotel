.class Lcom/google/android/gms/tagmanager/zzcv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzp$zzf;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbEU:Ljava/lang/String;

.field private zzbHt:Lcom/google/android/gms/tagmanager/zzbn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzbn",
            "<",
            "Lcom/google/android/gms/internal/zzbjd$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbtI:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcv;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbEU:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbtI:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private zzM([B)Lcom/google/android/gms/internal/zzbjf$zzc;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaj$zzf;->zzf([B)Lcom/google/android/gms/internal/zzaj$zzf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbjf;->zzb(Lcom/google/android/gms/internal/zzaj$zzf;)Lcom/google/android/gms/internal/zzbjf$zzc;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v2, "The container was successfully loaded from the resource (using binary file)"

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/zzbxs; {:try_start_1 .. :try_end_10} :catch_11
    .catch Lcom/google/android/gms/internal/zzbjf$zzg; {:try_start_1 .. :try_end_10} :catch_19

    :cond_10
    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const-string v0, "The resource file is corrupted. The container cannot be extracted from the binary file"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_10

    :catch_19
    move-exception v0

    const-string v0, "The resource file is invalid. The container from the binary file is invalid"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_10
.end method

.method private zza(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/internal/zzbjf$zzc;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbh;->zzhl(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbjf$zzc;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_13

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    const-string v1, "Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format."

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbf(Ljava/lang/String;)V

    goto :goto_b

    :catch_13
    move-exception v1

    const-string v1, "Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn\'t contain a JSON container"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private zzd(Lcom/google/android/gms/internal/zzbjd$zza;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbjd$zza;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbjd$zza;->zzbNf:Lcom/google/android/gms/internal/zzaj$zzj;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource and SupplementedResource are NULL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method


# virtual methods
.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbtI:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzQp()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbtI:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcv$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzcv$1;-><init>(Lcom/google/android/gms/tagmanager/zzcv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method zzRm()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string v0, "Attempting to load resource from disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzRe()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->zzRf()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHi:Lcom/google/android/gms/tagmanager/zzcj$zza;

    if-eq v0, v1, :cond_29

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzRe()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->zzRf()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHj:Lcom/google/android/gms/tagmanager/zzcj$zza;

    if-ne v0, v1, :cond_41

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbEU:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzRe()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzcj;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGI:Lcom/google/android/gms/tagmanager/zzbn$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbn;->zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V

    :goto_40
    return-void

    :cond_41
    :try_start_41
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcv;->zzRn()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_4a} :catch_6b

    :try_start_4a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbjf;->zzc(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbjd$zza;->zzQ([B)Lcom/google/android/gms/internal/zzbjd$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcv;->zzd(Lcom/google/android/gms/internal/zzbjd$zza;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/zzbn;->onSuccess(Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_62} :catch_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_62} :catch_98
    .catchall {:try_start_4a .. :try_end_62} :catchall_b0

    :try_start_62
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_79

    :goto_65
    const-string v0, "The Disk resource was successfully read."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    goto :goto_40

    :catch_6b
    move-exception v0

    const-string v0, "Failed to find the resource in the disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGI:Lcom/google/android/gms/tagmanager/zzbn$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbn;->zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V

    goto :goto_40

    :catch_79
    move-exception v0

    const-string v0, "Error closing stream for reading resource from disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    goto :goto_65

    :catch_80
    move-exception v0

    :try_start_81
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGJ:Lcom/google/android/gms/tagmanager/zzbn$zza;

    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzbn;->zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V

    const-string v0, "Failed to read the resource from disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_81 .. :try_end_8d} :catchall_b0

    :try_start_8d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_65

    :catch_91
    move-exception v0

    const-string v0, "Error closing stream for reading resource from disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    goto :goto_65

    :catch_98
    move-exception v0

    :try_start_99
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGJ:Lcom/google/android/gms/tagmanager/zzbn$zza;

    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzbn;->zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V

    const-string v0, "Failed to read the resource from disk. The resource is inconsistent"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_b0

    :try_start_a5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_65

    :catch_a9
    move-exception v0

    const-string v0, "Error closing stream for reading resource from disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    goto :goto_65

    :catchall_b0
    move-exception v0

    :try_start_b1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    :goto_b4
    throw v0

    :catch_b5
    move-exception v1

    const-string v1, "Error closing stream for reading resource from disk"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    goto :goto_b4
.end method

.method zzRn()Ljava/io/File;
    .registers 5

    const-string v0, "resource_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbEU:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcv;->mContext:Landroid/content/Context;

    const-string v2, "google_tagmanager"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzbn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzbn",
            "<",
            "Lcom/google/android/gms/internal/zzbjd$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbjd$zza;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->zzbtI:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcv$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzcv$2;-><init>(Lcom/google/android/gms/tagmanager/zzcv;Lcom/google/android/gms/internal/zzbjd$zza;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method zzc(Lcom/google/android/gms/internal/zzbjd$zza;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcv;->zzRn()Ljava/io/File;

    move-result-object v1

    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_16

    :try_start_a
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_24
    .catchall {:try_start_a .. :try_end_11} :catchall_38

    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_1d

    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :catch_16
    move-exception v1

    const-string v1, "Error opening resource file for writing"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    goto :goto_15

    :catch_1d
    move-exception v0

    const-string v0, "error closing stream for writing resource to disk"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    goto :goto_14

    :catch_24
    move-exception v3

    :try_start_25
    const-string v3, "Error writing resource to disk. Removing resource from disk."

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_38

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_15

    :catch_31
    move-exception v1

    const-string v1, "error closing stream for writing resource to disk"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    goto :goto_15

    :catchall_38
    move-exception v0

    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    :goto_3c
    throw v0

    :catch_3d
    move-exception v1

    const-string v1, "error closing stream for writing resource to disk"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public zznz(I)Lcom/google/android/gms/internal/zzbjf$zzc;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_a} :catch_5d

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcv;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x42

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to load a container from the resource ID "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    :try_start_49
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbjf;->zzc(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/zzcv;->zza(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/internal/zzbjf$zzc;

    move-result-object v0

    if-eqz v0, :cond_78

    const-string v2, "The container was successfully loaded from the resource (using JSON file format)"

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_5c} :catch_81

    :goto_5c
    return-object v0

    :catch_5d
    move-exception v0

    const/16 v0, 0x62

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to load the container. No default container resource found with the resource ID "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5c

    :cond_78
    :try_start_78
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcv;->zzM([B)Lcom/google/android/gms/internal/zzbjf$zzc;
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7f} :catch_81

    move-result-object v0

    goto :goto_5c

    :catch_81
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error reading the default container with resource ID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5c
.end method

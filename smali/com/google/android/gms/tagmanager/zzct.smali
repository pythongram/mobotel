.class Lcom/google/android/gms/tagmanager/zzct;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbEU:Ljava/lang/String;

.field private volatile zzbFs:Ljava/lang/String;

.field private final zzbHr:Lcom/google/android/gms/internal/zzbjj;

.field private final zzbHs:Ljava/lang/String;

.field private zzbHt:Lcom/google/android/gms/tagmanager/zzbn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzbn",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zzj;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbHu:Lcom/google/android/gms/tagmanager/zzt;

.field private volatile zzbHv:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzbjj;Lcom/google/android/gms/tagmanager/zzt;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzct;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHr:Lcom/google/android/gms/internal/zzbjj;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbEU:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHu:Lcom/google/android/gms/tagmanager/zzt;

    const-string v0, "/r?id="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbFs:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHv:Ljava/lang/String;

    return-void

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzt;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzbjj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjj;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/tagmanager/zzct;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzbjj;Lcom/google/android/gms/tagmanager/zzt;)V

    return-void
.end method

.method private zzRh()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_16
    const-string v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method private zzRi()V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzct;->zzRh()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGI:Lcom/google/android/gms/tagmanager/zzbn$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbn;->zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V

    :goto_d
    return-void

    :cond_e
    const-string v0, "Start loading resource from network ..."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzct;->zzRj()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHr:Lcom/google/android/gms/internal/zzbjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbjj;->zzTF()Lcom/google/android/gms/internal/zzbji;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_1e
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/zzbji;->zzhX(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_21} :catch_82
    .catch Lcom/google/android/gms/internal/zzbjk; {:try_start_1e .. :try_end_21} :catch_ca
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_f2
    .catchall {:try_start_1e .. :try_end_21} :catchall_e7

    move-result-object v0

    :goto_22
    :try_start_22
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbjf;->zzc(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaj$zzj;->zzg([B)Lcom/google/android/gms/internal/zzaj$zzj;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Successfully loaded supplemented resource: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzaj$zzj;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    if-nez v0, :cond_74

    iget-object v0, v1, Lcom/google/android/gms/internal/zzaj$zzj;->zzlq:[Lcom/google/android/gms/internal/zzaj$zzi;

    array-length v0, v0

    if-nez v0, :cond_74

    const-string v4, "No change for container: "

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbEU:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_13a

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_71
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbn;->onSuccess(Ljava/lang/Object;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_79} :catch_141
    .catchall {:try_start_22 .. :try_end_79} :catchall_e7

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbji;->close()V

    const-string v0, "Load resource from network finished."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    goto :goto_d

    :catch_82
    move-exception v0

    :try_start_83
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbEU:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No data is retrieved from the given url: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure container_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is correct."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGK:Lcom/google/android/gms/tagmanager/zzbn$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbn;->zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V
    :try_end_c5
    .catchall {:try_start_83 .. :try_end_c5} :catchall_e7

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbji;->close()V

    goto/16 :goto_d

    :catch_ca
    move-exception v1

    :try_start_cb
    const-string v4, "Error when loading resource for url: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_ec

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_db
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    sget-object v4, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGL:Lcom/google/android/gms/tagmanager/zzbn$zza;

    invoke-interface {v1, v4}, Lcom/google/android/gms/tagmanager/zzbn;->zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V
    :try_end_e5
    .catchall {:try_start_cb .. :try_end_e5} :catchall_e7

    goto/16 :goto_22

    :catchall_e7
    move-exception v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbji;->close()V

    throw v0

    :cond_ec
    :try_start_ec
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_db

    :catch_f2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error when loading resources from url: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGJ:Lcom/google/android/gms/tagmanager/zzbn$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbn;->zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V
    :try_end_135
    .catchall {:try_start_ec .. :try_end_135} :catchall_e7

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbji;->close()V

    goto/16 :goto_d

    :cond_13a
    :try_start_13a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13f} :catch_141
    .catchall {:try_start_13a .. :try_end_13f} :catchall_e7

    goto/16 :goto_71

    :catch_141
    move-exception v0

    :try_start_142
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error when parsing downloaded resources from url: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGK:Lcom/google/android/gms/tagmanager/zzbn$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbn;->zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V
    :try_end_184
    .catchall {:try_start_142 .. :try_end_184} :catchall_e7

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbji;->close()V

    goto/16 :goto_d
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzct;->zzRi()V

    return-void
.end method

.method zzRj()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHu:Lcom/google/android/gms/tagmanager/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzt;->zzQv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbFs:Ljava/lang/String;

    const-string v2, "&v=a65833898"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHv:Ljava/lang/String;

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&pv="

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHv:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8e
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzRe()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzcj;->zzRf()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHj:Lcom/google/android/gms/tagmanager/zzcj$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/zzcj$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "&gtm_debug=x"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b2
    :goto_b2
    return-object v0

    :cond_b3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b2
.end method

.method zza(Lcom/google/android/gms/tagmanager/zzbn;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzbn",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zzj;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHt:Lcom/google/android/gms/tagmanager/zzbn;

    return-void
.end method

.method zzgZ(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbFs:Ljava/lang/String;

    :goto_6
    return-void

    :cond_7
    const-string v1, "Setting CTFE URL path: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbf(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbFs:Ljava/lang/String;

    goto :goto_6

    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_17
.end method

.method zzho(Ljava/lang/String;)V
    .registers 5

    const-string v1, "Setting previous container version: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbf(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzct;->zzbHv:Ljava/lang/String;

    return-void

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_10
.end method

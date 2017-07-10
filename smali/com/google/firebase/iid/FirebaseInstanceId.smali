.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;


# static fields
.field private static zzbhH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/iid/FirebaseInstanceId;",
            ">;"
        }
    .end annotation
.end field

.field private static zzclh:Lcom/google/firebase/iid/zze;


# instance fields
.field private final zzcli:Lcom/google/firebase/FirebaseApp;

.field private final zzclj:Lcom/google/firebase/iid/zzd;

.field private final zzclk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzbhH:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzd;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcli:Lcom/google/firebase/FirebaseApp;

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj:Lcom/google/firebase/iid/zzd;

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclk:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclk:Ljava/lang/String;

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IID failing to initialize, FirebaseApp is missing project ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Context;Lcom/google/firebase/iid/FirebaseInstanceId;)V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 1

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 5
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzbhH:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/firebase/iid/zzd;->zzb(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/zzd;

    move-result-object v2

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclh:Lcom/google/firebase/iid/zze;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/google/firebase/iid/zze;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzh;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/firebase/iid/zze;-><init>(Lcom/google/firebase/iid/zzh;)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclh:Lcom/google/firebase/iid/zze;

    :cond_2d
    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {v0, p0, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzd;)V

    sget-object v2, Lcom/google/firebase/iid/FirebaseInstanceId;->zzbhH:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit v1

    return-object v0

    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static zzR(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v0

    :catch_d
    move-exception v1

    const-string v2, "FirebaseInstanceId"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to find package "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private zzS(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "gmp_app_id"

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static zza(Ljava/security/KeyPair;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    :try_start_8
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x70

    const/4 v2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_27} :catch_29

    move-result-object v0

    :goto_28
    return-object v0

    :catch_29
    move-exception v0

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Unexpected error, device missing required alghorithms"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_28
.end method

.method static zza(Landroid/content/Context;Lcom/google/firebase/iid/zzh;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzh;->zzHo()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CMD"

    const-string v2, "RST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/firebase/iid/zzg;->zzabU()Lcom/google/firebase/iid/zzg;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/firebase/iid/zzg;->zzf(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static zzbx(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    const-string v1, "FirebaseInstanceId"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Never happens: can\'t find own package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method static zzby(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CMD"

    const-string v2, "SYNC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/firebase/iid/zzg;->zzabU()Lcom/google/firebase/iid/zzg;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/firebase/iid/zzg;->zzf(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static zzcr(Landroid/content/Context;)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static zzv([B)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteInstanceId()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj:Lcom/google/firebase/iid/zzd;

    const-string v1, "*"

    const-string v2, "*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/iid/zzd;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj:Lcom/google/firebase/iid/zzd;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzd;->zzHi()V

    return-void
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzS(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj:Lcom/google/firebase/iid/zzd;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/firebase/iid/zzd;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getCreationTime()J
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj:Lcom/google/firebase/iid/zzd;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzd;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj:Lcom/google/firebase/iid/zzd;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzd;->zzHh()Ljava/security/KeyPair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabN()Lcom/google/firebase/iid/zzh$zza;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v1, Lcom/google/firebase/iid/zzd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzh$zza;->zzjB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_e
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcs(Landroid/content/Context;)V

    :cond_17
    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/google/firebase/iid/zzh$zza;->zzbxT:Ljava/lang/String;

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzS(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj:Lcom/google/firebase/iid/zzd;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/firebase/iid/zzd;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzabM()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2c

    move-object v0, v1

    goto :goto_d

    :cond_2c
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v0, v1

    goto :goto_d
.end method

.method zzabN()Lcom/google/firebase/iid/zzh$zza;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj:Lcom/google/firebase/iid/zzd;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzh;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclk:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/iid/zzh;->zzu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzh$zza;

    move-result-object v0

    return-object v0
.end method

.method zzabO()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclk:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzabP()Lcom/google/firebase/iid/zze;
    .registers 2

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclh:Lcom/google/firebase/iid/zze;

    return-object v0
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzS(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj:Lcom/google/firebase/iid/zzd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/iid/zzd;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzjt(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclh:Lcom/google/firebase/iid/zze;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zze;->zzjt(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcli:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcs(Landroid/content/Context;)V

    return-void
.end method

.method zzju(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabN()Lcom/google/firebase/iid/zzh$zza;

    move-result-object v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzh$zza;->zzjB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "token not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gcm.topic"

    const-string v0, "/topics/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/firebase/iid/zzh$zza;->zzbxT:Ljava/lang/String;

    const-string v0, "/topics/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4a
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    return-void

    :cond_4e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :cond_54
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4a
.end method

.method zzjv(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabN()Lcom/google/firebase/iid/zzh$zza;

    move-result-object v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzh$zza;->zzjB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "token not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gcm.topic"

    const-string v0, "/topics/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclj:Lcom/google/firebase/iid/zzd;

    iget-object v1, v1, Lcom/google/firebase/iid/zzh$zza;->zzbxT:Ljava/lang/String;

    const-string v0, "/topics/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_56

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4c
    invoke-virtual {v3, v1, v0, v2}, Lcom/google/firebase/iid/zzd;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_50
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :cond_56
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4c
.end method

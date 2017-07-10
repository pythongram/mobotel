.class public Lcom/google/firebase/iid/zzd;
.super Ljava/lang/Object;


# static fields
.field static zzbhH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/iid/zzd;",
            ">;"
        }
    .end annotation
.end field

.field static zzbhN:Ljava/lang/String;

.field private static zzclt:Lcom/google/firebase/iid/zzh;

.field private static zzclu:Lcom/google/firebase/iid/zzf;


# instance fields
.field mContext:Landroid/content/Context;

.field zzbhK:Ljava/security/KeyPair;

.field zzbhL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zzd;->zzbhH:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized zzb(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/zzd;
    .registers 6

    const-class v2, Lcom/google/firebase/iid/zzd;

    monitor-enter v2

    if-nez p1, :cond_42

    :try_start_5
    const-string v0, ""

    :goto_7
    if-nez v0, :cond_4c

    const-string v0, ""

    move-object v1, v0

    :goto_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzclt:Lcom/google/firebase/iid/zzh;

    if-nez v0, :cond_22

    new-instance v0, Lcom/google/firebase/iid/zzh;

    invoke-direct {v0, v3}, Lcom/google/firebase/iid/zzh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/iid/zzd;->zzclt:Lcom/google/firebase/iid/zzh;

    new-instance v0, Lcom/google/firebase/iid/zzf;

    invoke-direct {v0, v3}, Lcom/google/firebase/iid/zzf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/iid/zzd;->zzclu:Lcom/google/firebase/iid/zzf;

    :cond_22
    invoke-static {v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcr(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/iid/zzd;->zzbhN:Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzbhH:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzd;

    if-nez v0, :cond_40

    new-instance v0, Lcom/google/firebase/iid/zzd;

    invoke-direct {v0, v3, v1, p1}, Lcom/google/firebase/iid/zzd;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/google/firebase/iid/zzd;->zzbhH:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_49

    :cond_40
    monitor-exit v2

    return-object v0

    :cond_42
    :try_start_42
    const-string v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_49

    move-result-object v0

    goto :goto_7

    :catchall_49
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4c
    move-object v1, v0

    goto :goto_c
.end method


# virtual methods
.method public getCreationTime()J
    .registers 3

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzclt:Lcom/google/firebase/iid/zzh;

    iget-object v1, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzh;->zzjy(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    if-nez p3, :cond_19

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_19
    const/4 v0, 0x1

    const-string v1, "ttl"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    const-string v1, "jwt"

    const-string v2, "type"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    :cond_30
    const/4 v0, 0x0

    :cond_31
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/iid/zzd;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_44

    if-eqz v0, :cond_44

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzclt:Lcom/google/firebase/iid/zzh;

    iget-object v1, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    sget-object v5, Lcom/google/firebase/iid/zzd;->zzbhN:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/zzh;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    :goto_44
    return-object v4

    :cond_45
    sget-object v1, Lcom/google/firebase/iid/zzd;->zzclt:Lcom/google/firebase/iid/zzh;

    iget-object v2, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/firebase/iid/zzh;->zzu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzh$zza;

    move-result-object v1

    if-eqz v1, :cond_31

    sget-object v2, Lcom/google/firebase/iid/zzd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/zzh$zza;->zzjB(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v4, v1, Lcom/google/firebase/iid/zzh$zza;->zzbxT:Ljava/lang/String;

    goto :goto_44
.end method

.method zzHh()Ljava/security/KeyPair;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzd;->zzbhK:Ljava/security/KeyPair;

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzclt:Lcom/google/firebase/iid/zzh;

    iget-object v1, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzh;->zzeI(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzd;->zzbhK:Ljava/security/KeyPair;

    :cond_e
    iget-object v0, p0, Lcom/google/firebase/iid/zzd;->zzbhK:Ljava/security/KeyPair;

    if-nez v0, :cond_1c

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzclt:Lcom/google/firebase/iid/zzh;

    iget-object v1, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzh;->zzjz(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzd;->zzbhK:Ljava/security/KeyPair;

    :cond_1c
    iget-object v0, p0, Lcom/google/firebase/iid/zzd;->zzbhK:Ljava/security/KeyPair;

    return-object v0
.end method

.method public zzHi()V
    .registers 3

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzclt:Lcom/google/firebase/iid/zzh;

    iget-object v1, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzh;->zzeJ(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/zzd;->zzbhK:Ljava/security/KeyPair;

    return-void
.end method

.method public zzabQ()Lcom/google/firebase/iid/zzh;
    .registers 2

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzclt:Lcom/google/firebase/iid/zzh;

    return-object v0
.end method

.method public zzabR()Lcom/google/firebase/iid/zzf;
    .registers 2

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzclu:Lcom/google/firebase/iid/zzf;

    return-object v0
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    sget-object v0, Lcom/google/firebase/iid/zzd;->zzclt:Lcom/google/firebase/iid/zzh;

    iget-object v1, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/zzh;->zzi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_20

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_20
    const-string v0, "delete"

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/iid/zzd;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    return-void
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_7

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "sender"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :goto_16
    const-string v0, "subtype"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-subtype"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/iid/zzd;->zzclu:Lcom/google/firebase/iid/zzf;

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzd;->zzHh()Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/firebase/iid/zzf;->zza(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/iid/zzd;->zzclu:Lcom/google/firebase/iid/zzf;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzf;->zzq(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    iget-object p1, p0, Lcom/google/firebase/iid/zzd;->zzbhL:Ljava/lang/String;

    goto :goto_16
.end method

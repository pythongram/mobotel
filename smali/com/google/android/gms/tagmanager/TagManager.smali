.class public Lcom/google/android/gms/tagmanager/TagManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/TagManager$zza;
    }
.end annotation


# static fields
.field private static zzbIu:Lcom/google/android/gms/tagmanager/TagManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbEV:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final zzbHu:Lcom/google/android/gms/tagmanager/zzt;

.field private final zzbIr:Lcom/google/android/gms/tagmanager/TagManager$zza;

.field private final zzbIs:Lcom/google/android/gms/tagmanager/zzdb;

.field private final zzbIt:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$zza;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzdb;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIs:Lcom/google/android/gms/tagmanager/zzdb;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIr:Lcom/google/android/gms/tagmanager/TagManager$zza;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIt:Ljava/util/concurrent/ConcurrentMap;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbEV:Lcom/google/android/gms/tagmanager/DataLayer;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbEV:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v1, Lcom/google/android/gms/tagmanager/TagManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/TagManager$1;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzb;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbEV:Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzd;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/tagmanager/zzd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzb;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbHu:Lcom/google/android/gms/tagmanager/zzt;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/TagManager;->zzRE()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/TagManager;->zzRF()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;
    .registers 6
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    const-class v1, Lcom/google/android/gms/tagmanager/TagManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIu:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez v0, :cond_31

    if-nez p0, :cond_17

    const-string v0, "TagManager.getInstance requires non-null context."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :try_start_17
    new-instance v0, Lcom/google/android/gms/tagmanager/TagManager$2;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/TagManager$2;-><init>()V

    new-instance v2, Lcom/google/android/gms/tagmanager/zzx;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/zzx;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/gms/tagmanager/TagManager;

    new-instance v4, Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-direct {v4, v2}, Lcom/google/android/gms/tagmanager/DataLayer;-><init>(Lcom/google/android/gms/tagmanager/DataLayer$zzc;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdc;->zzRy()Lcom/google/android/gms/tagmanager/zzdc;

    move-result-object v2

    invoke-direct {v3, p0, v0, v4, v2}, Lcom/google/android/gms/tagmanager/TagManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$zza;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzdb;)V

    sput-object v3, Lcom/google/android/gms/tagmanager/TagManager;->zzbIu:Lcom/google/android/gms/tagmanager/TagManager;

    :cond_31
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIu:Lcom/google/android/gms/tagmanager/TagManager;

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_14

    return-object v0
.end method

.method private zzRE()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/tagmanager/TagManager$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/TagManager$3;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method private zzRF()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zza;->zzbS(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/TagManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/TagManager;->zzhs(Ljava/lang/String;)V

    return-void
.end method

.method private zzhs(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIt:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzo;->zzgU(Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    return-void
.end method


# virtual methods
.method public dispatch()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIs:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdb;->dispatch()V

    return-void
.end method

.method public getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbEV:Lcom/google/android/gms/tagmanager/DataLayer;

    return-object v0
.end method

.method public loadContainerDefaultOnly(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 10
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIr:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbHu:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzQk()V

    return-object v0
.end method

.method public loadContainerDefaultOnly(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 11
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIr:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbHu:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzQk()V

    return-object v0
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 10
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIr:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbHu:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzQm()V

    return-object v0
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 11
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIr:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbHu:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzQm()V

    return-object v0
.end method

.method public loadContainerPreferNonDefault(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 10
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIr:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbHu:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzQl()V

    return-object v0
.end method

.method public loadContainerPreferNonDefault(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 11
    .param p2    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIr:Lcom/google/android/gms/tagmanager/TagManager$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbHu:Lcom/google/android/gms/tagmanager/zzt;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$zza;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzQl()V

    return-object v0
.end method

.method public setVerboseLoggingEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x2

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->setLogLevel(I)V

    return-void

    :cond_7
    const/4 v0, 0x5

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzo;)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIt:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzo;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIt:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public zzb(Lcom/google/android/gms/tagmanager/zzo;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIt:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzo;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method declared-synchronized zzv(Landroid/net/Uri;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzRe()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/tagmanager/zzcj;->zzv(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzcj;->getContainerId()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager$4;->zzbIw:[I

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzcj;->zzRf()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzcj$zza;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_33

    packed-switch v0, :pswitch_data_76

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    monitor-exit p0

    return v0

    :pswitch_21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIt:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzo;

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzo;->zzgW(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->refresh()V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_33

    goto :goto_1e

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_36
    :try_start_36
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIt:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_40
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->zzbIt:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzcj;->zzRg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzo;->zzgW(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzo;->refresh()V

    goto :goto_40

    :cond_65
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzo;->zzQh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzo;->zzgW(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzo;->refresh()V
    :try_end_72
    .catchall {:try_start_36 .. :try_end_72} :catchall_33

    goto :goto_40

    :cond_73
    const/4 v0, 0x0

    goto :goto_1f

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_21
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

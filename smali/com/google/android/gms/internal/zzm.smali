.class public Lcom/google/android/gms/internal/zzm;
.super Ljava/lang/Object;


# instance fields
.field private zzX:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzl",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final zzZ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzl",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzaa:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzl",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzab:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzl",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zzac:[Lcom/google/android/gms/internal/zzh;

.field private zzad:Lcom/google/android/gms/internal/zzc;

.field private zzae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Lcom/google/android/gms/internal/zzb;

.field private final zzj:Lcom/google/android/gms/internal/zzo;

.field private final zzy:Lcom/google/android/gms/internal/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzg;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzm;-><init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzg;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzg;I)V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/zzf;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzf;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzm;-><init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzg;ILcom/google/android/gms/internal/zzo;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzg;ILcom/google/android/gms/internal/zzo;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzX:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzY:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzZ:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzaa:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzab:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzae:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzm;->zzi:Lcom/google/android/gms/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzm;->zzy:Lcom/google/android/gms/internal/zzg;

    new-array v0, p3, [Lcom/google/android/gms/internal/zzh;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzac:[Lcom/google/android/gms/internal/zzh;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzm;->zzj:Lcom/google/android/gms/internal/zzo;

    return-void
.end method


# virtual methods
.method public getSequenceNumber()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public start()V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzm;->stop()V

    new-instance v0, Lcom/google/android/gms/internal/zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzaa:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzm;->zzab:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzm;->zzi:Lcom/google/android/gms/internal/zzb;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzm;->zzj:Lcom/google/android/gms/internal/zzo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzc;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzad:Lcom/google/android/gms/internal/zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzad:Lcom/google/android/gms/internal/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzc;->start()V

    const/4 v0, 0x0

    :goto_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzac:[Lcom/google/android/gms/internal/zzh;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    new-instance v1, Lcom/google/android/gms/internal/zzh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzm;->zzab:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzm;->zzy:Lcom/google/android/gms/internal/zzg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzm;->zzi:Lcom/google/android/gms/internal/zzb;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzm;->zzj:Lcom/google/android/gms/internal/zzo;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzh;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/zzg;Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzo;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzm;->zzac:[Lcom/google/android/gms/internal/zzh;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzh;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_34
    return-void
.end method

.method public stop()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzad:Lcom/google/android/gms/internal/zzc;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzad:Lcom/google/android/gms/internal/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzc;->quit()V

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzac:[Lcom/google/android/gms/internal/zzh;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzac:[Lcom/google/android/gms/internal/zzh;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzac:[Lcom/google/android/gms/internal/zzh;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzh;->quit()V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzl;)Lcom/google/android/gms/internal/zzl;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzl",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzl",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzl;->zza(Lcom/google/android/gms/internal/zzm;)Lcom/google/android/gms/internal/zzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzZ:Ljava/util/Set;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzZ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzm;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzl;->zza(I)Lcom/google/android/gms/internal/zzl;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzl;->zzc(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzl;->zzn()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzab:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_23
    return-object p1

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    iget-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzY:Ljava/util/Map;

    monitor-enter v1

    :try_start_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzl;->zzg()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzY:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzY:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_45

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_45
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzm;->zzY:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/google/android/gms/internal/zzt;->DEBUG:Z

    if-eqz v0, :cond_5c

    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5c
    :goto_5c
    monitor-exit v1

    goto :goto_23

    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_2a .. :try_end_60} :catchall_5e

    throw v0

    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzY:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzaa:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_5e

    goto :goto_5c
.end method

.method zzf(Lcom/google/android/gms/internal/zzl;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzl",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzZ:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzZ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzae:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_12

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzl;->zzn()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzY:Ljava/util/Map;

    monitor-enter v1

    :try_start_2c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzl;->zzg()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzY:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-eqz v0, :cond_59

    sget-boolean v3, Lcom/google/android/gms/internal/zzt;->DEBUG:Z

    if-eqz v3, :cond_54

    const-string v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_54
    iget-object v2, p0, Lcom/google/android/gms/internal/zzm;->zzaa:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_59
    monitor-exit v1

    :cond_5a
    return-void

    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_2c .. :try_end_5d} :catchall_5b

    throw v0
.end method

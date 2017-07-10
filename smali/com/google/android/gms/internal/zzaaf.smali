.class public abstract Lcom/google/android/gms/internal/zzaaf;
.super Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaaf$zzb;,
        Lcom/google/android/gms/internal/zzaaf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final zzaAg:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzK:Z

.field private final zzaAh:Ljava/lang/Object;

.field protected final zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaf$zza",
            "<TR;>;"
        }
    .end annotation
.end field

.field protected final zzaAj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaAk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAl:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final zzaAm:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/zzaby$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAn:Lcom/google/android/gms/internal/zzaaf$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaf$zzb;"
        }
    .end annotation
.end field

.field private volatile zzaAo:Z

.field private zzaAp:Z

.field private zzaAq:Lcom/google/android/gms/common/internal/zzs;

.field private volatile zzaAr:Lcom/google/android/gms/internal/zzabx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabx",
            "<TR;>;"
        }
    .end annotation
.end field

.field private zzaAs:Z

.field private zzair:Lcom/google/android/gms/common/api/Status;

.field private zzazt:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final zztj:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzaaf$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaaf$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaaf;->zzaAg:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    new-instance v0, Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaaf$zza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    new-instance v0, Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaaf$zza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_29
    new-instance v1, Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaaf$zza;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAj:Ljava/lang/ref/WeakReference;

    return-void

    :cond_38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_29
.end method

.method private get()Lcom/google/android/gms/common/api/Result;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    if-nez v2, :cond_26

    :goto_8
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_28

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->zzvG()V

    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_8

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaaf;)Lcom/google/android/gms/common/api/Result;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    return-object v0
.end method

.method private zzc(Lcom/google/android/gms/common/api/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAq:Lcom/google/android/gms/common/internal/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzair:Lcom/google/android/gms/common/api/Status;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    if-eqz v0, :cond_30

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzair:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/PendingResult$zza;->zzy(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1e

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    instance-of v0, v0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/google/android/gms/internal/zzaaf$zzb;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzaaf$zzb;-><init>(Lcom/google/android/gms/internal/zzaaf;Lcom/google/android/gms/internal/zzaaf$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAn:Lcom/google/android/gms/internal/zzaaf$zzb;

    goto :goto_18

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaf$zza;->zzvK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaaf$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_18

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/common/api/Result;)V
    .registers 7

    instance-of v1, p0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v1, :cond_b

    :try_start_4
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v1

    const-string v2, "BasePendingResult"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to release "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method private zzvG()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaby$zzb;

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzaby$zzb;->zzc(Lcom/google/android/gms/internal/zzaaf;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public final await()Lcom/google/android/gms/common/api/Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_38

    move v0, v1

    :goto_d
    const-string v3, "await must not be called on the UI thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    if-nez v0, :cond_3a

    move v0, v1

    :goto_17
    const-string v3, "Result has already been consumed"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    if-nez v0, :cond_3c

    :goto_20
    const-string v0, "Cannot await if then() has been called."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2a} :catch_3e

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_38
    move v0, v2

    goto :goto_d

    :cond_3a
    move v0, v2

    goto :goto_17

    :cond_3c
    move v1, v2

    goto :goto_20

    :catch_3e
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazy:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->zzC(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2a
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_12

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_46

    :cond_12
    move v0, v2

    :goto_13
    const-string v3, "await must not be called on the UI thread when time is greater than zero."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    if-nez v0, :cond_48

    move v0, v2

    :goto_1d
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    if-nez v0, :cond_4a

    :goto_26
    const-string v0, "Cannot await if then() has been called."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    :try_start_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazA:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->zzC(Lcom/google/android/gms/common/api/Status;)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_38} :catch_4c

    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_46
    move v0, v1

    goto :goto_13

    :cond_48
    move v0, v1

    goto :goto_1d

    :cond_4a
    move v2, v1

    goto :goto_26

    :catch_4c
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazy:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->zzC(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_38
.end method

.method public cancel()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    if-eqz v0, :cond_d

    :cond_b
    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAq:Lcom/google/android/gms/common/internal/zzs;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_29

    if-eqz v0, :cond_16

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAq:Lcom/google/android/gms/common/internal/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzs;->cancel()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_2c
    .catchall {:try_start_11 .. :try_end_16} :catchall_29

    :cond_16
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzazt:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaf;->zzd(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->zzc(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v1

    goto :goto_c

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_29

    throw v0

    :catch_2c
    move-exception v0

    goto :goto_16
.end method

.method public isCanceled()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final isReady()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zztj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_c

    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v3

    :goto_b
    return-void

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    if-nez v2, :cond_2a

    move v2, v0

    :goto_11
    const-string v4, "Result has already been consumed."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    if-nez v2, :cond_2c

    :goto_1a
    const-string v1, "Cannot set callbacks if then() has been called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2e

    monitor-exit v3

    goto :goto_b

    :catchall_27
    move-exception v0

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    move v2, v1

    goto :goto_11

    :cond_2c
    move v0, v1

    goto :goto_1a

    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaaf$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_3d
    monitor-exit v3

    goto :goto_b

    :cond_3f
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_27

    goto :goto_3d
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_c

    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v3

    :goto_b
    return-void

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    if-nez v2, :cond_2a

    move v2, v0

    :goto_11
    const-string v4, "Result has already been consumed."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    if-nez v2, :cond_2c

    :goto_1a
    const-string v1, "Cannot set callbacks if then() has been called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2e

    monitor-exit v3

    goto :goto_b

    :catchall_27
    move-exception v0

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    move v2, v1

    goto :goto_11

    :cond_2c
    move v0, v1

    goto :goto_1a

    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaaf$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_3d
    monitor-exit v3

    goto :goto_b

    :cond_3f
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, p0, v4, v5}, Lcom/google/android/gms/internal/zzaaf$zza;->zza(Lcom/google/android/gms/internal/zzaaf;J)V
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_27

    goto :goto_3d
.end method

.method public then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult",
            "<TS;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    if-nez v0, :cond_51

    move v0, v1

    :goto_7
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v3

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    if-nez v0, :cond_53

    move v0, v1

    :goto_14
    const-string v4, "Cannot call then() twice."

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    if-nez v0, :cond_55

    move v0, v1

    :goto_1e
    const-string v4, "Cannot call then() if callbacks are set."

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    if-nez v0, :cond_57

    :goto_27
    const-string v0, "Cannot call then() if result was canceled."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    new-instance v0, Lcom/google/android/gms/internal/zzabx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAj:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzabx;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzabx;->then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAi:Lcom/google/android/gms/internal/zzaaf$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaf;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/zzaaf$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_4f
    monitor-exit v3

    return-object v0

    :cond_51
    move v0, v2

    goto :goto_7

    :cond_53
    move v0, v2

    goto :goto_14

    :cond_55
    move v0, v2

    goto :goto_1e

    :cond_57
    move v1, v2

    goto :goto_27

    :cond_59
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAr:Lcom/google/android/gms/internal/zzabx;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAl:Lcom/google/android/gms/common/api/ResultCallback;

    goto :goto_4f

    :catchall_5e
    move-exception v0

    monitor-exit v3
    :try_end_60
    .catchall {:try_start_f .. :try_end_60} :catchall_5e

    throw v0
.end method

.method public final zzC(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaaf;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->zzb(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAp:Z

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V
    .registers 4

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    :goto_3
    const-string v1, "Callback cannot be null."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzair:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/PendingResult$zza;->zzy(Lcom/google/android/gms/common/api/Status;)V

    :goto_16
    monitor-exit v1

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_3

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_20

    throw v0
.end method

.method protected final zza(Lcom/google/android/gms/common/internal/zzs;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAq:Lcom/google/android/gms/common/internal/zzs;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaby$zzb;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAm:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/api/Result;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAp:Z

    if-nez v2, :cond_2d

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzK:Z

    if-nez v2, :cond_2d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isReady()Z

    move-result v2

    if-nez v2, :cond_35

    move v2, v0

    :goto_1a
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAo:Z

    if-nez v2, :cond_37

    :goto_23
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaaf;->zzc(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    :goto_2c
    return-void

    :cond_2d
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaaf;->zzd(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    goto :goto_2c

    :catchall_32
    move-exception v0

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    move v2, v1

    goto :goto_1a

    :cond_37
    move v0, v1

    goto :goto_23
.end method

.method protected abstract zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public zzvF()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    if-nez v0, :cond_14

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->cancel()V

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaaf;->isCanceled()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public zzvH()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaaf;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public zzvI()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    if-nez v0, :cond_12

    sget-object v0, Lcom/google/android/gms/internal/zzaaf;->zzaAg:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_12
    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaaf;->zzaAs:Z

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public zzvr()Ljava/lang/Integer;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

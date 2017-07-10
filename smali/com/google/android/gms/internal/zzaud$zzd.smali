.class final Lcom/google/android/gms/internal/zzaud$zzd;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzbtU:Lcom/google/android/gms/internal/zzaud;

.field private final zzbtX:Ljava/lang/Object;

.field private final zzbtY:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaud;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtX:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtY:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzaud$zzd;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private zza(Ljava/lang/InterruptedException;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaud$zzd;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-nez v1, :cond_15

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaud;->zza(Lcom/google/android/gms/internal/zzaud;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_d} :catch_10

    const/4 v0, 0x1

    move v1, v0

    goto :goto_2

    :catch_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaud$zzd;->zza(Ljava/lang/InterruptedException;)V

    goto :goto_2

    :cond_15
    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtY:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_23

    goto :goto_15

    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaud;->zzc(Lcom/google/android/gms/internal/zzaud;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaud;->zza(Lcom/google/android/gms/internal/zzaud;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaud;->zzc(Lcom/google/android/gms/internal/zzaud;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaud;->zzd(Lcom/google/android/gms/internal/zzaud;)Lcom/google/android/gms/internal/zzaud$zzd;

    move-result-object v2

    if-ne p0, v2, :cond_d1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzaud;->zza(Lcom/google/android/gms/internal/zzaud;Lcom/google/android/gms/internal/zzaud$zzd;)Lcom/google/android/gms/internal/zzaud$zzd;

    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_e1

    throw v0

    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtX:Ljava/lang/Object;

    monitor-enter v1
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_23

    :try_start_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtY:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaud;->zzb(Lcom/google/android/gms/internal/zzaud;)Z
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_a6

    move-result v0

    if-nez v0, :cond_67

    :try_start_60
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtX:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_67} :catch_a1
    .catchall {:try_start_60 .. :try_end_67} :catchall_a6

    :cond_67
    :goto_67
    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_a6

    :try_start_68
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaud;->zzc(Lcom/google/android/gms/internal/zzaud;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_23

    :try_start_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtY:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_cb

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_ce

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaud;->zzc(Lcom/google/android/gms/internal/zzaud;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaud;->zza(Lcom/google/android/gms/internal/zzaud;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaud;->zzc(Lcom/google/android/gms/internal/zzaud;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaud;->zzd(Lcom/google/android/gms/internal/zzaud;)Lcom/google/android/gms/internal/zzaud$zzd;

    move-result-object v0

    if-ne p0, v0, :cond_a9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzaud;->zza(Lcom/google/android/gms/internal/zzaud;Lcom/google/android/gms/internal/zzaud$zzd;)Lcom/google/android/gms/internal/zzaud$zzd;

    :goto_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_7f .. :try_end_a0} :catchall_b8

    return-void

    :catch_a1
    move-exception v0

    :try_start_a2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaud$zzd;->zza(Ljava/lang/InterruptedException;)V

    goto :goto_67

    :catchall_a6
    move-exception v0

    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_23

    :cond_a9
    :try_start_a9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaud;->zze(Lcom/google/android/gms/internal/zzaud;)Lcom/google/android/gms/internal/zzaud$zzd;

    move-result-object v0

    if-ne p0, v0, :cond_bb

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzaud;->zzb(Lcom/google/android/gms/internal/zzaud;Lcom/google/android/gms/internal/zzaud$zzd;)Lcom/google/android/gms/internal/zzaud$zzd;

    goto :goto_9f

    :catchall_b8
    move-exception v0

    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_a9 .. :try_end_ba} :catchall_b8

    throw v0

    :cond_bb
    :try_start_bb
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_bb .. :try_end_ca} :catchall_b8

    goto :goto_9f

    :cond_cb
    :try_start_cb
    monitor-exit v1

    goto/16 :goto_15

    :catchall_ce
    move-exception v0

    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_ce

    :try_start_d0
    throw v0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_23

    :cond_d1
    :try_start_d1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaud;->zze(Lcom/google/android/gms/internal/zzaud;)Lcom/google/android/gms/internal/zzaud$zzd;

    move-result-object v2

    if-ne p0, v2, :cond_e4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzaud;->zzb(Lcom/google/android/gms/internal/zzaud;Lcom/google/android/gms/internal/zzaud$zzd;)Lcom/google/android/gms/internal/zzaud$zzd;

    goto/16 :goto_4b

    :catchall_e1
    move-exception v0

    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_d1 .. :try_end_e3} :catchall_e1

    throw v0

    :cond_e4
    :try_start_e4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtU:Lcom/google/android/gms/internal/zzaud;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaud;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_e4 .. :try_end_f3} :catchall_e1

    goto/16 :goto_4b
.end method

.method public zzhA()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzd;->zzbtX:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

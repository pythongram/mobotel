.class Lcom/google/android/gms/internal/zzaul$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaul;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbvH:Lcom/google/android/gms/internal/zzaul;

.field final synthetic zzbvI:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzc(Lcom/google/android/gms/internal/zzaul;)Lcom/google/android/gms/internal/zzatt;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_44
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5a

    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_41

    :goto_20
    return-void

    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaul;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzatu;->zzfD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzatt;->zzc(Lcom/google/android/gms/internal/zzatd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzd(Lcom/google/android/gms/internal/zzaul;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3a} :catch_44
    .catchall {:try_start_21 .. :try_end_3a} :catchall_5a

    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_3f
    monitor-exit v1

    goto :goto_20

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_41

    throw v0

    :catch_44
    move-exception v0

    :try_start_45
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_5a

    :try_start_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_3f

    :catchall_5a
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$2;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_41
.end method

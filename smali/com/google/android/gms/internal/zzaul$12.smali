.class Lcom/google/android/gms/internal/zzaul$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaul;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbvH:Lcom/google/android/gms/internal/zzaul;

.field final synthetic zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzbve:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbve:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzc(Lcom/google/android/gms/internal/zzaul;)Lcom/google/android/gms/internal/zzatt;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Failed to get user properties"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_46
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5c

    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_43

    :goto_20
    return-void

    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaul;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzatu;->zzfD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbve:Z

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/zzatt;->zza(Lcom/google/android/gms/internal/zzatd;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzd(Lcom/google/android/gms/internal/zzaul;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3c} :catch_46
    .catchall {:try_start_21 .. :try_end_3c} :catchall_5c

    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_41
    monitor-exit v1

    goto :goto_20

    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_43

    throw v0

    :catch_46
    move-exception v0

    :try_start_47
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Failed to get user properties"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_5c

    :try_start_56
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_41

    :catchall_5c
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$12;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_43
.end method

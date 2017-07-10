.class Lcom/google/android/gms/internal/zzaul$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaul;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbkW:Ljava/lang/String;

.field final synthetic zzbuO:Ljava/lang/String;

.field final synthetic zzbuP:Ljava/lang/String;

.field final synthetic zzbvH:Lcom/google/android/gms/internal/zzaul;

.field final synthetic zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzbve:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbkW:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbuO:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbuP:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbve:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzc(Lcom/google/android/gms/internal/zzaul;)Lcom/google/android/gms/internal/zzatt;

    move-result-object v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Failed to get user properties"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbkW:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbuO:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbuP:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2d} :catch_80
    .catchall {:try_start_3 .. :try_end_2d} :catchall_a7

    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_6b

    :goto_33
    return-void

    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbkW:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbuO:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbuP:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbve:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaul;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzatx;->zzMf()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzatu;->zzfD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v6

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzatt;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzatd;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzd(Lcom/google/android/gms/internal/zzaul;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_64} :catch_80
    .catchall {:try_start_34 .. :try_end_64} :catchall_a7

    :try_start_64
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_69
    monitor-exit v1

    goto :goto_33

    :catchall_6b
    move-exception v0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6b

    throw v0

    :cond_6e
    :try_start_6e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbkW:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbuO:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbuP:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbve:Z

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzatt;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_7f} :catch_80
    .catchall {:try_start_6e .. :try_end_7f} :catchall_a7

    goto :goto_5f

    :catch_80
    move-exception v0

    :try_start_81
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Failed to get user properties"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbkW:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbuO:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_a1
    .catchall {:try_start_81 .. :try_end_a1} :catchall_a7

    :try_start_a1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_69

    :catchall_a7
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$10;->zzbvI:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_ae
    .catchall {:try_start_a1 .. :try_end_ae} :catchall_6b
.end method

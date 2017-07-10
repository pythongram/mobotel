.class Lcom/google/android/gms/internal/zzaak$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaBa:Lcom/google/android/gms/internal/zzaak;

.field private zzaBb:Lcom/google/android/gms/internal/zzabq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaak;Lcom/google/android/gms/internal/zzabq;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBb:Lcom/google/android/gms/internal/zzabq;

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBb:Lcom/google/android/gms/internal/zzabq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzabq;->zzrq()V

    return-void
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 8
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaak;->zza(Lcom/google/android/gms/internal/zzaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/internal/zzaak;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBb:Lcom/google/android/gms/internal/zzabq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzabq;->zzrq()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_64

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaak;->zza(Lcom/google/android/gms/internal/zzaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1f
    return-void

    :cond_20
    :try_start_20
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaak;->zzm(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/internal/zzaak;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaak;->zzm(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaak;->zzg(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaj;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->zzayj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_20 .. :try_end_63} :catchall_64

    goto :goto_48

    :catchall_64
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaak;->zza(Lcom/google/android/gms/internal/zzaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_6f
    :try_start_6f
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/common/api/zzb;

    if-eqz v0, :cond_129

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaak;->zze(Lcom/google/android/gms/internal/zzaak;)Z

    move-result v1

    if-eqz v1, :cond_de

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzaak;->zzm(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/internal/zzaak;Ljava/util/Map;)Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaak;->zzm(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzaaj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaaj;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzb;->zza(Lcom/google/android/gms/common/api/zzc;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v5, v1, v4}, Lcom/google/android/gms/internal/zzaak;->zza(Lcom/google/android/gms/internal/zzaak;Lcom/google/android/gms/internal/zzaaj;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_d4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaak;->zzg(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a7

    :cond_d4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaak;->zzg(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a7

    :cond_de
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzb;->zzvj()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/internal/zzaak;Ljava/util/Map;)Ljava/util/Map;

    :cond_e7
    :goto_e7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaak;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_119

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaak;->zzd(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaak;->zzg(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaak;->zzf(Lcom/google/android/gms/internal/zzaak;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-nez v0, :cond_119

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaak;->zzi(Lcom/google/android/gms/internal/zzaak;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaak;->zzj(Lcom/google/android/gms/internal/zzaak;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaak;->zzl(Lcom/google/android/gms/internal/zzaak;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_119
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBb:Lcom/google/android/gms/internal/zzabq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzabq;->zzrq()V
    :try_end_11e
    .catchall {:try_start_6f .. :try_end_11e} :catchall_64

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaak;->zza(Lcom/google/android/gms/internal/zzaak;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1f

    :cond_129
    :try_start_129
    const-string v0, "ConnectionlessGAC"

    const-string v1, "Unexpected availability exception"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak$zzb;->zzaBa:Lcom/google/android/gms/internal/zzaak;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/internal/zzaak;Ljava/util/Map;)Ljava/util/Map;
    :try_end_13d
    .catchall {:try_start_129 .. :try_end_13d} :catchall_64

    goto :goto_e7
.end method

.class public Lcom/google/firebase/iid/zzb$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private final zzclc:Landroid/content/Intent;

.field private final zzcld:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/Intent;",
            "Landroid/content/BroadcastReceiver$PendingResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzcle:Lcom/google/firebase/iid/zzb$zza;

.field private zzclf:Z

.field private final zzqn:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzcld:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzclf:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzqn:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/iid/zzb$zzb;->zzqn:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzclc:Landroid/content/Intent;

    return-void
.end method

.method private declared-synchronized zzwH()V
    .registers 5

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_2
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "EnhancedIntentService"

    const-string v1, "flush queue called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzcld:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "EnhancedIntentService"

    const-string v1, "found intent to be delivered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzcle:Lcom/google/firebase/iid/zzb$zza;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzcle:Lcom/google/firebase/iid/zzb$zza;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzb$zza;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "EnhancedIntentService"

    const-string v1, "binder is alive, sending the intent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzcld:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v3, p0, Lcom/google/firebase/iid/zzb$zzb;->zzcle:Lcom/google/firebase/iid/zzb$zza;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v3, v1, v0}, Lcom/google/firebase/iid/zzb$zza;->zza(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    :try_end_5b
    .catchall {:try_start_2 .. :try_end_5b} :catchall_5c

    goto :goto_12

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5f
    :try_start_5f
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_87

    const-string v1, "EnhancedIntentService"

    iget-boolean v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzclf:Z

    if-nez v0, :cond_a0

    move v0, v2

    :goto_6f
    const/16 v2, 0x27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "binder is dead. start connection? "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    iget-boolean v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzclf:Z

    if-nez v0, :cond_9e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzclf:Z
    :try_end_8e
    .catchall {:try_start_5f .. :try_end_8e} :catchall_5c

    :try_start_8e
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzb$zzb;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/iid/zzb$zzb;->zzclc:Landroid/content/Intent;

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_9b
    .catch Ljava/lang/SecurityException; {:try_start_8e .. :try_end_9b} :catch_c1
    .catchall {:try_start_8e .. :try_end_9b} :catchall_5c

    move-result v0

    if-eqz v0, :cond_a2

    :cond_9e
    monitor-exit p0

    return-void

    :cond_a0
    const/4 v0, 0x0

    goto :goto_6f

    :cond_a2
    :try_start_a2
    const-string v0, "EnhancedIntentService"

    const-string v1, "binding to the service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/SecurityException; {:try_start_a2 .. :try_end_a9} :catch_c1
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_5c

    :goto_a9
    :try_start_a9
    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzcld:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzcld:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_a9

    :catch_c1
    move-exception v0

    const-string v1, "EnhancedIntentService"

    const-string v2, "Exception while binding the service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c9
    .catchall {:try_start_a9 .. :try_end_c9} :catchall_5c

    goto :goto_a9
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzclf:Z

    check-cast p2, Lcom/google/firebase/iid/zzb$zza;

    iput-object p2, p0, Lcom/google/firebase/iid/zzb$zzb;->zzcle:Lcom/google/firebase/iid/zzb$zza;

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "EnhancedIntentService"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-direct {p0}, Lcom/google/firebase/iid/zzb$zzb;->zzwH()V

    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "EnhancedIntentService"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-direct {p0}, Lcom/google/firebase/iid/zzb$zzb;->zzwH()V

    return-void
.end method

.method public declared-synchronized zzb(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "EnhancedIntentService"

    const-string v1, "new intent queued in the bind-strategy delivery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zzb;->zzcld:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/firebase/iid/zzb$zzb;->zzwH()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

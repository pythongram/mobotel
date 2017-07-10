.class public Lcom/google/firebase/iid/zzb$zza;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzckZ:Lcom/google/firebase/iid/zzb;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzb;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzb$zza;->zzckZ:Lcom/google/firebase/iid/zzb;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzb$zza;)Lcom/google/firebase/iid/zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zza;->zzckZ:Lcom/google/firebase/iid/zzb;

    return-object v0
.end method

.method private static zza(Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 1
    .param p0    # Landroid/content/BroadcastReceiver$PendingResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_5
    return-void
.end method

.method static synthetic zzb(Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/iid/zzb$zza;->zza(Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 6
    .param p2    # Landroid/content/BroadcastReceiver$PendingResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Binding only allowed within app"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const-string v0, "EnhancedIntentService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "EnhancedIntentService"

    const-string v1, "service received new intent via bind strategy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zza;->zzckZ:Lcom/google/firebase/iid/zzb;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzb;->zzE(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p2}, Lcom/google/firebase/iid/zzb$zza;->zza(Landroid/content/BroadcastReceiver$PendingResult;)V

    :goto_2d
    return-void

    :cond_2e
    const-string v0, "EnhancedIntentService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "EnhancedIntentService"

    const-string v1, "intent being queued for bg execution"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iget-object v0, p0, Lcom/google/firebase/iid/zzb$zza;->zzckZ:Lcom/google/firebase/iid/zzb;

    iget-object v0, v0, Lcom/google/firebase/iid/zzb;->zzbtI:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/iid/zzb$zza$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/iid/zzb$zza$1;-><init>(Lcom/google/firebase/iid/zzb$zza;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2d
.end method

.class public Lcom/google/android/gms/gcm/GcmReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;


# static fields
.field private static zzbgr:Ljava/lang/String;

.field private static zzbgs:Z


# instance fields
.field private zzbgt:Lcom/google/firebase/iid/zzb$zzb;

.field private zzbgu:Lcom/google/firebase/iid/zzb$zzb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "gcm.googleapis.com/refresh"

    sput-object v0, Lcom/google/android/gms/gcm/GcmReceiver;->zzbgr:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/gcm/GcmReceiver;->zzbgs:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method private doStartService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmReceiver;->setResultCode(I)V

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmReceiver;->zze(Landroid/content/Context;Landroid/content/Intent;)V

    :try_start_e
    const-string v0, "android.permission.WAKE_LOCK"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {p1, p2}, Lcom/google/android/gms/gcm/GcmReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_1a
    if-nez v0, :cond_4f

    const-string v0, "GcmReceiver"

    const-string v1, "Error while delivering the message: ServiceIntent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x194

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmReceiver;->setResultCode(I)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "GcmReceiver"

    const-string v2, "Missing wake lock permission, service start may be delayed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_3a} :catch_3b

    goto :goto_1a

    :catch_3b
    move-exception v0

    const-string v1, "GcmReceiver"

    const-string v2, "Error while delivering the message to the serviceIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x191

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmReceiver;->setResultCode(I)V

    goto :goto_2e

    :cond_4f
    :try_start_4f
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmReceiver;->setResultCode(I)V
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_59} :catch_3b

    goto :goto_2e
.end method

.method private declared-synchronized zzK(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzb$zzb;
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmReceiver;->zzbgu:Lcom/google/firebase/iid/zzb$zzb;

    if-nez v0, :cond_14

    new-instance v0, Lcom/google/firebase/iid/zzb$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzb$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmReceiver;->zzbgu:Lcom/google/firebase/iid/zzb$zzb;

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmReceiver;->zzbgu:Lcom/google/firebase/iid/zzb$zzb;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_26

    :goto_16
    monitor-exit p0

    return-object v0

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmReceiver;->zzbgt:Lcom/google/firebase/iid/zzb$zzb;

    if-nez v0, :cond_23

    new-instance v0, Lcom/google/firebase/iid/zzb$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzb$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmReceiver;->zzbgt:Lcom/google/firebase/iid/zzb$zzb;

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmReceiver;->zzbgt:Lcom/google/firebase/iid/zzb$zzb;
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_26

    goto :goto_16

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private zze(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_17

    :cond_f
    const-string v0, "GcmReceiver"

    const-string v1, "Failed to resolve target intent service, skipping classname enforcement"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    return-void

    :cond_17
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_6b

    :cond_29
    const-string v1, "GcmReceiver"

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_6b
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8b
    :goto_8b
    const-string v1, "GcmReceiver"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a9

    const-string v2, "GcmReceiver"

    const-string v3, "Restricting intent to a specific service: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b8

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_a6
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_16

    :cond_b2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8b

    :cond_b8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a6
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, -0x1

    const-string v0, "GcmReceiver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "GcmReceiver"

    const-string v1, "received new intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_29

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :cond_29
    const-string v0, "from"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.com/iid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    sget-object v1, Lcom/google/android/gms/gcm/GcmReceiver;->zzbgr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_3f
    const-string v0, "com.google.android.gms.iid.InstanceID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_44
    const-string v0, "gcm.rawData64"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    const-string v1, "rawData"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "gcm.rawData64"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_5b
    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzq()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p0, v3}, Lcom/google/android/gms/gcm/GcmReceiver;->setResultCode(I)V

    :cond_6a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/gcm/GcmReceiver;->zzK(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzb$zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/firebase/iid/zzb$zzb;->zzb(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    :cond_79
    :goto_79
    return-void

    :cond_7a
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmReceiver;->zzd(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_89
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmReceiver;->getResultCode()I

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p0, v3}, Lcom/google/android/gms/gcm/GcmReceiver;->setResultCode(I)V

    goto :goto_79

    :cond_99
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmReceiver;->doStartService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_89
.end method

.method public zzd(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmReceiver;->doStartService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

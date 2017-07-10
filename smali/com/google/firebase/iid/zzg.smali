.class public Lcom/google/firebase/iid/zzg;
.super Ljava/lang/Object;


# static fields
.field private static zzclA:Lcom/google/firebase/iid/zzg;


# instance fields
.field private final zzclB:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzclC:Ljava/lang/Boolean;

.field final zzclD:Ljava/util/Queue;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final zzclE:Ljava/util/Queue;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclB:Landroid/support/v4/util/SimpleArrayMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclC:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclD:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclE:Ljava/util/Queue;

    return-void
.end method

.method public static zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    const-string v0, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/firebase/iid/zzg;->zza(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "wrapped_intent"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0, p1, v0, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized zzabU()Lcom/google/firebase/iid/zzg;
    .registers 2

    const-class v1, Lcom/google/firebase/iid/zzg;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/firebase/iid/zzg;->zzclA:Lcom/google/firebase/iid/zzg;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/firebase/iid/zzg;

    invoke-direct {v0}, Lcom/google/firebase/iid/zzg;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zzg;->zzclA:Lcom/google/firebase/iid/zzg;

    :cond_e
    sget-object v0, Lcom/google/firebase/iid/zzg;->zzclA:Lcom/google/firebase/iid/zzg;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static zzb(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/firebase/iid/zzg;->zza(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private zzcv(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclC:Ljava/lang/Boolean;

    if-nez v0, :cond_13

    const-string v0, "android.permission.WAKE_LOCK"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclC:Ljava/lang/Boolean;

    :cond_13
    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private zze(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    iget-object v1, p0, Lcom/google/firebase/iid/zzg;->zzclB:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclB:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_29

    if-nez v0, :cond_ad

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_2c

    :cond_21
    const-string v0, "FirebaseInstanceId"

    const-string v1, "Failed to resolve target intent service, skipping classname enforcement"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_80

    :cond_3e
    const-string v1, "FirebaseInstanceId"

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

    goto :goto_28

    :cond_80
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a0
    :goto_a0
    iget-object v1, p0, Lcom/google/firebase/iid/zzg;->zzclB:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v1

    :try_start_a3
    iget-object v2, p0, Lcom/google/firebase/iid/zzg;->zzclB:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_a3 .. :try_end_ad} :catchall_da

    :cond_ad
    const-string v1, "FirebaseInstanceId"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Restricting intent to a specific service: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_dd

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_c8
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_28

    :cond_d4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a0

    :catchall_da
    move-exception v0

    :try_start_db
    monitor-exit v1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    throw v0

    :cond_dd
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_c8
.end method

.method private zzg(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzg;->zze(Landroid/content/Context;Landroid/content/Intent;)V

    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzg;->zzcv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1, p2}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_d
    if-nez v0, :cond_30

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Error while delivering the message: ServiceIntent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x194

    :goto_18
    return v0

    :cond_19
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "FirebaseInstanceId"

    const-string v2, "Missing wake lock permission, service start may be delayed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_24} :catch_25

    goto :goto_d

    :catch_25
    move-exception v0

    const-string v1, "FirebaseInstanceId"

    const-string v2, "Error while delivering the message to the serviceIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x191

    goto :goto_18

    :cond_30
    const/4 v0, -0x1

    goto :goto_18
.end method


# virtual methods
.method public zzabV()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public zzabW()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 8

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_64

    const-string v1, "FirebaseInstanceId"

    const-string v2, "Unknown service action: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_53

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    :goto_22
    return v0

    :sswitch_23
    const-string v1, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_2d
    const-string v1, "com.google.firebase.MESSAGING_EVENT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :pswitch_37
    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclD:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_3c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/zzg;->zzg(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    goto :goto_22

    :pswitch_4d
    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzclE:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_53
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x32362dbf -> :sswitch_23
        0x279bd20 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_37
        :pswitch_4d
    .end packed-switch
.end method

.method public zzf(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string v0, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/iid/zzg;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    return-void
.end method

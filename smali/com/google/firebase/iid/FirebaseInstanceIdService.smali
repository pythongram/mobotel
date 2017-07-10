.class public Lcom/google/firebase/iid/FirebaseInstanceIdService;
.super Lcom/google/firebase/iid/zzb;


# static fields
.field private static zzcln:Landroid/content/BroadcastReceiver;

.field static final zzclo:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static zzclp:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private zzclq:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclo:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclp:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/iid/zzb;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclq:Z

    return-void
.end method

.method private zzG(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    const-string v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, ""

    :cond_a
    return-object v0
.end method

.method private zza(Landroid/content/Intent;Z)I
    .registers 7

    const/16 v1, 0x7080

    const/16 v0, 0xa

    if-nez p1, :cond_e

    move v2, v0

    :goto_7
    if-ge v2, v0, :cond_16

    if-nez p2, :cond_16

    const/16 v0, 0x1e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const-string v2, "next_retry_delay_in_seconds"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_7

    :cond_16
    if-lt v2, v0, :cond_d

    if-le v2, v1, :cond_1c

    move v0, v1

    goto :goto_d

    :cond_1c
    move v0, v2

    goto :goto_d
.end method

.method static zza(Landroid/content/Context;Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .registers 4

    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclp:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :cond_8
    :goto_8
    return-void

    :cond_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabN()Lcom/google/firebase/iid/zzh$zza;

    move-result-object v0

    if-eqz v0, :cond_22

    sget-object v1, Lcom/google/firebase/iid/zzd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzh$zza;->zzjB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabP()Lcom/google/firebase/iid/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zze;->zzabS()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_22
    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcs(Landroid/content/Context;)V

    goto :goto_8

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private zza(Landroid/content/Intent;ZZ)V
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclo:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_6
    sput-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclp:Z

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_10

    invoke-static {p0}, Lcom/google/firebase/iid/zzf;->zzbA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_f
    :goto_f
    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0

    :cond_13
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabN()Lcom/google/firebase/iid/zzh$zza;

    move-result-object v3

    if-eqz v3, :cond_25

    sget-object v4, Lcom/google/firebase/iid/zzd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/iid/zzh$zza;->zzjB(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    :cond_25
    :try_start_25
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabO()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    iget-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclq:Z

    if-eqz v2, :cond_36

    const-string v2, "FirebaseInstanceId"

    const-string v4, "get master token succeeded"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    invoke-static {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Context;Lcom/google/firebase/iid/FirebaseInstanceId;)V

    if-nez p3, :cond_47

    if-eqz v3, :cond_47

    if-eqz v3, :cond_f

    iget-object v0, v3, Lcom/google/firebase/iid/zzh$zza;->zzbxT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_47
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onTokenRefresh()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_4a} :catch_5a

    goto :goto_f

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzd(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_f

    :cond_54
    :try_start_54
    const-string v0, "returned token is null"

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzd(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_4b
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_59} :catch_5a

    goto :goto_f

    :catch_5a
    move-exception v0

    const-string v1, "FirebaseInstanceId"

    const-string v2, "Unable to get master token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_63
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzabP()Lcom/google/firebase/iid/zze;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/iid/zze;->zzabS()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_6c
    if-eqz v3, :cond_d4

    const-string v0, "!"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_87

    aget-object v5, v0, v1

    aget-object v6, v0, v2

    const/4 v0, -0x1

    :try_start_7d
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_b7

    move-result v7

    packed-switch v7, :pswitch_data_de

    :cond_84
    :goto_84
    :pswitch_84
    packed-switch v0, :pswitch_data_e8

    :cond_87
    :goto_87
    invoke-virtual {v4, v3}, Lcom/google/firebase/iid/zze;->zzjx(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcom/google/firebase/iid/zze;->zzabS()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_6c

    :pswitch_90
    :try_start_90
    const-string v7, "S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    move v0, v1

    goto :goto_84

    :pswitch_9a
    const-string v7, "U"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    move v0, v2

    goto :goto_84

    :pswitch_a4
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzju(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclq:Z

    if-eqz v0, :cond_87

    const-string v0, "FirebaseInstanceId"

    const-string v5, "subscribe operation succeeded"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_b6} :catch_b7

    goto :goto_87

    :catch_b7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzd(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_c1
    :try_start_c1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzjv(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclq:Z

    if-eqz v0, :cond_87

    const-string v0, "FirebaseInstanceId"

    const-string v5, "unsubscribe operation succeeded"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_d3} :catch_b7

    goto :goto_87

    :cond_d4
    const-string v0, "FirebaseInstanceId"

    const-string v1, "topic sync succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    nop

    :pswitch_data_de
    .packed-switch 0x53
        :pswitch_90
        :pswitch_84
        :pswitch_9a
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_c1
    .end packed-switch
.end method

.method private zza(Lcom/google/firebase/iid/zzf;Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Lcom/google/firebase/iid/zzf;->zzbA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Unable to respond to ping due to missing target package"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_e
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gcm.intent.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Lcom/google/firebase/iid/zzf;->zzp(Landroid/content/Intent;)V

    const-string v0, "google.to"

    const-string v2, "google.com/iid"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "google.message_id"

    invoke-static {}, Lcom/google/firebase/iid/zzf;->zzHn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_d
.end method

.method static synthetic zza(Lcom/google/firebase/iid/FirebaseInstanceIdService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclq:Z

    return v0
.end method

.method static zzcs(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/google/firebase/iid/zzf;->zzbA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    sget-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclp:Z

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/google/firebase/iid/zzg;->zzabU()Lcom/google/firebase/iid/zzg;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzqF(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/google/firebase/iid/zzg;->zzf(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclp:Z

    :cond_1d
    monitor-exit v1

    goto :goto_6

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private static zzct(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic zzcu(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzct(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private zzd(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 8

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzct(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;Z)I

    move-result v1

    const-string v2, "FirebaseInstanceId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "background sync failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retry in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclo:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3d
    invoke-direct {p0, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzqG(I)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclp:Z

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_6d

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclq:Z

    if-eqz v0, :cond_51

    const-string v0, "FirebaseInstanceId"

    const-string v2, "device not connected. Connectivity change received registered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcln:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_5c

    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceIdService$1;

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService$1;-><init>(Lcom/google/firebase/iid/FirebaseInstanceIdService;I)V

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcln:Landroid/content/BroadcastReceiver;

    :cond_5c
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcln:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_6c
    return-void

    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0
.end method

.method private zzjw(Ljava/lang/String;)Lcom/google/firebase/iid/zzd;
    .registers 4

    if-nez p1, :cond_8

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/iid/zzd;->zzb(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/zzd;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "subtype"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/firebase/iid/zzd;->zzb(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/zzd;

    move-result-object v0

    goto :goto_7
.end method

.method private static zzqF(I)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_TOKEN_REFRESH_RETRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "next_retry_delay_in_seconds"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private zzqG(I)V
    .registers 10

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    mul-int/lit8 v2, p1, 0x2

    invoke-static {v2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzqF(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {p0, v1, v2, v3}, Lcom/google/firebase/iid/zzg;->zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic zzqH(I)Landroid/content/Intent;
    .registers 2

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzqF(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    :cond_9
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_28

    :cond_11
    move v0, v2

    :goto_12
    packed-switch v0, :pswitch_data_2e

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzF(Landroid/content/Intent;)V

    :goto_18
    return-void

    :pswitch_19
    const-string v3, "ACTION_TOKEN_REFRESH_RETRY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :pswitch_23
    invoke-direct {p0, p1, v1, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    goto :goto_18

    nop

    :pswitch_data_28
    .packed-switch -0x6790df6b
        :pswitch_19
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method

.method public onTokenRefresh()V
    .registers 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method protected zzD(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3

    invoke-static {}, Lcom/google/firebase/iid/zzg;->zzabU()Lcom/google/firebase/iid/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzg;->zzabV()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public zzE(Landroid/content/Intent;)Z
    .registers 7

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclq:Z

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    :cond_19
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzG(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclq:Z

    if-eqz v0, :cond_36

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Register result in service "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    invoke-direct {p0, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzjw(Ljava/lang/String;)Lcom/google/firebase/iid/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzd;->zzabR()Lcom/google/firebase/iid/zzf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzf;->zzs(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_42
    return v0

    :cond_43
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_33

    :cond_49
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public zzF(Landroid/content/Intent;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzG(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzjw(Ljava/lang/String;)Lcom/google/firebase/iid/zzd;

    move-result-object v1

    const-string v2, "CMD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzclq:Z

    if-eqz v3, :cond_64

    const-string v3, "FirebaseInstanceId"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Service command "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    const-string v3, "unregistered"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7f

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzh;

    move-result-object v2

    if-nez v0, :cond_74

    const-string v0, ""

    :cond_74
    invoke-virtual {v2, v0}, Lcom/google/firebase/iid/zzh;->zzeK(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabR()Lcom/google/firebase/iid/zzf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzf;->zzs(Landroid/content/Intent;)V

    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    const-string v3, "gcm.googleapis.com/refresh"

    const-string v4, "from"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzh;->zzeK(Ljava/lang/String;)V

    invoke-direct {p0, p1, v8, v7}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    goto :goto_7e

    :cond_98
    const-string v3, "RST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzHi()V

    invoke-direct {p0, p1, v7, v7}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    goto :goto_7e

    :cond_a7
    const-string v3, "RST_FULL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzh;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzHi()V

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzh;->zzHo()V

    invoke-direct {p0, p1, v7, v7}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    goto :goto_7e

    :cond_c7
    const-string v3, "SYNC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_da

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzh;->zzeK(Ljava/lang/String;)V

    invoke-direct {p0, p1, v8, v7}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Landroid/content/Intent;ZZ)V

    goto :goto_7e

    :cond_da
    const-string v0, "PING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzd;->zzabR()Lcom/google/firebase/iid/zzf;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Lcom/google/firebase/iid/zzf;Landroid/os/Bundle;)V

    goto :goto_7e
.end method

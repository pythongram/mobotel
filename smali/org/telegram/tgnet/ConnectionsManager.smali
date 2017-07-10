.class public Lorg/telegram/tgnet/ConnectionsManager;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"


# static fields
.field public static final ConnectionStateConnected:I = 0x3

.field public static final ConnectionStateConnecting:I = 0x1

.field public static final ConnectionStateUpdating:I = 0x4

.field public static final ConnectionStateWaitingForNetwork:I = 0x2

.field public static final ConnectionTypeDownload:I = 0x2

.field public static final ConnectionTypeDownload2:I = 0x10002

.field public static final ConnectionTypeGeneric:I = 0x1

.field public static final ConnectionTypePush:I = 0x8

.field public static final ConnectionTypeUpload:I = 0x4

.field public static final ConnectionTypeUpload2:I = 0x10004

.field public static final DEFAULT_DATACENTER_ID:I = 0x7fffffff

.field public static final FileTypeAudio:I = 0x3000000

.field public static final FileTypeFile:I = 0x4000000

.field public static final FileTypePhoto:I = 0x1000000

.field public static final FileTypeVideo:I = 0x2000000

.field private static volatile Instance:Lorg/telegram/tgnet/ConnectionsManager; = null

.field public static final RequestFlagCanCompress:I = 0x4

.field public static final RequestFlagEnableUnauthorized:I = 0x1

.field public static final RequestFlagFailOnServerErrors:I = 0x2

.field public static final RequestFlagForceDownload:I = 0x20

.field public static final RequestFlagInvokeAfter:I = 0x40

.field public static final RequestFlagNeedQuickAck:I = 0x80

.field public static final RequestFlagTryDifferentDc:I = 0x10

.field public static final RequestFlagWithoutLogin:I = 0x8


# instance fields
.field private appPaused:Z

.field private appResumeCount:I

.field private connectionState:I

.field private isUpdating:Z

.field private lastClassGuid:I

.field private lastPauseTime:J

.field private lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    .line 64
    iput-boolean v4, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    .line 65
    iput v4, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    .line 67
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getConnectionState()I

    move-result v2

    iput v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    .line 68
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    :try_start_1b
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 90
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "lock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_34} :catch_35

    .line 95
    .end local v1    # "pm":Landroid/os/PowerManager;
    :goto_34
    return-void

    .line 92
    :catch_35
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_34
.end method

.method static synthetic access$000(Lorg/telegram/tgnet/ConnectionsManager;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/tgnet/ConnectionsManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/tgnet/ConnectionsManager;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/tgnet/ConnectionsManager;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/tgnet/ConnectionsManager;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/tgnet/ConnectionsManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/tgnet/ConnectionsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    return p1
.end method

.method private checkConnection()V
    .registers 3

    .prologue
    .line 212
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->useIpv6Address()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setUseIpv6(Z)V

    .line 213
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setNetworkAvailable(ZI)V

    .line 214
    return-void
.end method

.method public static getCurrentNetworkType()I
    .registers 1

    .prologue
    .line 350
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isConnectedOrConnectingToWiFi()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 351
    const/4 v0, 0x1

    .line 355
    :goto_7
    return v0

    .line 352
    :cond_8
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 353
    const/4 v0, 0x2

    goto :goto_7

    .line 355
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getInstance()Lorg/telegram/tgnet/ConnectionsManager;
    .registers 4

    .prologue
    .line 75
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;

    .line 76
    .local v0, "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    if-nez v0, :cond_14

    .line 77
    const-class v3, Lorg/telegram/tgnet/ConnectionsManager;

    monitor-enter v3

    .line 78
    :try_start_7
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;

    .line 79
    if-nez v0, :cond_13

    .line 80
    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager;

    invoke-direct {v1}, Lorg/telegram/tgnet/ConnectionsManager;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    .local v1, "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    :try_start_10
    sput-object v1, Lorg/telegram/tgnet/ConnectionsManager;->Instance:Lorg/telegram/tgnet/ConnectionsManager;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 82
    .end local v1    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    .restart local v0    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 84
    :cond_14
    return-object v0

    .line 82
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    .restart local v1    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    .restart local v0    # "localInstance":Lorg/telegram/tgnet/ConnectionsManager;
    goto :goto_16
.end method

.method public static isConnectedOrConnectingToWiFi()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 449
    :try_start_1
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 450
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 451
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 452
    .local v3, "state":Landroid/net/NetworkInfo$State;
    if-eqz v2, :cond_27

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v5, :cond_22

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v5, :cond_22

    sget-object v5, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_23

    if-ne v3, v5, :cond_27

    .line 458
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_22
    :goto_22
    return v4

    .line 455
    :catch_23
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 458
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_27
    const/4 v4, 0x0

    goto :goto_22
.end method

.method public static isConnectedToWiFi()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 463
    :try_start_1
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 464
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 465
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1b

    if-ne v4, v5, :cond_1f

    .line 471
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :goto_1a
    return v3

    .line 468
    :catch_1b
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 471
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1f
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public static isNetworkOnline()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 566
    :try_start_2
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 567
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 568
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 586
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1e
    :goto_1e
    return v3

    .line 572
    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1f
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 574
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 577
    :cond_2c
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 578
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_3b

    move-result v5

    if-nez v5, :cond_1e

    :cond_39
    move v3, v4

    .line 586
    goto :goto_1e

    .line 582
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :catch_3b
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public static isRoaming()Z
    .registers 5

    .prologue
    .line 436
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 437
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 438
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_19

    .line 439
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result v3

    .line 444
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :goto_14
    return v3

    .line 441
    :catch_15
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 444
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_19
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public static native native_applyDatacenterAddress(ILjava/lang/String;I)V
.end method

.method public static native native_bindRequestToGuid(II)V
.end method

.method public static native native_cancelRequest(IZ)V
.end method

.method public static native native_cancelRequestsForGuid(I)V
.end method

.method public static native native_cleanUp()V
.end method

.method public static native native_getConnectionState()I
.end method

.method public static native native_getCurrentTime()I
.end method

.method public static native native_getCurrentTimeMillis()J
.end method

.method public static native native_getTimeDifference()I
.end method

.method public static native native_init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZI)V
.end method

.method public static native native_pauseNetwork()V
.end method

.method public static native native_resumeNetwork(Z)V
.end method

.method public static native native_sendRequest(ILorg/telegram/tgnet/RequestDelegateInternal;Lorg/telegram/tgnet/QuickAckDelegate;IIIZI)V
.end method

.method public static native native_setJava(Z)V
.end method

.method public static native native_setNetworkAvailable(ZI)V
.end method

.method public static native native_setPushConnectionEnabled(Z)V
.end method

.method public static native native_setUseIpv6(Z)V
.end method

.method public static native native_setUserId(I)V
.end method

.method public static native native_switchBackend()V
.end method

.method public static native native_updateDcSettings()V
.end method

.method public static onBytesReceived(II)V
    .registers 8
    .param p0, "amount"    # I
    .param p1, "networkType"    # I

    .prologue
    .line 369
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    const/4 v2, 0x6

    int-to-long v4, p0

    invoke-virtual {v1, p1, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 373
    :goto_9
    return-void

    .line 370
    :catch_a
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public static onBytesSent(II)V
    .registers 8
    .param p0, "amount"    # I
    .param p1, "networkType"    # I

    .prologue
    .line 361
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    const/4 v2, 0x6

    int-to-long v4, p0

    invoke-virtual {v1, p1, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 365
    :goto_9
    return-void

    .line 362
    :catch_a
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public static onConnectionStateChanged(I)V
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 328
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$7;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager$7;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

.method public static onInternalPushReceived()V
    .registers 1

    .prologue
    .line 394
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$10;

    invoke-direct {v0}, Lorg/telegram/tgnet/ConnectionsManager$10;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method

.method public static onLogout()V
    .registers 1

    .prologue
    .line 338
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$8;

    invoke-direct {v0}, Lorg/telegram/tgnet/ConnectionsManager$8;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public static onSessionCreated()V
    .registers 2

    .prologue
    .line 319
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$6;

    invoke-direct {v1}, Lorg/telegram/tgnet/ConnectionsManager$6;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public static onUnparsedMessageReceived(I)V
    .registers 7
    .param p0, "address"    # I

    .prologue
    .line 283
    :try_start_0
    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    .line 284
    .local v0, "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 285
    invoke-static {}, Lorg/telegram/tgnet/TLClassStore;->Instance()Lorg/telegram/tgnet/TLClassStore;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/tgnet/TLClassStore;->TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    .line 286
    .local v2, "message":Lorg/telegram/tgnet/TLObject;
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v3, :cond_41

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 288
    new-instance v3, Lorg/telegram/tgnet/ConnectionsManager$3;

    invoke-direct {v3}, Lorg/telegram/tgnet/ConnectionsManager$3;-><init>()V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 297
    sget-object v3, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/tgnet/ConnectionsManager$4;

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/ConnectionsManager$4;-><init>(Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    .line 307
    .end local v0    # "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "message":Lorg/telegram/tgnet/TLObject;
    :cond_41
    :goto_41
    return-void

    .line 304
    :catch_42
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_41
.end method

.method public static onUpdate()V
    .registers 2

    .prologue
    .line 310
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$5;

    invoke-direct {v1}, Lorg/telegram/tgnet/ConnectionsManager$5;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public static onUpdateConfig(I)V
    .registers 6
    .param p0, "address"    # I

    .prologue
    .line 377
    :try_start_0
    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    .line 378
    .local v0, "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 379
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lorg/telegram/tgnet/TLRPC$TL_config;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_config;

    move-result-object v2

    .line 380
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$TL_config;
    if-eqz v2, :cond_1d

    .line 381
    sget-object v3, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/tgnet/ConnectionsManager$9;

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/ConnectionsManager$9;-><init>(Lorg/telegram/tgnet/TLRPC$TL_config;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 391
    .end local v0    # "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$TL_config;
    :cond_1d
    :goto_1d
    return-void

    .line 388
    :catch_1e
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method protected static useIpv6Address()Z
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 495
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-ge v11, v12, :cond_8

    .line 561
    .local v9, "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_7
    :goto_7
    return v10

    .line 498
    .end local v9    # "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_8
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v11, :cond_9e

    .line 501
    :try_start_c
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    .line 502
    .restart local v9    # "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_10
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 503
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    .line 504
    .local v8, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_10

    .line 507
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "valid interface: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    .line 509
    .local v7, "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_10

    .line 510
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .line 511
    .local v1, "address":Ljava/net/InterfaceAddress;
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 512
    .local v6, "inetAddress":Ljava/net/InetAddress;
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v11, :cond_7b

    .line 513
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "address: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 515
    :cond_7b
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v11

    if-nez v11, :cond_8d

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v11

    if-nez v11, :cond_8d

    invoke-virtual {v6}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v11

    if-eqz v11, :cond_90

    .line 509
    :cond_8d
    :goto_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 518
    :cond_90
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v11, :cond_8d

    .line 519
    const-string v11, "address is good"

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_99} :catch_9a

    goto :goto_8d

    .line 523
    .end local v0    # "a":I
    .end local v1    # "address":Ljava/net/InterfaceAddress;
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    .end local v7    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .end local v8    # "networkInterface":Ljava/net/NetworkInterface;
    :catch_9a
    move-exception v3

    .line 524
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 529
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_9e
    :try_start_9e
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    .line 530
    const/4 v4, 0x0

    .line 531
    .local v4, "hasIpv4":Z
    const/4 v5, 0x0

    .line 532
    .local v5, "hasIpv6":Z
    :cond_a4
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_fe

    .line 533
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    .line 534
    .restart local v8    # "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v11

    if-eqz v11, :cond_a4

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v11

    if-nez v11, :cond_a4

    .line 537
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    .line 538
    .restart local v7    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_c1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_a4

    .line 539
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .line 540
    .restart local v1    # "address":Ljava/net/InterfaceAddress;
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 541
    .restart local v6    # "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v11

    if-nez v11, :cond_e3

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v11

    if-nez v11, :cond_e3

    invoke-virtual {v6}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v11

    if-eqz v11, :cond_e6

    .line 538
    :cond_e3
    :goto_e3
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 544
    :cond_e6
    instance-of v11, v6, Ljava/net/Inet6Address;

    if-eqz v11, :cond_ec

    .line 545
    const/4 v5, 0x1

    goto :goto_e3

    .line 546
    :cond_ec
    instance-of v11, v6, Ljava/net/Inet4Address;

    if-eqz v11, :cond_e3

    .line 547
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "addrr":Ljava/lang/String;
    const-string v11, "192.0.0."

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_f9} :catch_105

    move-result v11

    if-nez v11, :cond_e3

    .line 549
    const/4 v4, 0x1

    goto :goto_e3

    .line 554
    .end local v0    # "a":I
    .end local v1    # "address":Ljava/net/InterfaceAddress;
    .end local v2    # "addrr":Ljava/lang/String;
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    .end local v7    # "interfaceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .end local v8    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_fe
    if-nez v4, :cond_7

    if-eqz v5, :cond_7

    .line 555
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 557
    .end local v4    # "hasIpv4":Z
    .end local v5    # "hasIpv6":Z
    :catch_105
    move-exception v3

    .line 558
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public applyCountryPortNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 476
    return-void
.end method

.method public applyDatacenterAddress(ILjava/lang/String;I)V
    .registers 4
    .param p1, "datacenterId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 197
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->native_applyDatacenterAddress(ILjava/lang/String;I)V

    .line 198
    return-void
.end method

.method public bindRequestToGuid(II)V
    .registers 3
    .param p1, "requestToken"    # I
    .param p2, "guid"    # I

    .prologue
    .line 193
    invoke-static {p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_bindRequestToGuid(II)V

    .line 194
    return-void
.end method

.method public cancelRequest(IZ)V
    .registers 3
    .param p1, "token"    # I
    .param p2, "notifyServer"    # Z

    .prologue
    .line 181
    invoke-static {p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_cancelRequest(IZ)V

    .line 182
    return-void
.end method

.method public cancelRequestsForGuid(I)V
    .registers 2
    .param p1, "guid"    # I

    .prologue
    .line 189
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_cancelRequestsForGuid(I)V

    .line 190
    return-void
.end method

.method public cleanup()V
    .registers 1

    .prologue
    .line 185
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_cleanUp()V

    .line 186
    return-void
.end method

.method public generateClassGuid()I
    .registers 3

    .prologue
    .line 431
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    return v0
.end method

.method public getConnectionState()I
    .registers 3

    .prologue
    .line 201
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    if-eqz v0, :cond_b

    .line 202
    const/4 v0, 0x4

    .line 204
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    goto :goto_a
.end method

.method public getCurrentTime()I
    .registers 2

    .prologue
    .line 102
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentTime()I

    move-result v0

    return v0
.end method

.method public getCurrentTimeMillis()J
    .registers 3

    .prologue
    .line 98
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPauseTime()J
    .registers 3

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    return-wide v0
.end method

.method public getTimeDifference()I
    .registers 2

    .prologue
    .line 106
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_getTimeDifference()I

    move-result v0

    return v0
.end method

.method public init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 27
    .param p1, "version"    # I
    .param p2, "layer"    # I
    .param p3, "apiId"    # I
    .param p4, "deviceModel"    # Ljava/lang/String;
    .param p5, "systemVersion"    # Ljava/lang/String;
    .param p6, "appVersion"    # Ljava/lang/String;
    .param p7, "langCode"    # Ljava/lang/String;
    .param p8, "configPath"    # Ljava/lang/String;
    .param p9, "logPath"    # Ljava/lang/String;
    .param p10, "userId"    # I
    .param p11, "enablePushConnection"    # Z

    .prologue
    .line 221
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v11

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v12

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-static/range {v0 .. v12}, Lorg/telegram/tgnet/ConnectionsManager;->native_init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 222
    invoke-direct {p0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    .line 223
    new-instance v14, Lorg/telegram/tgnet/ConnectionsManager$2;

    invoke-direct {v14, p0}, Lorg/telegram/tgnet/ConnectionsManager$2;-><init>(Lorg/telegram/tgnet/ConnectionsManager;)V

    .line 229
    .local v14, "networkStateReceiver":Landroid/content/BroadcastReceiver;
    new-instance v13, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 230
    .local v13, "filter":Landroid/content/IntentFilter;
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v14, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void
.end method

.method public resumeNetworkMaybe()V
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_resumeNetwork(Z)V

    .line 239
    return-void
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    .registers 5
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "completionBlock"    # Lorg/telegram/tgnet/RequestDelegate;

    .prologue
    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    .registers 12
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "completionBlock"    # Lorg/telegram/tgnet/RequestDelegate;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x1

    .line 114
    const/4 v3, 0x0

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;II)I
    .registers 13
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "completionBlock"    # Lorg/telegram/tgnet/RequestDelegate;
    .param p3, "flags"    # I
    .param p4, "connetionType"    # I

    .prologue
    .line 118
    const/4 v3, 0x0

    const v5, 0x7fffffff

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I
    .registers 13
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "completionBlock"    # Lorg/telegram/tgnet/RequestDelegate;
    .param p3, "quickAckBlock"    # Lorg/telegram/tgnet/QuickAckDelegate;
    .param p4, "flags"    # I

    .prologue
    const/4 v6, 0x1

    .line 122
    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I
    .registers 19
    .param p1, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "onComplete"    # Lorg/telegram/tgnet/RequestDelegate;
    .param p3, "onQuickAck"    # Lorg/telegram/tgnet/QuickAckDelegate;
    .param p4, "flags"    # I
    .param p5, "datacenterId"    # I
    .param p6, "connetionType"    # I
    .param p7, "immediate"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 127
    .local v3, "requestToken":I
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager$1;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 177
    return v3
.end method

.method public setAppPaused(ZZ)V
    .registers 10
    .param p1, "value"    # Z
    .param p2, "byScreenState"    # Z

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 250
    if-nez p2, :cond_43

    .line 251
    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app paused = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 253
    if-eqz p1, :cond_57

    .line 254
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    .line 258
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app resume count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 259
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    if-gez v0, :cond_43

    .line 260
    iput v6, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    .line 263
    :cond_43
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    if-nez v0, :cond_5e

    .line 264
    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_53

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    .line 267
    :cond_53
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_pauseNetwork()V

    .line 279
    :cond_56
    :goto_56
    return-void

    .line 256
    :cond_57
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    goto :goto_25

    .line 269
    :cond_5e
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    if-nez v0, :cond_56

    .line 272
    const-string v0, "reset app pause time"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 273
    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_81

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_81

    .line 274
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkContacts()V

    .line 276
    :cond_81
    iput-wide v4, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    .line 277
    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->native_resumeNetwork(Z)V

    goto :goto_56
.end method

.method public setIsUpdating(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 479
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$11;

    invoke-direct {v0, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$11;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method

.method public setPushConnectionEnabled(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 217
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setPushConnectionEnabled(Z)V

    .line 218
    return-void
.end method

.method public setUserId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 208
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setUserId(I)V

    .line 209
    return-void
.end method

.method public switchBackend()V
    .registers 1

    .prologue
    .line 234
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_switchBackend()V

    .line 235
    return-void
.end method

.method public updateDcSettings()V
    .registers 1

    .prologue
    .line 242
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->native_updateDcSettings()V

    .line 243
    return-void
.end method

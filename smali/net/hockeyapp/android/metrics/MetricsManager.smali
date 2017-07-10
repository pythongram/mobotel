.class public Lnet/hockeyapp/android/metrics/MetricsManager;
.super Ljava/lang/Object;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;
    }
.end annotation


# static fields
.field protected static final ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected static final LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final LOCK:Ljava/lang/Object;

.field private static final SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "HA-MetricsManager"

.field private static volatile instance:Lnet/hockeyapp/android/metrics/MetricsManager;

.field private static sChannel:Lnet/hockeyapp/android/metrics/Channel;

.field private static sSender:Lnet/hockeyapp/android/metrics/Sender;

.field private static sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

.field private static sUserMetricsEnabled:Z

.field private static sWeakApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mSessionTrackingDisabled:Z

.field private mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    const/16 v0, 0x4e20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telemetryContext"    # Lnet/hockeyapp/android/metrics/TelemetryContext;
    .param p3, "sender"    # Lnet/hockeyapp/android/metrics/Sender;
    .param p4, "persistence"    # Lnet/hockeyapp/android/metrics/Persistence;
    .param p5, "channel"    # Lnet/hockeyapp/android/metrics/Channel;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sput-object p2, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    .line 119
    if-nez p3, :cond_c

    .line 120
    new-instance p3, Lnet/hockeyapp/android/metrics/Sender;

    .end local p3    # "sender":Lnet/hockeyapp/android/metrics/Sender;
    invoke-direct {p3}, Lnet/hockeyapp/android/metrics/Sender;-><init>()V

    .line 122
    .restart local p3    # "sender":Lnet/hockeyapp/android/metrics/Sender;
    :cond_c
    sput-object p3, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    .line 124
    if-nez p4, :cond_33

    .line 125
    new-instance p4, Lnet/hockeyapp/android/metrics/Persistence;

    .end local p4    # "persistence":Lnet/hockeyapp/android/metrics/Persistence;
    invoke-direct {p4, p1, p3}, Lnet/hockeyapp/android/metrics/Persistence;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/Sender;)V

    .line 131
    .restart local p4    # "persistence":Lnet/hockeyapp/android/metrics/Persistence;
    :goto_15
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {v0, p4}, Lnet/hockeyapp/android/metrics/Sender;->setPersistence(Lnet/hockeyapp/android/metrics/Persistence;)V

    .line 134
    if-nez p5, :cond_37

    .line 135
    new-instance v0, Lnet/hockeyapp/android/metrics/Channel;

    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-direct {v0, v1, p4}, Lnet/hockeyapp/android/metrics/Channel;-><init>(Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Persistence;)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    .line 141
    :goto_25
    invoke-virtual {p4}, Lnet/hockeyapp/android/metrics/Persistence;->hasFilesAvailable()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 142
    invoke-virtual {p4}, Lnet/hockeyapp/android/metrics/Persistence;->getSender()Lnet/hockeyapp/android/metrics/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    .line 144
    :cond_32
    return-void

    .line 127
    :cond_33
    invoke-virtual {p4, p3}, Lnet/hockeyapp/android/metrics/Persistence;->setSender(Lnet/hockeyapp/android/metrics/Sender;)V

    goto :goto_15

    .line 137
    :cond_37
    sput-object p5, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    goto :goto_25
.end method

.method static synthetic access$000()Lnet/hockeyapp/android/metrics/Channel;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-object v0
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/metrics/MetricsManager;)V
    .registers 1
    .param p0, "x0"    # Lnet/hockeyapp/android/metrics/MetricsManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->updateSession()V

    return-void
.end method

.method static synthetic access$300()J
    .registers 2

    .prologue
    .line 40
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected static createData(Lnet/hockeyapp/android/metrics/model/TelemetryData;)Lnet/hockeyapp/android/metrics/model/Data;
    .registers 3
    .param p0, "telemetryData"    # Lnet/hockeyapp/android/metrics/model/TelemetryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/metrics/model/TelemetryData;",
            ")",
            "Lnet/hockeyapp/android/metrics/model/Data",
            "<",
            "Lnet/hockeyapp/android/metrics/model/Domain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Data;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Data;-><init>()V

    .line 451
    .local v0, "data":Lnet/hockeyapp/android/metrics/model/Data;, "Lnet/hockeyapp/android/metrics/model/Data<Lnet/hockeyapp/android/metrics/model/Domain;>;"
    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/model/Data;->setBaseData(Lnet/hockeyapp/android/metrics/model/Domain;)V

    .line 452
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/metrics/model/Data;->setBaseType(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getEnvelopeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/hockeyapp/android/metrics/model/Data;->QualifiedName:Ljava/lang/String;

    .line 455
    return-object v0
.end method

.method public static disableUserMetrics()V
    .registers 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->setUserMetricsEnabled(Z)V

    .line 254
    return-void
.end method

.method public static enableUserMetrics()V
    .registers 1

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->setUserMetricsEnabled(Z)V

    .line 262
    return-void
.end method

.method private static getApplication()Landroid/app/Application;
    .registers 2

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "application":Landroid/app/Application;
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d

    .line 349
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "application":Landroid/app/Application;
    check-cast v0, Landroid/app/Application;

    .line 352
    .restart local v0    # "application":Landroid/app/Application;
    :cond_d
    return-object v0
.end method

.method protected static getChannel()Lnet/hockeyapp/android/metrics/Channel;
    .registers 1

    .prologue
    .line 365
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-object v0
.end method

.method protected static getInstance()Lnet/hockeyapp/android/metrics/MetricsManager;
    .registers 1

    .prologue
    .line 381
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    return-object v0
.end method

.method protected static getSender()Lnet/hockeyapp/android/metrics/Sender;
    .registers 1

    .prologue
    .line 373
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    return-object v0
.end method

.method private static getTime()J
    .registers 2

    .prologue
    .line 361
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isUserMetricsEnabled()Z
    .registers 1

    .prologue
    .line 265
    sget-boolean v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    return v0
.end method

.method public static register(Landroid/app/Application;)V
    .registers 4
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "appIdentifier":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_18

    .line 156
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_18
    invoke-static {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static register(Landroid/app/Application;Ljava/lang/String;)V
    .registers 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "appIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-static {p0, p1, v0, v0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V

    .line 171
    return-void
.end method

.method protected static register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
    .registers 14
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "sender"    # Lnet/hockeyapp/android/metrics/Sender;
    .param p3, "persistence"    # Lnet/hockeyapp/android/metrics/Persistence;
    .param p4, "channel"    # Lnet/hockeyapp/android/metrics/Channel;

    .prologue
    const/4 v7, 0x0

    .line 219
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    .line 220
    .local v0, "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    if-nez v0, :cond_4f

    .line 221
    sget-object v8, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 222
    :try_start_8
    sget-object v6, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_52

    .line 223
    .end local v0    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    .local v6, "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    if-nez v6, :cond_58

    .line 224
    :try_start_c
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 225
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/metrics/MetricsManager;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_55

    .line 227
    .end local v6    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    .restart local v0    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    :try_start_28
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    .line 229
    :goto_2f
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->sessionTrackingSupported()Z

    move-result v1

    if-nez v1, :cond_50

    const/4 v1, 0x1

    :goto_36
    iput-boolean v1, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    .line 230
    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    .line 231
    iget-boolean v1, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    if-nez v1, :cond_46

    .line 232
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/MetricsManager;->setSessionTrackingDisabled(Ljava/lang/Boolean;)V

    .line 235
    :cond_46
    monitor-exit v8
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_52

    .line 237
    new-instance v1, Lnet/hockeyapp/android/metrics/MetricsManager$1;

    invoke-direct {v1}, Lnet/hockeyapp/android/metrics/MetricsManager$1;-><init>()V

    invoke-static {v1}, Lnet/hockeyapp/android/PrivateEventManager;->addEventListener(Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;)V

    .line 246
    :cond_4f
    return-void

    :cond_50
    move v1, v7

    .line 229
    goto :goto_36

    .line 235
    :catchall_52
    move-exception v1

    :goto_53
    :try_start_53
    monitor-exit v8
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1

    .end local v0    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    .restart local v6    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    :catchall_55
    move-exception v1

    move-object v0, v6

    .end local v6    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    .restart local v0    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    goto :goto_53

    .end local v0    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    .restart local v6    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    :cond_58
    move-object v0, v6

    .end local v6    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    .restart local v0    # "result":Lnet/hockeyapp/android/metrics/MetricsManager;
    goto :goto_2f
.end method

.method public static register(Landroid/content/Context;Landroid/app/Application;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "application"    # Landroid/app/Application;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "appIdentifier":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 186
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_14
    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public static register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-static {p1, p2, v0, v0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V

    .line 204
    return-void
.end method

.method private registerTelemetryLifecycleCallbacks()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    if-nez v0, :cond_c

    .line 314
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/MetricsManager$1;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    .line 316
    :cond_c
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 317
    return-void
.end method

.method public static sessionTrackingEnabled()Z
    .registers 1

    .prologue
    .line 283
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    iget-boolean v0, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static setCustomServerURL(Ljava/lang/String;)V
    .registers 3
    .param p0, "serverURL"    # Ljava/lang/String;

    .prologue
    .line 334
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    if-eqz v0, :cond_a

    .line 335
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/Sender;->setCustomServerURL(Ljava/lang/String;)V

    .line 339
    :goto_9
    return-void

    .line 337
    :cond_a
    const-string v0, "HA-MetricsManager"

    const-string v1, "HockeyApp couldn\'t set the custom server url. Please register(...) the MetricsManager before setting the server URL."

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected static setSender(Lnet/hockeyapp/android/metrics/Sender;)V
    .registers 1
    .param p0, "sender"    # Lnet/hockeyapp/android/metrics/Sender;

    .prologue
    .line 377
    sput-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    .line 378
    return-void
.end method

.method public static setSessionTrackingDisabled(Ljava/lang/Boolean;)V
    .registers 4
    .param p0, "disabled"    # Ljava/lang/Boolean;

    .prologue
    .line 292
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-eqz v0, :cond_a

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 293
    :cond_a
    const-string v0, "HA-MetricsManager"

    const-string v1, "MetricsManager hasn\'t been registered or User Metrics has been disabled. No User Metrics will be collected!"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_11
    return-void

    .line 295
    :cond_12
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_15
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->sessionTrackingSupported()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 297
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    .line 300
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 301
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->registerTelemetryLifecycleCallbacks()V

    .line 307
    :cond_2e
    :goto_2e
    monitor-exit v1

    goto :goto_11

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_30

    throw v0

    .line 304
    :cond_33
    :try_start_33
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    .line 305
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->unregisterTelemetryLifecycleCallbacks()V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_30

    goto :goto_2e
.end method

.method private static setUserMetricsEnabled(Z)V
    .registers 2
    .param p0, "enabled"    # Z

    .prologue
    .line 269
    sput-boolean p0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    .line 270
    sget-boolean v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    if-eqz v0, :cond_c

    .line 271
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->registerTelemetryLifecycleCallbacks()V

    .line 275
    :goto_b
    return-void

    .line 273
    :cond_c
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->unregisterTelemetryLifecycleCallbacks()V

    goto :goto_b
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .registers 2
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 460
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p0, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 464
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .param p0, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 499
    :goto_6
    return-void

    .line 470
    :cond_7
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-nez v1, :cond_13

    .line 471
    const-string v1, "HA-MetricsManager"

    const-string v2, "MetricsManager hasn\'t been registered or User Metrics has been disabled. No User Metrics will be collected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 474
    :cond_13
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 475
    const-string v1, "User Metrics is disabled. Will not track event."

    invoke-static {v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;)V

    goto :goto_6

    .line 479
    :cond_1f
    :try_start_1f
    new-instance v1, Lnet/hockeyapp/android/metrics/MetricsManager$3;

    invoke-direct {v1, p0, p1, p2}, Lnet/hockeyapp/android/metrics/MetricsManager$3;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v1}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_27
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_6

    .line 495
    :catch_28
    move-exception v0

    .line 496
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "Could not track custom event. Executor rejected async task."

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private trackSessionState(Lnet/hockeyapp/android/metrics/model/SessionState;)V
    .registers 4
    .param p1, "sessionState"    # Lnet/hockeyapp/android/metrics/model/SessionState;

    .prologue
    .line 427
    :try_start_0
    new-instance v1, Lnet/hockeyapp/android/metrics/MetricsManager$2;

    invoke-direct {v1, p0, p1}, Lnet/hockeyapp/android/metrics/MetricsManager$2;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/model/SessionState;)V

    invoke-static {v1}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_8
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_8} :catch_9

    .line 441
    :goto_8
    return-void

    .line 437
    :catch_9
    move-exception v0

    .line 438
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "Could not track session state. Executor rejected async task."

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method private unregisterTelemetryLifecycleCallbacks()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    if-nez v0, :cond_5

    .line 326
    :goto_4
    return-void

    .line 324
    :cond_5
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    goto :goto_4
.end method

.method private updateSession()V
    .registers 11

    .prologue
    .line 391
    sget-object v6, Lnet/hockeyapp/android/metrics/MetricsManager;->ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 392
    .local v0, "count":I
    if-nez v0, :cond_21

    .line 393
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->sessionTrackingEnabled()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 394
    const-string v6, "HA-MetricsManager"

    const-string v7, "Starting & tracking session"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->renewSession()V

    .line 412
    :cond_18
    :goto_18
    return-void

    .line 397
    :cond_19
    const-string v6, "HA-MetricsManager"

    const-string v7, "Session management disabled by the developer"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 402
    :cond_21
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v2

    .line 403
    .local v2, "now":J
    sget-object v6, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    .line 404
    .local v4, "then":J
    sub-long v6, v2, v4

    sget-object v8, Lnet/hockeyapp/android/metrics/MetricsManager;->SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6a

    const/4 v1, 0x1

    .line 405
    .local v1, "shouldRenew":Z
    :goto_3d
    const-string v6, "HA-MetricsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking if we have to renew a session, time difference is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    if-eqz v1, :cond_18

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->sessionTrackingEnabled()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 408
    const-string v6, "HA-MetricsManager"

    const-string v7, "Renewing session"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->renewSession()V

    goto :goto_18

    .line 404
    .end local v1    # "shouldRenew":Z
    :cond_6a
    const/4 v1, 0x0

    goto :goto_3d
.end method


# virtual methods
.method protected renewSession()V
    .registers 3

    .prologue
    .line 415
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "sessionId":Ljava/lang/String;
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->renewSessionContext(Ljava/lang/String;)V

    .line 417
    sget-object v1, Lnet/hockeyapp/android/metrics/model/SessionState;->START:Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-direct {p0, v1}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackSessionState(Lnet/hockeyapp/android/metrics/model/SessionState;)V

    .line 418
    return-void
.end method

.method protected setChannel(Lnet/hockeyapp/android/metrics/Channel;)V
    .registers 2
    .param p1, "channel"    # Lnet/hockeyapp/android/metrics/Channel;

    .prologue
    .line 369
    sput-object p1, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    .line 370
    return-void
.end method

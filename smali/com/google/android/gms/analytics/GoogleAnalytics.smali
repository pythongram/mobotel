.class public final Lcom/google/android/gms/analytics/GoogleAnalytics;
.super Lcom/google/android/gms/analytics/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;,
        Lcom/google/android/gms/analytics/GoogleAnalytics$zza;
    }
.end annotation


# static fields
.field private static zzabG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzabH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/analytics/GoogleAnalytics$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzabI:Z

.field private zzabJ:Z

.field private volatile zzabK:Z

.field private zzabL:Z

.field private zztZ:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabG:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzsc;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabH:Ljava/util/Set;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsc;->zzan(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zzof()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    return-object v0
.end method

.method private zzmA()Lcom/google/android/gms/internal/zzry;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmn()Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zzmA()Lcom/google/android/gms/internal/zzry;

    move-result-object v0

    return-object v0
.end method

.method private zzmB()Lcom/google/android/gms/internal/zztn;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmn()Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zzmB()Lcom/google/android/gms/internal/zztn;

    move-result-object v0

    return-object v0
.end method

.method public static zzmx()V
    .registers 3

    const-class v1, Lcom/google/android/gms/analytics/GoogleAnalytics;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabG:Ljava/util/List;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabG:Ljava/util/List;

    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1d

    return-void
.end method


# virtual methods
.method public dispatchLocalHits()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmA()Lcom/google/android/gms/internal/zzry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzry;->zznL()V

    return-void
.end method

.method public enableAutoActivityReports(Landroid/app/Application;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabI:Z

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics$zzb;-><init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabI:Z

    :cond_11
    return-void
.end method

.method public getAppOptOut()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabK:Z

    return v0
.end method

.method public getLogger()Lcom/google/android/gms/analytics/Logger;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zztc;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmw()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zztZ:Z

    return-void
.end method

.method public isDryRunEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabJ:Z

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zztZ:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public newTracker(I)Lcom/google/android/gms/analytics/Tracker;
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmn()Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/internal/zzsc;Ljava/lang/String;Lcom/google/android/gms/internal/zztb;)V

    if-lez p1, :cond_22

    new-instance v0, Lcom/google/android/gms/internal/zztk;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmn()Lcom/google/android/gms/internal/zzsc;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zztk;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zztk;->zzaI(I)Lcom/google/android/gms/internal/zzsn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zztl;

    if-eqz v0, :cond_22

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->zza(Lcom/google/android/gms/internal/zztl;)V

    :cond_22
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/Tracker;->initialize()V

    monitor-exit p0

    return-object v1

    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmn()Lcom/google/android/gms/internal/zzsc;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/internal/zzsc;Ljava/lang/String;Lcom/google/android/gms/internal/zztb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker;->initialize()V

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public reportActivityStart(Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabI:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzm(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public reportActivityStop(Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabI:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzn(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public setAppOptOut(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabK:Z

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabK:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmA()Lcom/google/android/gms/internal/zzry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzry;->zznK()V

    :cond_d
    return-void
.end method

.method public setDryRun(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabJ:Z

    return-void
.end method

.method public setLocalDispatchPeriod(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmA()Lcom/google/android/gms/internal/zzry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzry;->setLocalDispatchPeriod(I)V

    return-void
.end method

.method public setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zztc;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabL:Z

    if-nez v0, :cond_40

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafl:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzsw;->zzafl:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x70

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DEBUG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabL:Z

    :cond_40
    return-void
.end method

.method zza(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabH:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmn()Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_16

    check-cast v0, Landroid/app/Application;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->enableAutoActivityReports(Landroid/app/Application;)V

    :cond_16
    return-void
.end method

.method zzb(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabH:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method zzm(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabH:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;->zzo(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method zzmw()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmB()Lcom/google/android/gms/internal/zztn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztn;->zzpI()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztn;->zzpM()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztn;->zzpN()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztn;->zzpI()Z

    return-void
.end method

.method public zzmy()Ljava/lang/String;
    .registers 2

    const-string v0, "getClientId can not be called from the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdk(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmn()Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zzoi()Lcom/google/android/gms/internal/zzsk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsk;->zzoQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzmz()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmA()Lcom/google/android/gms/internal/zzry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzry;->zznM()Z

    return-void
.end method

.method zzn(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzabH:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics$zza;->zzp(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

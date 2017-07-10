.class public final Lcom/google/android/gms/internal/zzth;
.super Ljava/lang/Object;


# static fields
.field static zzabw:Lcom/google/android/gms/internal/zzbay;

.field static zzabx:Ljava/lang/Boolean;

.field static zztX:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzth;->zztX:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzak(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzth;->zzabx:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/internal/zzth;->zzabx:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const-string v0, "com.google.android.gms.analytics.AnalyticsReceiver"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zztm;->zza(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/zzth;->zzabx:Ljava/lang/Boolean;

    goto :goto_d
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzsc;->zzan(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    if-nez p2, :cond_10

    const-string v1, "AnalyticsReceiver called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztd;->zzbS(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Local AnalyticsReceiver got"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zztd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {p1}, Lcom/google/android/gms/internal/zzti;->zzal(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/google/android/gms/internal/zzth;->zztX:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3e
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez v1, :cond_48

    monitor-exit v3

    goto :goto_f

    :catchall_45
    move-exception v0

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    :try_start_48
    sget-object v1, Lcom/google/android/gms/internal/zzth;->zzabw:Lcom/google/android/gms/internal/zzbay;

    if-nez v1, :cond_5c

    new-instance v1, Lcom/google/android/gms/internal/zzbay;

    const/4 v2, 0x1

    const-string v4, "Analytics WakeLock"

    invoke-direct {v1, p1, v2, v4}, Lcom/google/android/gms/internal/zzbay;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/zzth;->zzabw:Lcom/google/android/gms/internal/zzbay;

    sget-object v1, Lcom/google/android/gms/internal/zzth;->zzabw:Lcom/google/android/gms/internal/zzbay;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbay;->setReferenceCounted(Z)V

    :cond_5c
    sget-object v1, Lcom/google/android/gms/internal/zzth;->zzabw:Lcom/google/android/gms/internal/zzbay;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/zzbay;->acquire(J)V
    :try_end_63
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_63} :catch_65
    .catchall {:try_start_48 .. :try_end_63} :catchall_45

    :goto_63
    :try_start_63
    monitor-exit v3

    goto :goto_f

    :catch_65
    move-exception v1

    const-string v1, "Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztd;->zzbS(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_45

    goto :goto_63
.end method

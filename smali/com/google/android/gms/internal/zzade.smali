.class public Lcom/google/android/gms/internal/zzade;
.super Ljava/lang/Object;


# static fields
.field private static zzaIy:Landroid/content/Context;

.field private static zzaIz:Ljava/lang/Boolean;


# direct methods
.method public static declared-synchronized zzbg(Landroid/content/Context;)Z
    .registers 5

    const-class v1, Lcom/google/android/gms/internal/zzade;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzade;->zzaIy:Landroid/content/Context;

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/google/android/gms/internal/zzade;->zzaIz:Ljava/lang/Boolean;

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/google/android/gms/internal/zzade;->zzaIy:Landroid/content/Context;

    if-ne v2, v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/zzade;->zzaIz:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_40

    move-result v0

    :goto_19
    monitor-exit v1

    return v0

    :cond_1b
    const/4 v2, 0x0

    :try_start_1c
    sput-object v2, Lcom/google/android/gms/internal/zzade;->zzaIz:Ljava/lang/Boolean;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_40

    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/zzade;->zzaIz:Ljava/lang/Boolean;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_2e} :catch_37
    .catchall {:try_start_1e .. :try_end_2e} :catchall_40

    :goto_2e
    :try_start_2e
    sput-object v0, Lcom/google/android/gms/internal/zzade;->zzaIy:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/zzade;->zzaIz:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_19

    :catch_37
    move-exception v2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/zzade;->zzaIz:Ljava/lang/Boolean;
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_40

    goto :goto_2e

    :catchall_40
    move-exception v0

    monitor-exit v1

    throw v0
.end method

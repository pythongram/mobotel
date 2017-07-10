.class final Lcom/evernote/android/job/util/GcmAvailableHelper;
.super Ljava/lang/Object;
.source "GcmAvailableHelper.java"


# static fields
.field private static final ACTION_TASK_READY:Ljava/lang/String; = "com.google.android.gms.gcm.ACTION_TASK_READY"

.field private static final GCM_IN_CLASSPATH:Z

.field private static final GCM_PERMISSION:Ljava/lang/String; = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE"

.field private static checkedServiceEnabled:Z

.field private static gcmServiceAvailable:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    const/4 v2, -0x1

    sput v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 34
    :try_start_3
    const-string v2, "com.google.android.gms.gcm.GcmNetworkManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_c

    .line 35
    const/4 v0, 0x1

    .line 39
    .local v0, "gcmInClasspath":Z
    :goto_9
    sput-boolean v0, Lcom/evernote/android/job/util/GcmAvailableHelper;->GCM_IN_CLASSPATH:Z

    .line 40
    return-void

    .line 36
    .end local v0    # "gcmInClasspath":Z
    :catch_c
    move-exception v1

    .line 37
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .restart local v0    # "gcmInClasspath":Z
    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method private static hasPermission(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 88
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 96
    :cond_9
    :goto_9
    return v1

    .line 91
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 92
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_e

    const-string v3, "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE"

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v3, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v3, :cond_e

    .line 93
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public static isGcmApiSupported(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    :try_start_2
    sget-boolean v3, Lcom/evernote/android/job/util/GcmAvailableHelper;->checkedServiceEnabled:Z

    if-nez v3, :cond_e

    .line 45
    const/4 v3, 0x1

    sput-boolean v3, Lcom/evernote/android/job/util/GcmAvailableHelper;->checkedServiceEnabled:Z

    .line 46
    sget-boolean v3, Lcom/evernote/android/job/util/GcmAvailableHelper;->GCM_IN_CLASSPATH:Z

    invoke-static {p0, v3}, Lcom/evernote/android/job/util/GcmAvailableHelper;->setServiceEnabled(Landroid/content/Context;Z)V

    .line 49
    :cond_e
    sget-boolean v3, Lcom/evernote/android/job/util/GcmAvailableHelper;->GCM_IN_CLASSPATH:Z

    if-eqz v3, :cond_23

    .line 50
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_23

    .line 51
    invoke-static {p0}, Lcom/evernote/android/job/util/GcmAvailableHelper;->isGcmServiceRegistered(Landroid/content/Context;)I
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1f} :catch_25

    move-result v3

    if-nez v3, :cond_23

    .line 56
    :goto_22
    return v1

    :cond_23
    move v1, v2

    .line 51
    goto :goto_22

    .line 52
    :catch_25
    move-exception v0

    .line 55
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lnet/vrallev/android/cat/Cat;->w(Ljava/lang/Throwable;)V

    move v1, v2

    .line 56
    goto :goto_22
.end method

.method private static isGcmServiceRegistered(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    if-gez v2, :cond_53

    .line 62
    const-class v3, Lcom/evernote/android/job/util/JobApi;

    monitor-enter v3

    .line 63
    :try_start_7
    sget v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    if-gez v2, :cond_52

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v1}, Lcom/evernote/android/job/util/GcmAvailableHelper;->hasPermission(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 67
    const/4 v2, 0x1

    sput v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 68
    sget v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    monitor-exit v3

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_27
    return v2

    .line 71
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_28
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/evernote/android/job/util/GcmAvailableHelper;->hasPermission(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 75
    const/4 v2, 0x1

    sput v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 76
    sget v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    monitor-exit v3

    goto :goto_27

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_4c
    move-exception v2

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4c

    throw v2

    .line 79
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4f
    const/4 v2, 0x0

    :try_start_50
    sput v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4c

    .line 84
    :cond_53
    sget v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    goto :goto_27
.end method

.method private static setServiceEnabled(Landroid/content/Context;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 104
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lcom/evernote/android/job/gcm/JobProxyGcm;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".PlatformGcmService"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 108
    .local v2, "componentEnabled":I
    packed-switch v2, :pswitch_data_4e

    .line 129
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "componentEnabled":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2d
    :goto_2d
    return-void

    .line 110
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v2    # "componentEnabled":I
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :pswitch_2e
    if-nez p1, :cond_2d

    .line 111
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 112
    const-string v5, "GCM service disabled"

    invoke-static {v5}, Lnet/vrallev/android/cat/Cat;->i(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_2d

    .line 125
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "componentEnabled":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_3b
    move-exception v4

    .line 127
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {v4}, Lnet/vrallev/android/cat/Cat;->e(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 118
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v2    # "componentEnabled":I
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :pswitch_40
    if-eqz p1, :cond_2d

    .line 119
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_44
    invoke-virtual {v3, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 120
    const-string v5, "GCM service enabled"

    invoke-static {v5}, Lnet/vrallev/android/cat/Cat;->i(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4c} :catch_3b

    goto :goto_2d

    .line 108
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_40
        :pswitch_2e
        :pswitch_40
    .end packed-switch
.end method

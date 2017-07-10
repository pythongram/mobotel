.class Lcom/google/android/gms/tagmanager/zzdc;
.super Lcom/google/android/gms/tagmanager/zzdb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzdc$zzb;,
        Lcom/google/android/gms/tagmanager/zzdc$zza;
    }
.end annotation


# static fields
.field private static final zzbIa:Ljava/lang/Object;

.field private static zzbIm:Lcom/google/android/gms/tagmanager/zzdc;


# instance fields
.field private connected:Z

.field private zzbIb:Landroid/content/Context;

.field private zzbIc:Lcom/google/android/gms/tagmanager/zzaw;

.field private volatile zzbId:Lcom/google/android/gms/tagmanager/zzau;

.field private zzbIe:I

.field private zzbIf:Z

.field private zzbIg:Z

.field private zzbIh:Z

.field private zzbIi:Lcom/google/android/gms/tagmanager/zzax;

.field private zzbIj:Lcom/google/android/gms/tagmanager/zzdc$zza;

.field private zzbIk:Lcom/google/android/gms/tagmanager/zzbt;

.field private zzbIl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIa:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdb;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIe:I

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIf:Z

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->connected:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIh:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzdc$1;-><init>(Lcom/google/android/gms/tagmanager/zzdc;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIi:Lcom/google/android/gms/tagmanager/zzax;

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIl:Z

    return-void
.end method

.method private isPowerSaveMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIl:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->connected:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIe:I

    if-gtz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private zzRA()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdc$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/zzdc$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzdc;Lcom/google/android/gms/tagmanager/zzdc$1;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIj:Lcom/google/android/gms/tagmanager/zzdc$zza;

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIe:I

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIj:Lcom/google/android/gms/tagmanager/zzdc$zza;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIe:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzdc$zza;->zzy(J)V

    :cond_14
    return-void
.end method

.method static synthetic zzRC()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIa:Ljava/lang/Object;

    return-object v0
.end method

.method public static zzRy()Lcom/google/android/gms/tagmanager/zzdc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIm:Lcom/google/android/gms/tagmanager/zzdc;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdc;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdc;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIm:Lcom/google/android/gms/tagmanager/zzdc;

    :cond_b
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIm:Lcom/google/android/gms/tagmanager/zzdc;

    return-object v0
.end method

.method private zzRz()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzbt;-><init>(Lcom/google/android/gms/tagmanager/zzdb;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIk:Lcom/google/android/gms/tagmanager/zzbt;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIk:Lcom/google/android/gms/tagmanager/zzbt;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIb:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbt;->zzcb(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzdc;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIb:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzdc;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzdc;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIe:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzdc;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->connected:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzdc;)Lcom/google/android/gms/tagmanager/zzaw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIc:Lcom/google/android/gms/tagmanager/zzaw;

    return-object v0
.end method

.method private zzoH()V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIj:Lcom/google/android/gms/tagmanager/zzdc$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzdc$zza;->cancel()V

    const-string v0, "PowerSaveMode initiated."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIj:Lcom/google/android/gms/tagmanager/zzdc$zza;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIe:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzdc$zza;->zzy(J)V

    const-string v0, "PowerSaveMode terminated."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    goto :goto_10
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIg:Z

    if-nez v0, :cond_f

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIf:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1a

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbId:Lcom/google/android/gms/tagmanager/zzau;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzdc$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzdc$2;-><init>(Lcom/google/android/gms/tagmanager/zzdc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzau;->zzp(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1a

    goto :goto_d

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zzRB()Lcom/google/android/gms/tagmanager/zzaw;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIc:Lcom/google/android/gms/tagmanager/zzaw;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIb:Landroid/content/Context;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_14
    :try_start_14
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIi:Lcom/google/android/gms/tagmanager/zzax;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIb:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzcg;-><init>(Lcom/google/android/gms/tagmanager/zzax;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIc:Lcom/google/android/gms/tagmanager/zzaw;

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIj:Lcom/google/android/gms/tagmanager/zzdc$zza;

    if-nez v0, :cond_26

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->zzRA()V

    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIg:Z

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIf:Z

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdc;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIf:Z

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIk:Lcom/google/android/gms/tagmanager/zzbt;

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIh:Z

    if-eqz v0, :cond_3e

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->zzRz()V

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIc:Lcom/google/android/gms/tagmanager/zzaw;
    :try_end_40
    .catchall {:try_start_14 .. :try_end_40} :catchall_11

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzau;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIb:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIb:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbId:Lcom/google/android/gms/tagmanager/zzau;

    if-nez v0, :cond_5

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbId:Lcom/google/android/gms/tagmanager/zzau;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    goto :goto_5

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzaT(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIl:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzdc;->zze(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zze(ZZ)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->isPowerSaveMode()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIl:Z

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzdc;->connected:Z

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->isPowerSaveMode()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_15

    move-result v1

    if-ne v1, v0, :cond_11

    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->zzoH()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_f

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zznO()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbIj:Lcom/google/android/gms/tagmanager/zzdc$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzdc$zza;->zzRD()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

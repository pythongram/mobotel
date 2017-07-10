.class public Lcom/google/android/gms/tagmanager/zzp;
.super Lcom/google/android/gms/internal/zzaaf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzp$zzd;,
        Lcom/google/android/gms/tagmanager/zzp$zzc;,
        Lcom/google/android/gms/tagmanager/zzp$zzb;,
        Lcom/google/android/gms/tagmanager/zzp$zza;,
        Lcom/google/android/gms/tagmanager/zzp$zze;,
        Lcom/google/android/gms/tagmanager/zzp$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaaf",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbEU:Ljava/lang/String;

.field private zzbEZ:J

.field private final zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

.field private final zzbFj:Lcom/google/android/gms/tagmanager/zzp$zzd;

.field private final zzbFk:Lcom/google/android/gms/tagmanager/zzcl;

.field private final zzbFl:I

.field private final zzbFm:Lcom/google/android/gms/tagmanager/zzq;

.field private zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

.field private zzbFo:Lcom/google/android/gms/internal/zzbje;

.field private volatile zzbFp:Lcom/google/android/gms/tagmanager/zzo;

.field private volatile zzbFq:Z

.field private zzbFr:Lcom/google/android/gms/internal/zzaj$zzj;

.field private zzbFs:Ljava/lang/String;

.field private zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

.field private zzbFu:Lcom/google/android/gms/tagmanager/zzp$zza;

.field private final zzrs:Landroid/os/Looper;

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzp$zzf;Lcom/google/android/gms/tagmanager/zzp$zze;Lcom/google/android/gms/internal/zzbje;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/tagmanager/zzcl;Lcom/google/android/gms/tagmanager/zzq;)V
    .registers 14

    if-nez p3, :cond_46

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaaf;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p3, :cond_13

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_13
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrs:Landroid/os/Looper;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEU:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFl:I

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFo:Lcom/google/android/gms/internal/zzbje;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzp$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzd;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFj:Lcom/google/android/gms/tagmanager/zzp$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zzaj$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaj$zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFr:Lcom/google/android/gms/internal/zzaj$zzj;

    iput-object p9, p0, Lcom/google/android/gms/tagmanager/zzp;->zzuP:Lcom/google/android/gms/common/util/zze;

    iput-object p10, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFk:Lcom/google/android/gms/tagmanager/zzcl;

    iput-object p11, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFm:Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzQn()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzRe()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->zzRg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzgW(Ljava/lang/String;)V

    :cond_45
    return-void

    :cond_46
    move-object v0, p3

    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzt;)V
    .registers 25

    new-instance v4, Lcom/google/android/gms/tagmanager/zzcv;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/tagmanager/zzcv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v16, Lcom/google/android/gms/tagmanager/zzcu;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzcu;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzt;)V

    new-instance v14, Lcom/google/android/gms/internal/zzbje;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzbje;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v15

    new-instance v5, Lcom/google/android/gms/tagmanager/zzbm;

    const/4 v6, 0x1

    const/4 v7, 0x5

    const-wide/32 v8, 0xdbba0

    const-wide/16 v10, 0x1388

    const-string v12, "refreshing"

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v13

    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/tagmanager/zzbm;-><init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/zze;)V

    new-instance v17, Lcom/google/android/gms/tagmanager/zzq;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object v12, v4

    move-object/from16 v13, v16

    move-object/from16 v16, v5

    invoke-direct/range {v6 .. v17}, Lcom/google/android/gms/tagmanager/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzp$zzf;Lcom/google/android/gms/tagmanager/zzp$zze;Lcom/google/android/gms/internal/zzbje;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/tagmanager/zzcl;Lcom/google/android/gms/tagmanager/zzq;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/tagmanager/zzp;->zzbFo:Lcom/google/android/gms/internal/zzbje;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/tagmanager/zzt;->zzQv()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzbje;->zzig(Ljava/lang/String;)V

    return-void
.end method

.method private zzQn()Z
    .registers 4

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcj;->zzRe()Lcom/google/android/gms/tagmanager/zzcj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->zzRf()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHi:Lcom/google/android/gms/tagmanager/zzcj$zza;

    if-eq v1, v2, :cond_14

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->zzRf()Lcom/google/android/gms/tagmanager/zzcj$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcj$zza;->zzbHj:Lcom/google/android/gms/tagmanager/zzcj$zza;

    if-ne v1, v2, :cond_22

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEU:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcj;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzcl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFk:Lcom/google/android/gms/tagmanager/zzcl;

    return-object v0
.end method

.method private declared-synchronized zza(Lcom/google/android/gms/internal/zzaj$zzj;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/google/android/gms/internal/zzbjd$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbjd$zza;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEZ:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzbjd$zza;->zzbNe:J

    new-instance v1, Lcom/google/android/gms/internal/zzaj$zzf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaj$zzf;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbjd$zza;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzbjd$zza;->zzbNf:Lcom/google/android/gms/internal/zzaj$zzj;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzb(Lcom/google/android/gms/internal/zzbjd$zza;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized zza(Lcom/google/android/gms/internal/zzaj$zzj;JZ)V
    .registers 13

    monitor-enter p0

    if-eqz p4, :cond_5

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFq:Z

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_68

    if-nez v0, :cond_11

    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFr:Lcom/google/android/gms/internal/zzaj$zzj;

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEZ:J

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFm:Lcom/google/android/gms/tagmanager/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzq;->zzQq()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEZ:J

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/zzp;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzay(J)V

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEU:Ljava/lang/String;

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzaj$zzj;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    if-nez v1, :cond_6b

    new-instance v1, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrs:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFj:Lcom/google/android/gms/tagmanager/zzp$zzd;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    :goto_54
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFu:Lcom/google/android/gms/tagmanager/zzp$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzp$zza;->zzb(Lcom/google/android/gms/tagmanager/Container;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V
    :try_end_67
    .catchall {:try_start_11 .. :try_end_67} :catchall_68

    goto :goto_f

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6b
    :try_start_6b
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzo;->zza(Lcom/google/android/gms/tagmanager/Container;)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_68

    goto :goto_54
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzp;->zzay(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaj$zzj;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/internal/zzaj$zzj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaj$zzj;JZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/internal/zzaj$zzj;JZ)V

    return-void
.end method

.method private zzaR(Z)V
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzp$zzb;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzp$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zza(Lcom/google/android/gms/tagmanager/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzp$zzc;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzp$zzc;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zza(Lcom/google/android/gms/tagmanager/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFl:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zznz(I)Lcom/google/android/gms/internal/zzbjf$zzc;

    move-result-object v6

    if-eqz v6, :cond_3d

    new-instance v7, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v8, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v9, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrs:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEU:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzbjf$zzc;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFj:Lcom/google/android/gms/tagmanager/zzp$zzd;

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    :cond_3d
    new-instance v0, Lcom/google/android/gms/tagmanager/zzp$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzp$3;-><init>(Lcom/google/android/gms/tagmanager/zzp;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFu:Lcom/google/android/gms/tagmanager/zzp$zza;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzQn()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzf(JLjava/lang/String;)V

    :goto_51
    return-void

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzQp()V

    goto :goto_51
.end method

.method private declared-synchronized zzay(J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    if-nez v0, :cond_c

    const-string v0, "Refresh requested, but no network load scheduler."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbh(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFr:Lcom/google/android/gms/internal/zzaj$zzj;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaj$zzj;->zzls:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzf(JLjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_a

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFm:Lcom/google/android/gms/tagmanager/zzq;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/common/util/zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzp;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFq:Z

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzaj$zzj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFr:Lcom/google/android/gms/internal/zzaj$zzj;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/tagmanager/zzp;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEZ:J

    return-wide v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/tagmanager/zzp;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzQn()Z

    move-result v0

    return v0
.end method


# virtual methods
.method declared-synchronized zzQh()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFs:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzQk()V
    .registers 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFl:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zznz(I)Lcom/google/android/gms/internal/zzbjf$zzc;

    move-result-object v6

    if-eqz v6, :cond_32

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbEU:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzbjf$zzc;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFg:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzrs:Landroid/os/Looper;

    new-instance v4, Lcom/google/android/gms/tagmanager/zzp$2;

    invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/zzp$2;-><init>(Lcom/google/android/gms/tagmanager/zzp;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :goto_2d
    iput-object v7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFn:Lcom/google/android/gms/tagmanager/zzp$zzf;

    return-void

    :cond_32
    const-string v0, "Default was requested, but no default container was found"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzbN(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_2d
.end method

.method public zzQl()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzaR(Z)V

    return-void
.end method

.method public zzQm()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzaR(Z)V

    return-void
.end method

.method protected zzbN(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFp:Lcom/google/android/gms/tagmanager/zzo;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazA:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_10

    const-string v0, "timer expired: setting result to failure"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    :cond_10
    new-instance v0, Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_6
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zzbN(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized zzgW(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzbFt:Lcom/google/android/gms/tagmanager/zzp$zze;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzgZ(Ljava/lang/String;)V
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

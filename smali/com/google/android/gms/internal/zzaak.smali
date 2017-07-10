.class public Lcom/google/android/gms/internal/zzaak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzabc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaak$zzb;,
        Lcom/google/android/gms/internal/zzaak$zza;
    }
.end annotation


# instance fields
.field private final zzaAG:Ljava/util/concurrent/locks/Lock;

.field private final zzaAL:Lcom/google/android/gms/common/internal/zzg;

.field private final zzaAM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/internal/zzaaj",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzaAN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/internal/zzaaj",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzaAO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaAP:Lcom/google/android/gms/internal/zzaat;

.field private final zzaAQ:Lcom/google/android/gms/common/zze;

.field private final zzaAR:Ljava/util/concurrent/locks/Condition;

.field private final zzaAS:Z

.field private final zzaAT:Z

.field private final zzaAU:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzaad$zza",
            "<**>;>;"
        }
    .end annotation
.end field

.field private zzaAV:Z

.field private zzaAW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzzz",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzzz",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

.field private zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

.field private final zzayX:Lcom/google/android/gms/internal/zzaax;

.field private final zzrs:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zze;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzaat;Z)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zze;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzbai;",
            "Lcom/google/android/gms/internal/zzbaj;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzaag;",
            ">;",
            "Lcom/google/android/gms/internal/zzaat;",
            "Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaak;->zzrs:Landroid/os/Looper;

    invoke-interface/range {p2 .. p2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaak;->zzaAR:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaak;->zzaAQ:Lcom/google/android/gms/common/zze;

    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaak;->zzaAO:Ljava/util/Map;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzaak;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    move/from16 v0, p11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzaak;->zzaAS:Z

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v4

    invoke-interface {v14, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_71
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzaag;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzaag;->zzaxf:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v15, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    :cond_8c
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v5, v3

    move v7, v4

    move v3, v2

    :goto_9a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Api;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v6}, Lcom/google/android/gms/common/api/Api$zze;->zzvh()Z

    move-result v2

    if-eqz v2, :cond_108

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaak;->zzaAO:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_123

    const/4 v7, 0x1

    move v12, v5

    move v13, v7

    :goto_d1
    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzaag;

    new-instance v2, Lcom/google/android/gms/internal/zzaaj;

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/zzaaj;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzaag;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Lcom/google/android/gms/common/api/Api$zze;->zzrd()Z

    move-result v3

    if-eqz v3, :cond_104

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_104
    move v3, v11

    move v5, v12

    move v7, v13

    goto :goto_9a

    :cond_108
    const/4 v5, 0x0

    move v11, v3

    move v12, v5

    move v13, v7

    goto :goto_d1

    :cond_10d
    if-eqz v3, :cond_121

    if-nez v5, :cond_121

    if-nez v7, :cond_121

    const/4 v2, 0x1

    :goto_114
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzaak;->zzaAT:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzaax;->zzww()Lcom/google/android/gms/internal/zzaax;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    return-void

    :cond_121
    const/4 v2, 0x0

    goto :goto_114

    :cond_123
    move v12, v5

    move v13, v7

    goto :goto_d1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaak;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaak;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaak;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzaaj;Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaj",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAO:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaaj;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaaj;->zzvU()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzvh()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAQ:Lcom/google/android/gms/common/zze;

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zze;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaak;Lcom/google/android/gms/internal/zzaaj;Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaak;->zza(Lcom/google/android/gms/internal/zzaaj;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaak;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    return p1
.end method

.method private zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api$zzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaj;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_24
    return-object v0

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_24

    :catchall_2c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaak;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaak;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzaad$zza;)Z
    .registers 8
    .param p1    # Lcom/google/android/gms/internal/zzaad$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzaad$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "+",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;>(TT;)Z"
        }
    .end annotation

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    if-ne v1, v5, :cond_34

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaj;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaat;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzzz;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v1, v5, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzaad$zza;->zzB(Lcom/google/android/gms/common/api/Status;)V

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzaak;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAT:Z

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzaak;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaak;->zzvX()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzaak;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzaak;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaak;->zzvV()V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzaak;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaak;->zzvW()V

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzaak;)Lcom/google/android/gms/internal/zzaat;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzaak;)Ljava/util/concurrent/locks/Condition;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAR:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzaak;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    return-object v0
.end method

.method private zzvV()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaat;->zzaBR:Ljava/util/Set;

    :goto_c
    return-void

    :cond_d
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzg;->zzxL()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzg;->zzxN()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaak;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzg$zza;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzg$zza;->zzakq:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_26

    :cond_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaat;->zzaBR:Ljava/util/Set;

    goto :goto_c
.end method

.method private zzvW()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaad$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    goto :goto_0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaat;->zzo(Landroid/os/Bundle;)V

    return-void
.end method

.method private zzvX()Lcom/google/android/gms/common/ConnectionResult;
    .registers 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v0

    move-object v5, v1

    move v2, v0

    move-object v3, v1

    :cond_10
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaj;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaj;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAO:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAQ:Lcom/google/android/gms/common/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/zze;->isUserResolvableError(I)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_52
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/4 v8, 0x4

    if-ne v1, v8, :cond_6c

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAS:Z

    if-eqz v1, :cond_6c

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/Api;->zzve()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v1

    if-eqz v5, :cond_69

    if-le v4, v1, :cond_10

    :cond_69
    move v4, v1

    move-object v5, v0

    goto :goto_10

    :cond_6c
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/Api;->zzve()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v1

    if-eqz v3, :cond_78

    if-le v2, v1, :cond_87

    :cond_78
    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_7b
    move v2, v0

    move-object v3, v1

    goto :goto_10

    :cond_7e
    if-eqz v3, :cond_85

    if-eqz v5, :cond_85

    if-le v2, v4, :cond_85

    :goto_84
    return-object v5

    :cond_85
    move-object v5, v3

    goto :goto_84

    :cond_87
    move v0, v2

    move-object v1, v3

    goto :goto_7b
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->connect()V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_20

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAR:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_4

    :catch_10
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzayj:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_30
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->isConnecting()Z

    move-result v2

    if-eqz v2, :cond_37

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_20

    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->disconnect()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1f
    return-object v0

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaak;->zzaAR:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_25} :catch_27

    move-result-wide v0

    goto :goto_8

    :catch_27
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f

    :cond_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzayj:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_47
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f
.end method

.method public connect()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_45

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax;->zzvx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaax;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzadb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaak;->zzrs:Landroid/os/Looper;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzadb;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/internal/zzaak$zza;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/zzaak$zza;-><init>(Lcom/google/android/gms/internal/zzaak;Lcom/google/android/gms/internal/zzaak$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_45

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_e

    :catchall_45
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaak$zzb;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaad$zza;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaad$zza;->zza(Lcom/google/android/gms/internal/zzaby$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaad$zza;->cancel()V
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_35

    goto :goto_1d

    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAR:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_35

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_16

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_e

    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isConnecting()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_16

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_e

    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/zzaad$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzaad$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAS:Z

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaak;->zzd(Lcom/google/android/gms/internal/zzaad$zza;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-object p1

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->isConnected()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAU:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaat;->zzaBW:Lcom/google/android/gms/internal/zzaby;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaby;->zzb(Lcom/google/android/gms/internal/zzaaf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaaj;->doRead(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object p1

    goto :goto_a
.end method

.method public zza(Lcom/google/android/gms/internal/zzabq;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaak;->zzvN()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax;->zzvx()V

    new-instance v0, Lcom/google/android/gms/internal/zzaak$zzb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaak$zzb;-><init>(Lcom/google/android/gms/internal/zzaak;Lcom/google/android/gms/internal/zzabq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaax;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzadb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaak;->zzrs:Landroid/os/Looper;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzadb;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_41

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_39

    :catchall_41
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/zzaad$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzaad$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAS:Z

    if-eqz v1, :cond_f

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaak;->zzd(Lcom/google/android/gms/internal/zzaad$zza;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    return-object p1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAP:Lcom/google/android/gms/internal/zzaat;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaat;->zzaBW:Lcom/google/android/gms/internal/zzaby;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzaby;->zzb(Lcom/google/android/gms/internal/zzaaf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAM:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaaj;->doWrite(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object p1

    goto :goto_e
.end method

.method public zzvM()V
    .registers 1

    return-void
.end method

.method public zzvN()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAV:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAS:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_45

    if-nez v0, :cond_15

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    :goto_14
    return v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaak;->zzb(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_45

    move-result v0

    if-nez v0, :cond_1f

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    goto :goto_14

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    goto :goto_14

    :catchall_45
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzvn()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax;->zzvn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaak$zzb;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAY:Lcom/google/android/gms/internal/zzaak$zzb;

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    if-nez v0, :cond_27

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    :cond_27
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaaj;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4d

    goto :goto_37

    :catchall_4d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAW:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaak;->zzaAX:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_4d

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaak;->zzaAG:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

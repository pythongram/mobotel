.class public abstract Lcom/google/android/gms/common/internal/zzf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzf$zzg;,
        Lcom/google/android/gms/common/internal/zzf$zza;,
        Lcom/google/android/gms/common/internal/zzf$zzj;,
        Lcom/google/android/gms/common/internal/zzf$zzk;,
        Lcom/google/android/gms/common/internal/zzf$zzi;,
        Lcom/google/android/gms/common/internal/zzf$zze;,
        Lcom/google/android/gms/common/internal/zzf$zzd;,
        Lcom/google/android/gms/common/internal/zzf$zzf;,
        Lcom/google/android/gms/common/internal/zzf$zzc;,
        Lcom/google/android/gms/common/internal/zzf$zzb;,
        Lcom/google/android/gms/common/internal/zzf$zzh;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final zzaFs:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final zzaAQ:Lcom/google/android/gms/common/zze;

.field private zzaFa:I

.field private zzaFb:J

.field private zzaFc:J

.field private zzaFd:I

.field private zzaFe:J

.field private final zzaFf:Lcom/google/android/gms/common/internal/zzn;

.field private final zzaFg:Ljava/lang/Object;

.field private zzaFh:Lcom/google/android/gms/common/internal/zzv;

.field protected zzaFi:Lcom/google/android/gms/common/internal/zzf$zzf;

.field private zzaFj:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzaFk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/zzf$zze",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zzaFl:Lcom/google/android/gms/common/internal/zzf$zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzf$zzh;"
        }
    .end annotation
.end field

.field private zzaFm:I

.field private final zzaFn:Lcom/google/android/gms/common/internal/zzf$zzb;

.field private final zzaFo:Lcom/google/android/gms/common/internal/zzf$zzc;

.field private final zzaFp:I

.field private final zzaFq:Ljava/lang/String;

.field protected zzaFr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzrJ:Ljava/lang/Object;

.field private final zzrs:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/zzf;->zzaFs:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;Ljava/lang/String;)V
    .registers 16

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzn;->zzaU(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzn;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/zze;->zzuY()Lcom/google/android/gms/common/zze;

    move-result-object v4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/zzf$zzb;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/internal/zzf$zzc;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/zze;ILcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/zze;ILcom/google/android/gms/common/internal/zzf$zzb;Lcom/google/android/gms/common/internal/zzf$zzc;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzrJ:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFg:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFk:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFm:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFr:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzrs:Landroid/os/Looper;

    const-string v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzn;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFf:Lcom/google/android/gms/common/internal/zzn;

    const-string v0, "API availability must not be null"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/zze;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaAQ:Lcom/google/android/gms/common/zze;

    new-instance v0, Lcom/google/android/gms/common/internal/zzf$zzd;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/zzf$zzd;-><init>(Lcom/google/android/gms/common/internal/zzf;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFp:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFn:Lcom/google/android/gms/common/internal/zzf$zzb;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFo:Lcom/google/android/gms/common/internal/zzf$zzc;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFq:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzv;)Lcom/google/android/gms/common/internal/zzv;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFh:Lcom/google/android/gms/common/internal/zzv;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzf;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFg:Ljava/lang/Object;

    return-object v0
.end method

.method private zza(ILandroid/os/IInterface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1a

    move v3, v0

    :goto_6
    if-eqz p2, :cond_1c

    move v2, v0

    :goto_9
    if-ne v3, v2, :cond_1e

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iput p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFm:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFj:Landroid/os/IInterface;

    packed-switch p1, :pswitch_data_30

    :goto_18
    monitor-exit v1

    return-void

    :cond_1a
    move v3, v1

    goto :goto_6

    :cond_1c
    move v2, v1

    goto :goto_9

    :cond_1e
    move v0, v1

    goto :goto_b

    :pswitch_20
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxx()V

    goto :goto_18

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_24

    throw v0

    :pswitch_27
    :try_start_27
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/zzf;->zza(Landroid/os/IInterface;)V

    goto :goto_18

    :pswitch_2b
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxy()V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    goto :goto_18

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_20
        :pswitch_27
    .end packed-switch
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzf;ILandroid/os/IInterface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzf;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method private zza(IILandroid/os/IInterface;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFm:I

    if-eq v0, p1, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/zzf;->zza(ILandroid/os/IInterface;)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_9

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzf;IILandroid/os/IInterface;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzf;->zza(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zzf;)Lcom/google/android/gms/common/internal/zzf$zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFn:Lcom/google/android/gms/common/internal/zzf$zzb;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/zzf;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFk:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/zzf;)Lcom/google/android/gms/common/internal/zzf$zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFo:Lcom/google/android/gms/common/internal/zzf$zzc;

    return-object v0
.end method

.method private zzxx()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFl:Lcom/google/android/gms/common/internal/zzf$zzh;

    if-eqz v0, :cond_61

    const-string v0, "GmsClient"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzez()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFf:Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzez()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxv()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFl:Lcom/google/android/gms/common/internal/zzf$zzh;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/zzn;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_61
    new-instance v0, Lcom/google/android/gms/common/internal/zzf$zzh;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/zzf$zzh;-><init>(Lcom/google/android/gms/common/internal/zzf;I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFl:Lcom/google/android/gms/common/internal/zzf$zzh;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFf:Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzez()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxv()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFl:Lcom/google/android/gms/common/internal/zzf$zzh;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/zzn;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    const-string v0, "GmsClient"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzez()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unable to connect to service: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/common/internal/zzf;->zza(ILandroid/os/Bundle;I)V

    :cond_d5
    return-void
.end method

.method private zzxy()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFl:Lcom/google/android/gms/common/internal/zzf$zzh;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFf:Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzez()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxv()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFl:Lcom/google/android/gms/common/internal/zzf$zzh;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/zzn;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFl:Lcom/google/android/gms/common/internal/zzf$zzh;

    :cond_1a
    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFk:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzf$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf$zze;->zzxI()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_34

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFg:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_2c
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFh:Lcom/google/android/gms/common/internal/zzv;

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/common/internal/zzf;->zza(ILandroid/os/IInterface;)V

    return-void

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    const-wide/16 v8, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFm:I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFj:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_134

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFh:Lcom/google/android/gms/common/internal/zzv;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_137

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "mConnectState="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v0, :pswitch_data_19a

    const-string v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_21
    const-string v0, " mService="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v2, :cond_156

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_2d
    const-string v0, " mServiceBroker="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v3, :cond_175

    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFc:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_87

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastConnectedTime="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFc:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFc:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_87
    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFb:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_df

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastSuspendedCause="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFa:I

    packed-switch v1, :pswitch_data_1a6

    iget v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFa:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_a4
    const-string v1, " lastSuspendedTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFb:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFb:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_df
    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFe:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_133

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastFailedStatus="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFd:I

    invoke-static {v2}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v1, " lastFailedTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFe:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFe:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_133
    return-void

    :catchall_134
    move-exception v0

    :try_start_135
    monitor-exit v1
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    throw v0

    :catchall_137
    move-exception v0

    :try_start_138
    monitor-exit v1
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_137

    throw v0

    :pswitch_13a
    const-string v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_141
    const-string v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_148
    const-string v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_14f
    const-string v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_156
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzeA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_2d

    :cond_175
    const-string v0, "IGmsServiceBroker@"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v3}, Lcom/google/android/gms/common/internal/zzv;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_39

    :pswitch_18c
    const-string v1, "CAUSE_SERVICE_DISCONNECTED"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_a4

    :pswitch_193
    const-string v1, "CAUSE_NETWORK_LOST"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_a4

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_14f
        :pswitch_13a
        :pswitch_141
        :pswitch_148
    .end packed-switch

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_18c
        :pswitch_193
    .end packed-switch
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzrs:Landroid/os/Looper;

    return-object v0
.end method

.method public isConnected()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFm:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isConnecting()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFm:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFd:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFe:J

    return-void
.end method

.method protected onConnectionSuspended(I)V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFa:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFb:J

    return-void
.end method

.method protected zza(ILandroid/os/Bundle;I)V
    .registers 9
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/zzf$zzk;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzf$zzk;-><init>(Lcom/google/android/gms/common/internal/zzf;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2, p3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/zzf$zzj;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzf$zzj;-><init>(Lcom/google/android/gms/common/internal/zzf;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, p4, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zza(Landroid/os/IInterface;)V
    .registers 4
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFc:J

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzf$zzf;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/internal/zzf$zzf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzf$zzf;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFi:Lcom/google/android/gms/common/internal/zzf$zzf;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/internal/zzf;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzf$zzf;ILandroid/app/PendingIntent;)V
    .registers 8
    .param p1    # Lcom/google/android/gms/common/internal/zzf$zzf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzf$zzf;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFi:Lcom/google/android/gms/common/internal/zzf$zzf;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzr;Ljava/util/Set;)V
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzr;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzqL()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/zzj;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFp:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/zzj;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/zzj;->zzdm(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzj;->zzp(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/zzj;

    move-result-object v0

    if-eqz p2, :cond_1f

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/zzj;->zzf(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/zzj;

    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzrd()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxB()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzj;->zzf(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/zzj;->zzb(Lcom/google/android/gms/common/internal/zzr;)Lcom/google/android/gms/common/internal/zzj;

    :cond_30
    :goto_30
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxA()[Lcom/google/android/gms/common/zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzj;->zza([Lcom/google/android/gms/common/zzc;)Lcom/google/android/gms/common/internal/zzj;

    :try_start_37
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFg:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3a
    .catch Landroid/os/DeadObjectException; {:try_start_37 .. :try_end_3a} :catch_69
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3a} :catch_76
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3a} :catch_8c

    :try_start_3a
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFh:Lcom/google/android/gms/common/internal/zzv;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFh:Lcom/google/android/gms/common/internal/zzv;

    new-instance v3, Lcom/google/android/gms/common/internal/zzf$zzg;

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/common/internal/zzf$zzg;-><init>(Lcom/google/android/gms/common/internal/zzf;I)V

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/common/internal/zzv;->zza(Lcom/google/android/gms/common/internal/zzu;Lcom/google/android/gms/common/internal/zzj;)V

    :goto_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_66

    :goto_4f
    return-void

    :cond_50
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxE()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzj;->zzf(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzj;

    goto :goto_30

    :cond_5e
    :try_start_5e
    const-string v0, "GmsClient"

    const-string v2, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_66

    :try_start_68
    throw v0
    :try_end_69
    .catch Landroid/os/DeadObjectException; {:try_start_68 .. :try_end_69} :catch_69
    .catch Ljava/lang/SecurityException; {:try_start_68 .. :try_end_69} :catch_76
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_69} :catch_78
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_69} :catch_8c

    :catch_69
    move-exception v0

    const-string v1, "GmsClient"

    const-string v2, "IGmsServiceBroker.getService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzf;->zzcS(I)V

    goto :goto_4f

    :catch_76
    move-exception v0

    throw v0

    :catch_78
    move-exception v0

    :goto_79
    const-string v1, "GmsClient"

    const-string v2, "IGmsServiceBroker.getService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v0, v5, v5, v1}, Lcom/google/android/gms/common/internal/zzf;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    goto :goto_4f

    :catch_8c
    move-exception v0

    goto :goto_79
.end method

.method public zzcS(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected abstract zzeA()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract zzez()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected zzqL()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public zzrd()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzrr()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzrs()Landroid/content/Intent;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzuC()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzvh()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzvi()Landroid/os/IBinder;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFh:Lcom/google/android/gms/common/internal/zzv;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFh:Lcom/google/android/gms/common/internal/zzv;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    monitor-exit v1

    goto :goto_9

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zzxA()[Lcom/google/android/gms/common/zzc;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/zzc;

    return-object v0
.end method

.method public final zzxB()Landroid/accounts/Account;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method protected final zzxC()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public final zzxD()Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFm:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_11

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzxC()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFj:Landroid/os/IInterface;

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_19
    const-string v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFj:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_e

    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public zzxE()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected zzxF()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected zzxv()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method protected final zzxw()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFq:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaFq:Ljava/lang/String;

    goto :goto_e
.end method

.method public zzxz()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzaAQ:Lcom/google/android/gms/common/zze;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zze;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/zzf;->zza(ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/internal/zzf$zzi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/zzf$zzi;-><init>(Lcom/google/android/gms/common/internal/zzf;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/common/internal/zzf;->zza(Lcom/google/android/gms/common/internal/zzf$zzf;ILandroid/app/PendingIntent;)V

    :goto_17
    return-void

    :cond_18
    new-instance v0, Lcom/google/android/gms/common/internal/zzf$zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzf$zzi;-><init>(Lcom/google/android/gms/common/internal/zzf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzf;->zza(Lcom/google/android/gms/common/internal/zzf$zzf;)V

    goto :goto_17
.end method

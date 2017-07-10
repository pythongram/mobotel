.class public final Lcom/google/android/gms/internal/zzaua$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzb"
.end annotation


# instance fields
.field private final zzAX:Ljava/lang/String;

.field private zzadd:J

.field private zzbts:Z

.field final synthetic zzbtt:Lcom/google/android/gms/internal/zzaua;

.field private final zzbtu:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaua;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtt:Lcom/google/android/gms/internal/zzaua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzAX:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtu:J

    return-void
.end method

.method private zzMp()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbts:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbts:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtt:Lcom/google/android/gms/internal/zzaua;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaua;->zza(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzAX:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtu:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzadd:J

    goto :goto_4
.end method


# virtual methods
.method public get()J
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaua$zzb;->zzMp()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzadd:J

    return-wide v0
.end method

.method public set(J)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzbtt:Lcom/google/android/gms/internal/zzaua;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaua;->zza(Lcom/google/android/gms/internal/zzaua;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzAX:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaua$zzb;->zzadd:J

    return-void
.end method

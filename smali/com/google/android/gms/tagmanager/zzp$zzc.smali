.class Lcom/google/android/gms/tagmanager/zzp$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzbn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzbn",
        "<",
        "Lcom/google/android/gms/internal/zzaj$zzj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbFv:Lcom/google/android/gms/tagmanager/zzp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzp$zzc;-><init>(Lcom/google/android/gms/tagmanager/zzp;)V

    return-void
.end method


# virtual methods
.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzaj$zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzb(Lcom/google/android/gms/internal/zzaj$zzj;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGL:Lcom/google/android/gms/tagmanager/zzbn$zza;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzq;->zzQs()V

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :cond_2b
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_4a

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzq;->zzQr()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;J)V

    return-void

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzazA:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tagmanager/zzp;->zzbN(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_2b

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaj$zzj;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzq;->zzQt()V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    monitor-enter v1

    :try_start_c
    iget-object v0, p1, Lcom/google/android/gms/internal/zzaj$zzj;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzf(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzaj$zzj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaj$zzj;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    if-nez v0, :cond_30

    const-string v0, "Current resource is null; network resource is also null"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzq;->zzQr()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;J)V

    monitor-exit v1

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzf(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzaj$zzj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaj$zzj;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzaj$zzj;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzp;->zzd(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaj$zzj;JZ)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzg(Lcom/google/android/gms/tagmanager/zzp;)J

    move-result-wide v2

    const/16 v0, 0x3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "setting refresh time to current time: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzh(Lcom/google/android/gms/tagmanager/zzp;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaj$zzj;)V

    :cond_75
    monitor-exit v1

    goto :goto_2f

    :catchall_77
    move-exception v0

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_c .. :try_end_79} :catchall_77

    throw v0
.end method

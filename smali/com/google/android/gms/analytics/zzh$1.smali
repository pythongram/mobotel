.class Lcom/google/android/gms/analytics/zzh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/zzh;->zze(Lcom/google/android/gms/analytics/zze;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacn:Lcom/google/android/gms/analytics/zze;

.field final synthetic zzaco:Lcom/google/android/gms/analytics/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzh;Lcom/google/android/gms/analytics/zze;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzh$1;->zzaco:Lcom/google/android/gms/analytics/zzh;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzh$1;->zzacn:Lcom/google/android/gms/analytics/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh$1;->zzacn:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzmJ()Lcom/google/android/gms/analytics/zzg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzh$1;->zzacn:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzg;->zza(Lcom/google/android/gms/analytics/zze;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh$1;->zzaco:Lcom/google/android/gms/analytics/zzh;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzh;->zza(Lcom/google/android/gms/analytics/zzh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_15

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh$1;->zzaco:Lcom/google/android/gms/analytics/zzh;

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzh$1;->zzacn:Lcom/google/android/gms/analytics/zze;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zza(Lcom/google/android/gms/analytics/zzh;Lcom/google/android/gms/analytics/zze;)V

    return-void
.end method

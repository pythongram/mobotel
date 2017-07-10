.class Lcom/google/android/gms/internal/zzaul$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaul;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbvH:Lcom/google/android/gms/internal/zzaul;

.field final synthetic zzbvJ:Lcom/google/android/gms/measurement/AppMeasurement$zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaul;Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvJ:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzc(Lcom/google/android/gms/internal/zzaul;)Lcom/google/android/gms/internal/zzatt;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvJ:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    if-nez v0, :cond_44

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatt;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzd(Lcom/google/android/gms/internal/zzaul;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_32} :catch_33

    goto :goto_17

    :catch_33
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvJ:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqh:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvJ:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvJ:Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$4;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzatt;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_5d} :catch_33

    goto :goto_2d
.end method

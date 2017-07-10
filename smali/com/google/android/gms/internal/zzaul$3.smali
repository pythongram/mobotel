.class Lcom/google/android/gms/internal/zzaul$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaul;->zzMR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbvH:Lcom/google/android/gms/internal/zzaul;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaul;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul$3;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$3;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzc(Lcom/google/android/gms/internal/zzaul;)Lcom/google/android/gms/internal/zzatt;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$3;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send app launch"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$3;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaul;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul$3;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatu;->zzfD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzatt;->zza(Lcom/google/android/gms/internal/zzatd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$3;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzaul;->zza(Lcom/google/android/gms/internal/zzatt;Lcom/google/android/gms/common/internal/safeparcel/zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul$3;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaul;->zzd(Lcom/google/android/gms/internal/zzaul;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_3a} :catch_3b

    goto :goto_17

    :catch_3b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul$3;->zzbvH:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to send app launch to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17
.end method

.class abstract Lcom/google/android/gms/internal/zzauh;
.super Lcom/google/android/gms/internal/zzaug;


# instance fields
.field private zzadP:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaug;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauh;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzauh;)V

    return-void
.end method


# virtual methods
.method public final initialize()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzauh;->zzadP:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauh;->zzmS()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauh;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMK()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzauh;->zzadP:Z

    return-void
.end method

.method isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzauh;->zzadP:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract zzmS()V
.end method

.method protected zzob()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauh;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method
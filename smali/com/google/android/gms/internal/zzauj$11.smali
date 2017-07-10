.class Lcom/google/android/gms/internal/zzauj$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzauj;->getAppInstanceId()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbvb:Lcom/google/android/gms/internal/zzauj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj$11;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauj$11;->zzbY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbY()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$11;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$11;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzauj;->zzar(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj$11;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauj;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaua;->zzfJ(Ljava/lang/String;)V

    goto :goto_c
.end method

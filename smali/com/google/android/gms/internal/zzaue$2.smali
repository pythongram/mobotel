.class Lcom/google/android/gms/internal/zzaue$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaue;->zzfP(Ljava/lang/String;)Ljava/lang/String;
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
.field final synthetic zzbkW:Ljava/lang/String;

.field final synthetic zzbuF:Lcom/google/android/gms/internal/zzaue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaue$2;->zzbuF:Lcom/google/android/gms/internal/zzaue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaue$2;->zzbkW:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue$2;->zzbY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbY()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue$2;->zzbuF:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaue$2;->zzbkW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

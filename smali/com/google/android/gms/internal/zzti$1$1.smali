.class Lcom/google/android/gms/internal/zzti$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzti$1;->zzf(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzagM:Lcom/google/android/gms/internal/zzti$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzti$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzti$1$1;->zzagM:Lcom/google/android/gms/internal/zzti$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti$1$1;->zzagM:Lcom/google/android/gms/internal/zzti$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzti$1;->zzagL:Lcom/google/android/gms/internal/zzti;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzti;->zza(Lcom/google/android/gms/internal/zzti;)Lcom/google/android/gms/internal/zzti$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzti$1$1;->zzagM:Lcom/google/android/gms/internal/zzti$1;

    iget v1, v1, Lcom/google/android/gms/internal/zzti$1;->zzabA:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzti$zza;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti$1$1;->zzagM:Lcom/google/android/gms/internal/zzti$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzti$1;->zzabz:Lcom/google/android/gms/internal/zztd;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztd;->zzbP(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

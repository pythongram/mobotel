.class Lcom/google/android/gms/internal/zzabr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzabr;->zzb(Lcom/google/android/gms/internal/zzbaw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaBI:Lcom/google/android/gms/internal/zzbaw;

.field final synthetic zzaDj:Lcom/google/android/gms/internal/zzabr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabr;Lcom/google/android/gms/internal/zzbaw;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabr$1;->zzaDj:Lcom/google/android/gms/internal/zzabr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabr$1;->zzaBI:Lcom/google/android/gms/internal/zzbaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr$1;->zzaDj:Lcom/google/android/gms/internal/zzabr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabr$1;->zzaBI:Lcom/google/android/gms/internal/zzbaw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzabr;->zza(Lcom/google/android/gms/internal/zzabr;Lcom/google/android/gms/internal/zzbaw;)V

    return-void
.end method

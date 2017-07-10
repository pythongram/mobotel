.class public final Lcom/google/android/gms/internal/zzro;
.super Lcom/google/android/gms/analytics/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzro;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzFP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzf;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzro;->zzFP:Ljava/util/Map;

    return-void
.end method

.method private zzbA(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_12

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_12
    const-string v0, "Name can not be empty or \"&\""

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzro;->zzbA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzro;->zzFP:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->zzFP:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzro;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzro;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzro;->zzFP:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzro;->zzFP:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzf;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzro;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzro;->zza(Lcom/google/android/gms/internal/zzro;)V

    return-void
.end method

.method public zznj()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->zzFP:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

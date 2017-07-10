.class public final Lcom/google/android/gms/internal/zzru;
.super Lcom/google/android/gms/analytics/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzru;",
        ">;"
    }
.end annotation


# instance fields
.field private zzado:Ljava/lang/String;

.field private zzadp:I

.field private zzadq:I

.field private zzadr:Ljava/lang/String;

.field private zzads:Ljava/lang/String;

.field private zzadt:Z

.field private zzadu:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzru;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/zzru;->zznA()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzru;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzf;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzcX(I)I

    iput p2, p0, Lcom/google/android/gms/internal/zzru;->zzadp:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzru;->zzadu:Z

    return-void
.end method

.method static zznA()I
    .registers 6

    const-wide/32 v4, 0x7fffffff

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v2, v4

    long-to-int v0, v2

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    if-nez v0, :cond_f

    const-string v0, "GAv4"

    const-string v1, "UUID.randomUUID() returned 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    goto :goto_f
.end method


# virtual methods
.method public setScreenName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzru;->zzado:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzru;->zzado:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "interstitial"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzru;->zzadt:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "automatic"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzru;->zzadu:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzru;->zzadp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzru;->zzadq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzru;->zzadr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzru;->zzads:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzru;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzU(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzru;->zzadu:Z

    return-void
.end method

.method public zzV(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzru;->zzadt:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzru;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzru;->zzado:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzru;->zzado:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzru;->setScreenName(Ljava/lang/String;)V

    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/zzru;->zzadp:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/zzru;->zzadp:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzru;->zzaF(I)V

    :cond_16
    iget v0, p0, Lcom/google/android/gms/internal/zzru;->zzadq:I

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/google/android/gms/internal/zzru;->zzadq:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzru;->zzaG(I)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzru;->zzadr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzru;->zzadr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzru;->zzbH(Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzru;->zzads:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzru;->zzads:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzru;->zzbI(Ljava/lang/String;)V

    :cond_39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzru;->zzadt:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzru;->zzadt:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzru;->zzV(Z)V

    :cond_42
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzru;->zzadu:Z

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzru;->zzadu:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzru;->zzU(Z)V

    :cond_4b
    return-void
.end method

.method public zzaF(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzru;->zzadp:I

    return-void
.end method

.method public zzaG(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzru;->zzadq:I

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzf;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzru;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzru;->zza(Lcom/google/android/gms/internal/zzru;)V

    return-void
.end method

.method public zzbH(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzru;->zzadr:Ljava/lang/String;

    return-void
.end method

.method public zzbI(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzru;->zzads:Ljava/lang/String;

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/zzru;->zzads:Ljava/lang/String;

    goto :goto_9
.end method

.method public zznB()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzru;->zzado:Ljava/lang/String;

    return-object v0
.end method

.method public zznC()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzru;->zzadp:I

    return v0
.end method

.method public zznD()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzru;->zzads:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/google/android/gms/internal/zzauc;
.super Lcom/google/android/gms/internal/zzauh;


# instance fields
.field private final zzbtD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbtE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbtF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbtG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzauv$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbtH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtD:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtE:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtF:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtG:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtH:Ljava/util/Map;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzauv$zzb;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzauv$zzb;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    if-eqz p1, :cond_1f

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    if-eqz v0, :cond_1f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwP:[Lcom/google/android/gms/internal/zzauv$zzc;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_1f

    aget-object v4, v2, v0

    if-eqz v4, :cond_1c

    iget-object v5, v4, Lcom/google/android/gms/internal/zzauv$zzc;->zzaB:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauv$zzc;->value:Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    return-object v1
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauv$zzb;)V
    .registers 11

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    if-eqz p2, :cond_3b

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    if-eqz v0, :cond_3b

    iget-object v4, p2, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwQ:[Lcom/google/android/gms/internal/zzauv$zza;

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, v5, :cond_3b

    aget-object v6, v4, v1

    if-eqz v6, :cond_37

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$zza;->zzbqd:Ljava/util/Map;

    iget-object v7, v6, Lcom/google/android/gms/internal/zzauv$zza;->name:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_29

    iput-object v0, v6, Lcom/google/android/gms/internal/zzauv$zza;->name:Ljava/lang/String;

    :cond_29
    iget-object v0, v6, Lcom/google/android/gms/internal/zzauv$zza;->name:Ljava/lang/String;

    iget-object v7, v6, Lcom/google/android/gms/internal/zzauv$zza;->zzbwL:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzauv$zza;->name:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzauv$zza;->zzbwM:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtE:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtF:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zze(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzauv$zzb;
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    if-nez p2, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzauv$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauv$zzb;-><init>()V

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p2}, Lcom/google/android/gms/internal/zzbxl;->zzaf([B)Lcom/google/android/gms/internal/zzbxl;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzauv$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzauv$zzb;-><init>()V

    :try_start_11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzauv$zzb;->zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Parsed config. version, gmp_app_id"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzauv$zzb;->zzbqL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_25} :catch_26

    goto :goto_7

    :catch_26
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Unable to merge remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private zzfK(Ljava/lang/String;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzatj;->zzfw(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtD:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtE:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtF:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtG:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtH:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    :goto_35
    return-void

    :cond_36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzauc;->zze(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzauv$zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauc;->zzbtD:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzauc;->zza(Lcom/google/android/gms/internal/zzauv$zzb;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzauc;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauv$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauc;->zzbtG:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtH:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJV()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJV()V

    return-void
.end method

.method public bridge synthetic zzJW()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJW()V

    return-void
.end method

.method public bridge synthetic zzJX()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJX()V

    return-void
.end method

.method public bridge synthetic zzJY()Lcom/google/android/gms/internal/zzatb;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJZ()Lcom/google/android/gms/internal/zzatf;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJZ()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKa()Lcom/google/android/gms/internal/zzauj;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKb()Lcom/google/android/gms/internal/zzatu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKc()Lcom/google/android/gms/internal/zzatl;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKd()Lcom/google/android/gms/internal/zzaul;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKe()Lcom/google/android/gms/internal/zzauk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKf()Lcom/google/android/gms/internal/zzatv;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKg()Lcom/google/android/gms/internal/zzatj;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKh()Lcom/google/android/gms/internal/zzaut;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKi()Lcom/google/android/gms/internal/zzauc;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKj()Lcom/google/android/gms/internal/zzaun;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKj()Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKk()Lcom/google/android/gms/internal/zzaud;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKl()Lcom/google/android/gms/internal/zzatx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKm()Lcom/google/android/gms/internal/zzaua;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKn()Lcom/google/android/gms/internal/zzati;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    return-object v0
.end method

.method zzZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzmR()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauc;->zzfK(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtD:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_17

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method zzaa(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzmR()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauc;->zzfK(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzgg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaut;->zzgd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzgh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {p2}, Lcom/google/android/gms/internal/zzaut;->zzfT(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_42

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_3d

    move v0, v1

    goto :goto_18

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_18

    :cond_42
    move v0, v1

    goto :goto_18
.end method

.method zzab(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzmR()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauc;->zzfK(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtF:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_20

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1a

    :cond_20
    move v0, v1

    goto :goto_1a
.end method

.method protected zzb(Ljava/lang/String;[BLjava/lang/String;)Z
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzauc;->zze(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzauv$zzb;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzauc;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauv$zzb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtG:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtH:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtD:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzauc;->zza(Lcom/google/android/gms/internal/zzauv$zzb;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzJZ()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauu$zza;)V

    const/4 v0, 0x0

    :try_start_31
    iput-object v0, v1, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwR:[Lcom/google/android/gms/internal/zzauu$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauv$zzb;->zzaeT()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxm;->zzag([B)Lcom/google/android/gms/internal/zzbxm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzauv$zzb;->zza(Lcom/google/android/gms/internal/zzbxm;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_40} :catch_4a

    move-object p2, v0

    :goto_41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzatj;->zzd(Ljava/lang/String;[B)V

    const/4 v0, 0x1

    goto :goto_10

    :catch_4a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_41
.end method

.method protected zzfL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzauv$zzb;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauc;->zzfK(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauv$zzb;

    return-object v0
.end method

.method protected zzfM(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtH:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected zzfN(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauc;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauc;->zzbtH:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic zzmR()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzmR()V

    return-void
.end method

.method protected zzmS()V
    .registers 1

    return-void
.end method

.method public bridge synthetic zznR()Lcom/google/android/gms/common/util/zze;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

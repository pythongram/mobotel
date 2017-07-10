.class public Lcom/google/android/gms/internal/zzsp;
.super Ljava/lang/Object;


# instance fields
.field private final zzabn:Lcom/google/android/gms/internal/zzsc;

.field private volatile zzaeZ:Ljava/lang/Boolean;

.field private zzafa:Ljava/lang/String;

.field private zzafb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzsc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsp;->zzabn:Lcom/google/android/gms/internal/zzsc;

    return-void
.end method


# virtual methods
.method public zzoW()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzaeZ:Ljava/lang/Boolean;

    if-nez v0, :cond_56

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzaeZ:Ljava/lang/Boolean;

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzabn:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/zzu;->zzzr()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2a

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_5d

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x1

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzaeZ:Ljava/lang/Boolean;

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzaeZ:Ljava/lang/Boolean;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzaeZ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_42

    :cond_36
    const-string v0, "com.google.android.gms.analytics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzaeZ:Ljava/lang/Boolean;

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzaeZ:Ljava/lang/Boolean;

    if-nez v0, :cond_55

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzaeZ:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzabn:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztd;->zzbT(Ljava/lang/String;)V

    :cond_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_5f

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzaeZ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_5d
    const/4 v0, 0x0

    goto :goto_24

    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public zzoX()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafk:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public zzoY()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafD:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzoZ()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafH:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzpa()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafI:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzpb()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafJ:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzpc()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafs:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzpd()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafr:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzpe()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafv:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzpf()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafw:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzpg()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafx:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzph()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafy:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzpi()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafL:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public zzpj()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafA:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzpk()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafz:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzpl()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafB:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzpm()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafC:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzpn()Lcom/google/android/gms/internal/zzsj;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafE:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zzbY(Ljava/lang/String;)Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    return-object v0
.end method

.method public zzpo()Lcom/google/android/gms/internal/zzsm;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafF:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsm;->zzbZ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzsm;

    move-result-object v0

    return-object v0
.end method

.method public zzpp()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafK:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsp;->zzafb:Ljava/util/Set;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsp;->zzafa:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsp;->zzafa:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_18
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v4, v2

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v4, :cond_37

    aget-object v5, v2, v1

    :try_start_29
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_34} :catch_3e

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_37
    iput-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzafa:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsp;->zzafb:Ljava/util/Set;

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzafb:Ljava/util/Set;

    return-object v0

    :catch_3e
    move-exception v5

    goto :goto_34
.end method

.method public zzpq()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafT:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzpr()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafU:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzps()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafX:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzpt()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafo:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzpu()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafq:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzpv()Ljava/lang/String;
    .registers 2

    const-string v0, "google_analytics_v4.db"

    return-object v0
.end method

.method public zzpw()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafN:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzpx()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafO:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzpy()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafP:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzpz()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafY:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

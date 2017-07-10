.class Lcom/google/android/gms/internal/zzatf;
.super Lcom/google/android/gms/internal/zzauh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzauu$zzb;Lcom/google/android/gms/internal/zzauw$zzb;J)Ljava/lang/Boolean;
    .registers 14

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, p3, p4, v0}, Lcom/google/android/gms/internal/zzatf;->zza(JLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d

    :cond_1a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v3, :cond_48

    aget-object v4, v2, v0

    iget-object v5, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "null or empty param name in filter. event"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_d

    :cond_40
    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_48
    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v4, v2

    const/4 v0, 0x0

    :goto_51
    if-ge v0, v4, :cond_97

    aget-object v5, v2, v0

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    if-eqz v6, :cond_6b

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_6b
    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzbwf:Ljava/lang/Double;

    if-eqz v6, :cond_77

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzbwf:Ljava/lang/Double;

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :cond_77
    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzaGV:Ljava/lang/String;

    if-eqz v6, :cond_83

    iget-object v6, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauw$zzc;->zzaGV:Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :cond_83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Unknown value for param. event, param"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    iget-object v3, v5, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_97
    iget-object v4, p1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_9c
    if-ge v2, v5, :cond_1d3

    aget-object v6, v4, v2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Event has empty param name. event"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_c2
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_104

    iget-object v1, v6, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v1, :cond_e0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "No number filter for long param. event, param"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_e0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v6, v6, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v0, v1, v6}, Lcom/google/android/gms/internal/zzatf;->zza(JLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_f1

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_f1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_102

    const/4 v0, 0x1

    :goto_f8
    xor-int/2addr v0, v7

    if-eqz v0, :cond_1ce

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_d

    :cond_102
    const/4 v0, 0x0

    goto :goto_f8

    :cond_104
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_142

    iget-object v1, v6, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v1, :cond_11e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "No number filter for double param. event, param"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_11e
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v6, v6, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v0, v1, v6}, Lcom/google/android/gms/internal/zzatf;->zza(DLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_12f

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_12f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_140

    const/4 v0, 0x1

    :goto_136
    xor-int/2addr v0, v7

    if-eqz v0, :cond_1ce

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_d

    :cond_140
    const/4 v0, 0x0

    goto :goto_136

    :cond_142
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1a4

    iget-object v1, v6, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    if-eqz v1, :cond_157

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzf;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_152
    if-nez v0, :cond_191

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_157
    iget-object v1, v6, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-eqz v1, :cond_17f

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16d

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_152

    :cond_16d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Invalid param value for number filter. event, param"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_17f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "No filter for String param. event, param"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_191
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a2

    const/4 v0, 0x1

    :goto_198
    xor-int/2addr v0, v7

    if-eqz v0, :cond_1ce

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_d

    :cond_1a2
    const/4 v0, 0x0

    goto :goto_198

    :cond_1a4
    if-nez v0, :cond_1bc

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Missing param for filter. event, param"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_d

    :cond_1bc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Unknown param type. event, param"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_1ce
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_9c

    :cond_1d3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_d
.end method

.method private zza(Lcom/google/android/gms/internal/zzauu$zze;Lcom/google/android/gms/internal/zzauw$zzg;)Ljava/lang/Boolean;
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Missing property filter. property"

    iget-object v3, p2, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_14
    return-object v0

    :cond_15
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    if-eqz v3, :cond_46

    iget-object v3, v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v3, :cond_35

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "No number filter for long property. property"

    iget-object v3, p2, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    :cond_35
    iget-object v0, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v4, v5, v0}, Lcom/google/android/gms/internal/zzatf;->zza(JLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14

    :cond_46
    iget-object v3, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    if-eqz v3, :cond_6f

    iget-object v3, v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v3, :cond_5e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "No number filter for double property. property"

    iget-object v3, p2, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    :cond_5e
    iget-object v0, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v0, v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v4, v5, v0}, Lcom/google/android/gms/internal/zzatf;->zza(DLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14

    :cond_6f
    iget-object v3, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    if-eqz v3, :cond_c2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    if-nez v3, :cond_b4

    iget-object v3, v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    if-nez v3, :cond_8b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "No string or number filter defined. property"

    iget-object v3, p2, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    :cond_8b
    iget-object v3, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_14

    :cond_a1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Invalid user property value for Numeric number filter. property, value"

    iget-object v3, p2, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_b4
    iget-object v0, p2, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzf;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_14

    :cond_c2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "User property has no value, property"

    iget-object v3, p2, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_14
.end method

.method static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3
.end method

.method private zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2c

    if-eqz p5, :cond_3

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_f
    if-nez p3, :cond_14

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2f

    :cond_14
    :goto_14
    packed-switch p2, :pswitch_data_66

    goto :goto_3

    :pswitch_18
    if-eqz p3, :cond_36

    const/4 v0, 0x0

    :goto_1b
    invoke-static {p6, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :cond_2c
    if-nez p4, :cond_f

    goto :goto_3

    :cond_2f
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :cond_36
    const/16 v0, 0x42

    goto :goto_1b

    :pswitch_39
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :pswitch_42
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :pswitch_4b
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :pswitch_54
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :pswitch_5d
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_18
        :pswitch_39
        :pswitch_42
        :pswitch_4b
        :pswitch_54
        :pswitch_5d
    .end packed-switch
.end method

.method private zza(Ljava/math/BigDecimal;ILjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;D)Ljava/lang/Boolean;
    .registers 14

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_9

    move-object v0, v2

    :goto_8
    return-object v0

    :cond_9
    const/4 v3, 0x4

    if-ne p2, v3, :cond_12

    if-eqz p4, :cond_10

    if-nez p5, :cond_16

    :cond_10
    move-object v0, v2

    goto :goto_8

    :cond_12
    if-nez p3, :cond_16

    move-object v0, v2

    goto :goto_8

    :cond_16
    packed-switch p2, :pswitch_data_94

    move-object v0, v2

    goto :goto_8

    :pswitch_1b
    invoke-virtual {p1, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ne v2, v4, :cond_26

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_26
    move v0, v1

    goto :goto_21

    :pswitch_28
    invoke-virtual {p1, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ne v2, v0, :cond_33

    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_33
    move v0, v1

    goto :goto_2e

    :pswitch_35
    const-wide/16 v2, 0x0

    cmpl-double v2, p6, v2

    if-eqz v2, :cond_72

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p6, p7}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v5}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ne v2, v0, :cond_70

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p6, p7}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v5}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ne v2, v4, :cond_70

    :goto_6b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_70
    move v0, v1

    goto :goto_6b

    :cond_72
    invoke-virtual {p1, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_7d

    :goto_78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_7d
    move v0, v1

    goto :goto_78

    :pswitch_7f
    invoke-virtual {p1, p4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-eq v2, v4, :cond_91

    invoke-virtual {p1, p5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-eq v2, v0, :cond_91

    :goto_8b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_8

    :cond_91
    move v0, v1

    goto :goto_8b

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_28
        :pswitch_35
        :pswitch_7f
    .end packed-switch
.end method

.method private zza([Ljava/lang/String;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_7

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_6

    aget-object v3, p1, v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method


# virtual methods
.method public zza(DLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;
    .registers 9

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v2

    invoke-virtual {p0, v0, p3, v2, v3}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzauu$zzd;D)Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public zza(JLcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;
    .registers 9

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, p3, v2, v3}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzauu$zzd;D)Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzd;)Ljava/lang/Boolean;
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzauu$zzd;D)Ljava/lang/Boolean;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_7

    :catch_14
    move-exception v1

    goto :goto_7
.end method

.method zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zzf;)Ljava/lang/Boolean;
    .registers 10

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v6, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_9

    :cond_8
    :goto_8
    return-object v6

    :cond_9
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_50

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_8

    :cond_26
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    if-eqz v1, :cond_55

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_55

    move v3, v0

    :goto_39
    if-nez v3, :cond_3f

    if-eq v2, v0, :cond_3f

    if-ne v2, v4, :cond_57

    :cond_3f
    iget-object v4, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    :goto_41
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    if-nez v1, :cond_60

    move-object v5, v6

    :goto_46
    if-ne v2, v0, :cond_49

    move-object v6, v4

    :cond_49
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_8

    :cond_50
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    if-nez v1, :cond_26

    goto :goto_8

    :cond_55
    const/4 v3, 0x0

    goto :goto_39

    :cond_57
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_41

    :cond_60
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/zzatf;->zza([Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    goto :goto_46
.end method

.method zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzauu$zzd;D)Ljava/lang/Boolean;
    .registers 14

    const/4 v3, 0x4

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_57

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    if-eqz v1, :cond_11

    :cond_22
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_5c

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    :try_start_40
    new-instance v4, Ljava/math/BigDecimal;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigDecimal;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_4e} :catch_70

    move-object v3, v0

    :goto_4f
    move-object v0, p0

    move-object v1, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/math/BigDecimal;ILjava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;D)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_11

    :cond_57
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    if-nez v1, :cond_22

    goto :goto_11

    :cond_5c
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaut;->zzgf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    :try_start_64
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6b} :catch_6e

    move-object v5, v0

    move-object v4, v0

    goto :goto_4f

    :catch_6e
    move-exception v1

    goto :goto_11

    :catch_70
    move-exception v1

    goto :goto_11
.end method

.method zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauu$zza;)V
    .registers 16
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v5, p2

    move v4, v2

    :goto_6
    if-ge v4, v5, :cond_5c

    aget-object v6, p2, v4

    iget-object v7, v6, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    array-length v8, v7

    move v3, v2

    :goto_e
    if-ge v3, v8, :cond_3e

    aget-object v1, v7, v3

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$zza;->zzbqd:Ljava/util/Map;

    iget-object v9, v1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_20

    iput-object v0, v1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    :cond_20
    iget-object v9, v1, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v10, v9

    move v1, v2

    :goto_24
    if-ge v1, v10, :cond_3a

    aget-object v11, v9, v1

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$zze;->zzbqe:Ljava/util/Map;

    iget-object v12, v11, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_36

    iput-object v0, v11, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    :cond_3a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    :cond_3e
    iget-object v3, v6, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    array-length v6, v3

    move v1, v2

    :goto_42
    if-ge v1, v6, :cond_58

    aget-object v7, v3, v1

    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$zzg;->zzbqi:Ljava/util/Map;

    iget-object v8, v7, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_54

    iput-object v0, v7, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    :cond_54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    :cond_58
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzatj;->zzb(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauu$zza;)V

    return-void
.end method

.method zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauw$zzb;[Lcom/google/android/gms/internal/zzauw$zzg;)[Lcom/google/android/gms/internal/zzauw$zza;
    .registers 30
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    new-instance v16, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v16 .. v16}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v17, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v17 .. v17}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v18, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzatj;->zzfy(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_e1

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    if-nez v5, :cond_7b

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    const/4 v7, 0x0

    :goto_7c
    iget-object v11, v4, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxG:[J

    array-length v11, v11

    mul-int/lit8 v11, v11, 0x40

    if-ge v7, v11, :cond_b1

    iget-object v11, v4, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxG:[J

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/zzaut;->zza([JI)Z

    move-result v11

    if-eqz v11, :cond_ae

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v11

    const-string v12, "Filter already evaluated. audience ID, filter ID"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v11, v4, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxH:[J

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/zzaut;->zza([JI)Z

    move-result v11

    if-eqz v11, :cond_ae

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    :cond_ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c

    :cond_b1
    new-instance v7, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzauw$zza;-><init>()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v16

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    iput-object v4, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    new-instance v4, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zzf;-><init>()V

    iput-object v4, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    iget-object v4, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/util/BitSet;)[J

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxH:[J

    iget-object v4, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/util/BitSet;)[J

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxG:[J

    goto/16 :goto_2b

    :cond_e1
    if-eqz p2, :cond_2e2

    new-instance v19, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v19 .. v19}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    const/4 v4, 0x0

    move v14, v4

    :goto_ef
    move/from16 v0, v20

    if-ge v14, v0, :cond_2e2

    aget-object v21, p2, v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/zzatj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatn;

    move-result-object v4

    if-nez v4, :cond_19b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/google/android/gms/internal/zzatn;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x1

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/internal/zzatn;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    :goto_131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatn;)V

    iget-wide v10, v5, Lcom/google/android/gms/internal/zzatn;->zzbrA:J

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_51f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/zzatj;->zzV(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_15d

    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_15d
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v4

    :goto_167
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_16f
    :goto_16f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2dd

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Skipping failed audience ID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_16f

    :cond_19b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatn;->zzLV()Lcom/google/android/gms/internal/zzatn;

    move-result-object v5

    goto :goto_131

    :cond_1a0
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    if-nez v4, :cond_1f7

    new-instance v4, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zza;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_205
    :goto_205
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauu$zzb;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v8

    if-eqz v8, :cond_24e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v8

    const-string v9, "Evaluating filter. audience, filter, event"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget-object v0, v4, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    move-object/from16 v24, v0

    iget-object v0, v4, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v8, v9, v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v8

    const-string v9, "Filter definition"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauu$zzb;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_24e
    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    if-eqz v8, :cond_25c

    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x100

    if-le v8, v9, :cond_276

    :cond_25c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v8

    const-string v9, "Invalid event filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v8, v9, v0, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_205

    :cond_276
    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_299

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v8

    const-string v9, "Event filter already evaluated true. audience ID, filter ID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    move-object/from16 v0, v23

    invoke-virtual {v8, v9, v0, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_205

    :cond_299
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1, v10, v11}, Lcom/google/android/gms/internal/zzatf;->zza(Lcom/google/android/gms/internal/zzauu$zzb;Lcom/google/android/gms/internal/zzauw$zzb;J)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v23

    const-string v24, "Event filter result"

    if-nez v9, :cond_2c1

    const-string v8, "null"

    :goto_2af
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v9, :cond_2c3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_205

    :cond_2c1
    move-object v8, v9

    goto :goto_2af

    :cond_2c3
    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_205

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_205

    :cond_2dd
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto/16 :goto_ef

    :cond_2e2
    if-eqz p3, :cond_48f

    new-instance v11, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v11}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v4, 0x0

    move v10, v4

    :goto_2ee
    if-ge v10, v12, :cond_48f

    aget-object v13, p3, v10

    iget-object v4, v13, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_51c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    iget-object v5, v13, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/zzatj;->zzW(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_30f

    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_30f
    iget-object v5, v13, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v4

    :goto_315
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_31d
    :goto_31d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_349

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Skipping failed audience ID"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_31d

    :cond_349
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    if-nez v4, :cond_3a0

    new-instance v4, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zza;-><init>()V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_3ae
    :goto_3ae
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauu$zze;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v8

    if-eqz v8, :cond_3f7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v8

    const-string v9, "Evaluating filter. audience, filter, property"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v0, v4, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v9, v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v8

    const-string v9, "Filter definition"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauu$zze;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3f7
    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    if-eqz v8, :cond_405

    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x100

    if-le v8, v9, :cond_425

    :cond_405
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v5

    const-string v6, "Invalid property filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v8, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31d

    :cond_425
    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_448

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v8

    const-string v9, "Property filter already evaluated true. audience ID, filter ID"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-virtual {v8, v9, v0, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3ae

    :cond_448
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/google/android/gms/internal/zzatf;->zza(Lcom/google/android/gms/internal/zzauu$zze;Lcom/google/android/gms/internal/zzauw$zzg;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v21

    const-string v22, "Property filter result"

    if-nez v9, :cond_46e

    const-string v8, "null"

    :goto_45c
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v9, :cond_470

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3ae

    :cond_46e
    move-object v8, v9

    goto :goto_45c

    :cond_470
    iget-object v8, v4, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3ae

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3ae

    :cond_48a
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_2ee

    :cond_48f
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v4

    new-array v8, v4, [Lcom/google/android/gms/internal/zzauw$zza;

    const/4 v4, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v4

    :cond_49f
    :goto_49f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_513

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzauw$zza;

    if-nez v4, :cond_51a

    new-instance v4, Lcom/google/android/gms/internal/zzauw$zza;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zza;-><init>()V

    move-object v7, v4

    :goto_4cd
    add-int/lit8 v6, v5, 0x1

    aput-object v7, v8, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    new-instance v4, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zzf;-><init>()V

    iput-object v4, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    iget-object v5, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/util/BitSet;)[J

    move-result-object v4

    iput-object v4, v5, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxH:[J

    iget-object v5, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/util/BitSet;)[J

    move-result-object v4

    iput-object v4, v5, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxG:[J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatf;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    iget-object v5, v7, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10, v5}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzauw$zzf;)V

    move v5, v6

    goto :goto_49f

    :cond_513
    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzauw$zza;

    return-object v4

    :cond_51a
    move-object v7, v4

    goto :goto_4cd

    :cond_51c
    move-object v7, v4

    goto/16 :goto_315

    :cond_51f
    move-object v7, v4

    goto/16 :goto_167
.end method

.method protected zzmS()V
    .registers 1

    return-void
.end method

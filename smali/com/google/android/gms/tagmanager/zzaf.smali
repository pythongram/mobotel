.class Lcom/google/android/gms/tagmanager/zzaf;
.super Lcom/google/android/gms/tagmanager/zzam;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final zzbGf:Ljava/lang/String;

.field private static final zzbGg:Ljava/lang/String;

.field private static final zzbGh:Ljava/lang/String;

.field private static final zzbGi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzah;->zzdM:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaf;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzai;->zzfI:Lcom/google/android/gms/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaf;->zzbGf:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzai;->zzio:Lcom/google/android/gms/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaf;->zzbGg:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzai;->zzhH:Lcom/google/android/gms/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaf;->zzbGh:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzai;->zziy:Lcom/google/android/gms/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzai;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaf;->zzbGi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    sget-object v0, Lcom/google/android/gms/tagmanager/zzaf;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zzaf;->zzbGf:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzam;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzQb()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzZ(Ljava/util/Map;)Lcom/google/android/gms/internal/zzak$zza;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzak$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzak$zza;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzaf;->zzbGf:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzak$zza;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRR()Lcom/google/android/gms/internal/zzak$zza;

    move-result-object v1

    if-ne v0, v1, :cond_15

    :cond_10
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRR()Lcom/google/android/gms/internal/zzak$zza;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zze(Lcom/google/android/gms/internal/zzak$zza;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzaf;->zzbGh:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzak$zza;

    if-nez v0, :cond_67

    const-string v0, "text"

    move-object v1, v0

    :goto_26
    sget-object v0, Lcom/google/android/gms/tagmanager/zzaf;->zzbGi:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzak$zza;

    if-nez v0, :cond_6d

    const-string v0, "base16"

    move-object v2, v0

    :goto_33
    const/4 v3, 0x2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzaf;->zzbGg:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzak$zza;

    if-eqz v0, :cond_4a

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzi(Lcom/google/android/gms/internal/zzak$zza;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x3

    move v3, v0

    :cond_4a
    :try_start_4a
    const-string v0, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_55} :catch_bb

    move-result-object v0

    :goto_56
    const-string v1, "base16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzk;->zzq([B)Ljava/lang/String;

    move-result-object v0

    :goto_62
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzak$zza;

    move-result-object v0

    goto :goto_14

    :cond_67
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zze(Lcom/google/android/gms/internal/zzak$zza;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_26

    :cond_6d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zze(Lcom/google/android/gms/internal/zzak$zza;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_33

    :cond_73
    :try_start_73
    const-string v0, "base16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzk;->zzgR(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_56

    :cond_80
    const-string v0, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_56

    :cond_8d
    const-string v0, "base64url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    or-int/lit8 v0, v3, 0x8

    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_56

    :cond_9c
    const-string v2, "Encode: unknown input format: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_ac
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRR()Lcom/google/android/gms/internal/zzak$zza;

    move-result-object v0

    goto/16 :goto_14

    :cond_b5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_ba} :catch_bb

    goto :goto_ac

    :catch_bb
    move-exception v0

    const-string v0, "Encode: invalid input:"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRR()Lcom/google/android/gms/internal/zzak$zza;

    move-result-object v0

    goto/16 :goto_14

    :cond_c7
    const-string v1, "base64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_d4
    const-string v1, "base64url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    or-int/lit8 v1, v3, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_e3
    const-string v1, "Encode: unknown output format: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_fc

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzRR()Lcom/google/android/gms/internal/zzak$zza;

    move-result-object v0

    goto/16 :goto_14

    :cond_fc
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_f3
.end method

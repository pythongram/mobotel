.class Lcom/google/android/gms/internal/zztk$zza;
.super Lcom/google/android/gms/internal/zzrz;

# interfaces
.implements Lcom/google/android/gms/internal/zzso$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzrz;",
        "Lcom/google/android/gms/internal/zzso$zza",
        "<",
        "Lcom/google/android/gms/internal/zztl;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzagN:Lcom/google/android/gms/internal/zztl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzsc;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrz;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    new-instance v0, Lcom/google/android/gms/internal/zztl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    return-void
.end method


# virtual methods
.method public zzd(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "ga_sessionTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    iput p2, v0, Lcom/google/android/gms/internal/zztl;->zzagP:I

    :goto_c
    return-void

    :cond_d
    const-string v0, "int configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zztk$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public zze(Ljava/lang/String;Z)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ga_autoActivityTracking"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    if-eqz p2, :cond_11

    :goto_e
    iput v0, v2, Lcom/google/android/gms/internal/zztl;->zzagQ:I

    :goto_10
    return-void

    :cond_11
    move v0, v1

    goto :goto_e

    :cond_13
    const-string v2, "ga_anonymizeIp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    if-eqz p2, :cond_22

    :goto_1f
    iput v0, v2, Lcom/google/android/gms/internal/zztl;->zzagR:I

    goto :goto_10

    :cond_22
    move v0, v1

    goto :goto_1f

    :cond_24
    const-string v2, "ga_reportUncaughtExceptions"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    if-eqz p2, :cond_33

    :goto_30
    iput v0, v2, Lcom/google/android/gms/internal/zztl;->zzagS:I

    goto :goto_10

    :cond_33
    move v0, v1

    goto :goto_30

    :cond_35
    const-string v0, "bool configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zztk$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public synthetic zzoV()Lcom/google/android/gms/internal/zzsn;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztk$zza;->zzqr()Lcom/google/android/gms/internal/zztl;

    move-result-object v0

    return-object v0
.end method

.method public zzp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    iget-object v0, v0, Lcom/google/android/gms/internal/zztl;->zzagT:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzq(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "ga_trackingId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    iput-object p2, v0, Lcom/google/android/gms/internal/zztl;->zzabs:Ljava/lang/String;

    :goto_c
    return-void

    :cond_d
    const-string v0, "ga_sampleFrequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zztl;->zzagO:D
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_c

    :catch_1e
    move-exception v0

    const-string v1, "Error parsing ga_sampleFrequency value"

    invoke-virtual {p0, v1, p2, v0}, Lcom/google/android/gms/internal/zztk$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_25
    const-string v0, "string configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zztk$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public zzqr()Lcom/google/android/gms/internal/zztl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztk$zza;->zzagN:Lcom/google/android/gms/internal/zztl;

    return-object v0
.end method

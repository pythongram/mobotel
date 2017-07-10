.class public Lcom/google/android/gms/measurement/AppMeasurement;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;,
        Lcom/google/android/gms/measurement/AppMeasurement$zzd;,
        Lcom/google/android/gms/measurement/AppMeasurement$zzf;,
        Lcom/google/android/gms/measurement/AppMeasurement$zzc;,
        Lcom/google/android/gms/measurement/AppMeasurement$zzb;,
        Lcom/google/android/gms/measurement/AppMeasurement$zzg;,
        Lcom/google/android/gms/measurement/AppMeasurement$zze;,
        Lcom/google/android/gms/measurement/AppMeasurement$zza;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzbqc:Lcom/google/android/gms/internal/zzaue;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE",
            "android.permission.WAKE_LOCK"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaue;->zzbM(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMw()Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    return-object v0
.end method

.method private zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzatb;->beginAdUnitExposure(Ljava/lang/String;)V

    return-void
.end method

.method protected clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x18L
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x18L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzauj;->clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzatb;->endAdUnitExposure(Ljava/lang/String;)V

    return-void
.end method

.method public generateEventId()J
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaut;->zzNi()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzauj;->zzfQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x17L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzauj;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x17L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauk;->zzMV()Lcom/google/android/gms/measurement/AppMeasurement$zzf;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzf;->zzbqf:Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getGmpAppId()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaba;->zzwQ()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "getGoogleAppId failed with exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method protected getMaxUserProperties(Ljava/lang/String;)I
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauj;->getMaxUserProperties(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x18L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x17L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzauj;->getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x28L
            min = 0x1L
        .end annotation
    .end param

    const/4 v3, 0x1

    if-nez p2, :cond_8

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    const-string v0, "_iap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zzfU(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKM()I

    move-result v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_3f
    iget-object v3, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_4a
    return-void

    :cond_4b
    const/4 v0, 0x0

    goto :goto_3f

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/google/android/gms/internal/zzauj;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_4a
.end method

.method public logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    if-nez p3, :cond_7

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzauj;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zzd;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$zzd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauk;->registerOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zzd;)V

    return-void
.end method

.method protected setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauj;->setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method protected setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauj;->setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public setMeasurementEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauj;->setMeasurementEnabled(Z)V

    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzauj;->setMinimumSessionDuration(J)V

    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzauj;->setSessionTimeoutDuration(J)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 4

    const-string v0, "app"

    const-string v1, "_id"

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x18L
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zzfW(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_27
    iget-object v3, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_32
    return-void

    :cond_33
    const/4 v0, 0x0

    goto :goto_27

    :cond_35
    const-string v0, "app"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_32
.end method

.method public unregisterOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zzd;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$zzd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauk;->unregisterOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zzd;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauj;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/measurement/AppMeasurement$zzc;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauj;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzc;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 12

    if-nez p3, :cond_14

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauj;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_14
    move-object v3, p3

    goto :goto_7
.end method

.method public zzaJ(Z)Ljava/util/Map;
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauj;->zzaN(Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_2d
    return-object v1
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/AppMeasurement;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/zzrt;
.super Lcom/google/android/gms/analytics/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzrt;",
        ">;"
    }
.end annotation


# instance fields
.field private zzadg:Ljava/lang/String;

.field private zzadh:Ljava/lang/String;

.field private zzadi:Ljava/lang/String;

.field private zzadj:Ljava/lang/String;

.field private zzadk:Z

.field private zzadl:Ljava/lang/String;

.field private zzadm:Z

.field private zzadn:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadi:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrt;->zzadh:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(D)V
    .registers 6

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_15

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    :goto_d
    const-string v1, "Sample rate must be between 0% and 100%"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzrt;->zzadn:D

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrt;->zzadi:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hitType"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzadg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzadh:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzadi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidAdId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzadj:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdTargetingEnabled"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrt;->zzadk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionControl"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrt;->zzadl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonInteraction"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrt;->zzadm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sampleRate"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrt;->zzadn:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrt;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzS(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzrt;->zzadk:Z

    return-void
.end method

.method public zzT(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzrt;->zzadm:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzrt;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrt;->zzbE(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrt;->setClientId(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrt;->setUserId(Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrt;->zzbF(Ljava/lang/String;)V

    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadk:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrt;->zzS(Z)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrt;->zzbG(Ljava/lang/String;)V

    :cond_49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadm:Z

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadm:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrt;->zzT(Z)V

    :cond_52
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadn:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5f

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadn:D

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrt;->setSampleRate(D)V

    :cond_5f
    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzf;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzrt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrt;->zza(Lcom/google/android/gms/internal/zzrt;)V

    return-void
.end method

.method public zzbE(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrt;->zzadg:Ljava/lang/String;

    return-void
.end method

.method public zzbF(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrt;->zzadj:Ljava/lang/String;

    return-void
.end method

.method public zzbG(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrt;->zzadl:Ljava/lang/String;

    return-void
.end method

.method public zzmy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadh:Ljava/lang/String;

    return-object v0
.end method

.method public zznu()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadg:Ljava/lang/String;

    return-object v0
.end method

.method public zznv()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadj:Ljava/lang/String;

    return-object v0
.end method

.method public zznw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadk:Z

    return v0
.end method

.method public zznx()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadl:Ljava/lang/String;

    return-object v0
.end method

.method public zzny()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadm:Z

    return v0
.end method

.method public zznz()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrt;->zzadn:D

    return-wide v0
.end method

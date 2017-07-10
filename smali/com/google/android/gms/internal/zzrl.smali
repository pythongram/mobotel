.class public final Lcom/google/android/gms/internal/zzrl;
.super Lcom/google/android/gms/analytics/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzrl;",
        ">;"
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private zzFV:Ljava/lang/String;

.field private zzGV:Ljava/lang/String;

.field private zzacO:Ljava/lang/String;

.field private zzacP:Ljava/lang/String;

.field private zzacQ:Ljava/lang/String;

.field private zzacR:Ljava/lang/String;

.field private zzacS:Ljava/lang/String;

.field private zzacT:Ljava/lang/String;

.field private zzacU:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzFV:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzGV:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacO:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl;->mName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrl;->mName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrl;->zzacO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "medium"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrl;->zzacP:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keyword"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrl;->zzacQ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrl;->zzFV:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrl;->zzGV:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adNetworkId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrl;->zzacR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrl;->zzacS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrl;->zzacT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrl;->zzacU:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrl;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrl;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrl;->setName(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrl;->zzbr(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrl;->zzbs(Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrl;->zzbt(Ljava/lang/String;)V

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzFV:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzFV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrl;->zzbu(Ljava/lang/String;)V

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzGV:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzGV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrl;->zzbv(Ljava/lang/String;)V

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrl;->zzbw(Ljava/lang/String;)V

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrl;->zzbx(Ljava/lang/String;)V

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrl;->zzby(Ljava/lang/String;)V

    :cond_75
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacU:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrl;->zzbz(Ljava/lang/String;)V

    :cond_82
    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzf;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzrl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrl;->zza(Lcom/google/android/gms/internal/zzrl;)V

    return-void
.end method

.method public zzbr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl;->zzacO:Ljava/lang/String;

    return-void
.end method

.method public zzbs(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl;->zzacP:Ljava/lang/String;

    return-void
.end method

.method public zzbt(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl;->zzacQ:Ljava/lang/String;

    return-void
.end method

.method public zzbu(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl;->zzFV:Ljava/lang/String;

    return-void
.end method

.method public zzbv(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl;->zzGV:Ljava/lang/String;

    return-void
.end method

.method public zzbw(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl;->zzacR:Ljava/lang/String;

    return-void
.end method

.method public zzbx(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl;->zzacS:Ljava/lang/String;

    return-void
.end method

.method public zzby(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl;->zzacT:Ljava/lang/String;

    return-void
.end method

.method public zzbz(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrl;->zzacU:Ljava/lang/String;

    return-void
.end method

.method public zznb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacP:Ljava/lang/String;

    return-object v0
.end method

.method public zznc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacQ:Ljava/lang/String;

    return-object v0
.end method

.method public zznd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacR:Ljava/lang/String;

    return-object v0
.end method

.method public zzne()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacS:Ljava/lang/String;

    return-object v0
.end method

.method public zznf()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacT:Ljava/lang/String;

    return-object v0
.end method

.method public zzng()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrl;->zzacU:Ljava/lang/String;

    return-object v0
.end method

.class Lcom/google/android/gms/internal/zzauj$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/MainThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzauj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzbvb:Lcom/google/android/gms/internal/zzauj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzauj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzauj;Lcom/google/android/gms/internal/zzauj$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauj$zza;-><init>(Lcom/google/android/gms/internal/zzauj;)V

    return-void
.end method

.method private zzfR(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    const-string v1, "auto"

    const-string v2, "_ldl"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzauj;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_a7

    if-nez p2, :cond_44

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzaut;->zzu(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzauj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzaut;->zzA(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "gs"

    :goto_3b
    if-eqz v2, :cond_44

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    const-string v4, "_cmp"

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/gms/internal/zzauj;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_44
    const-string v0, "referrer"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    :goto_50
    return-void

    :cond_51
    const-string v0, "auto"

    goto :goto_3b

    :cond_54
    const-string v0, "gclid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b1

    const-string v0, "utm_campaign"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "utm_source"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "utm_medium"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "utm_term"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "utm_content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b1

    :cond_84
    const/4 v0, 0x1

    :goto_85
    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Activity created with data \'referrer\' param without gclid and at least one utm field"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_96} :catch_97

    goto :goto_50

    :catch_97
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a7
    :goto_a7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzauk;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_50

    :cond_b1
    const/4 v0, 0x0

    goto :goto_85

    :cond_b3
    :try_start_b3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Activity created with referrer"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzauj$zza;->zzfR(Ljava/lang/String;)Z
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_c5} :catch_97

    goto :goto_a7
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauk;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauk;->onActivityPaused(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKj()Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaun;->zzNe()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauk;->onActivityResumed(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKj()Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaun;->zzNc()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauj$zza;->zzbvb:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzauk;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

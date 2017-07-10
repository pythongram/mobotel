.class public Lcom/google/android/gms/internal/zzaul;
.super Lcom/google/android/gms/internal/zzauh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaul$zza;
    }
.end annotation


# instance fields
.field private final zzbvA:Lcom/google/android/gms/internal/zzaul$zza;

.field private zzbvB:Lcom/google/android/gms/internal/zzatt;

.field private zzbvC:Ljava/lang/Boolean;

.field private final zzbvD:Lcom/google/android/gms/internal/zzatk;

.field private final zzbvE:Lcom/google/android/gms/internal/zzauo;

.field private final zzbvF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbvG:Lcom/google/android/gms/internal/zzatk;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzauo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzauo;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvE:Lcom/google/android/gms/internal/zzauo;

    new-instance v0, Lcom/google/android/gms/internal/zzaul$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaul$zza;-><init>(Lcom/google/android/gms/internal/zzaul;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvA:Lcom/google/android/gms/internal/zzaul$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzaul$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaul$1;-><init>(Lcom/google/android/gms/internal/zzaul;Lcom/google/android/gms/internal/zzaue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvD:Lcom/google/android/gms/internal/zzatk;

    new-instance v0, Lcom/google/android/gms/internal/zzaul$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaul$5;-><init>(Lcom/google/android/gms/internal/zzaul;Lcom/google/android/gms/internal/zzaue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvG:Lcom/google/android/gms/internal/zzatk;

    return-void
.end method

.method private onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvB:Lcom/google/android/gms/internal/zzatt;

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvB:Lcom/google/android/gms/internal/zzatt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzMZ()V

    :cond_1a
    return-void
.end method

.method private zzMX()Z
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private zzMZ()V
    .registers 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzoD()V

    return-void
.end method

.method private zzNa()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    goto :goto_20

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvG:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatk;->cancel()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaul;)Lcom/google/android/gms/internal/zzaul$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvA:Lcom/google/android/gms/internal/zzaul$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaul;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaul;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaul;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzop()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzaul;)Lcom/google/android/gms/internal/zzatt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvB:Lcom/google/android/gms/internal/zzatt;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzaul;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzoo()V

    return-void
.end method

.method private zzo(Ljava/lang/Runnable;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzLm()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_c

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvG:Lcom/google/android/gms/internal/zzatk;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatk;->zzy(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzoD()V

    goto :goto_c
.end method

.method private zzoo()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvE:Lcom/google/android/gms/internal/zzauo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauo;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvD:Lcom/google/android/gms/internal/zzatk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzpq()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatk;->zzy(J)V

    return-void
.end method

.method private zzop()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->disconnect()V

    goto :goto_9
.end method


# virtual methods
.method public disconnect()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaul;->zzbvA:Lcom/google/android/gms/internal/zzaul$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_13} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_13} :catch_19

    :goto_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvB:Lcom/google/android/gms/internal/zzatt;

    return-void

    :catch_17
    move-exception v0

    goto :goto_13

    :catch_19
    move-exception v0

    goto :goto_13
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvB:Lcom/google/android/gms/internal/zzatt;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
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

.method protected zzMR()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaul$3;-><init>(Lcom/google/android/gms/internal/zzaul;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzMW()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaul$6;-><init>(Lcom/google/android/gms/internal/zzaul;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzMY()Z
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Checking service availability"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/zze;->zzuY()Lcom/google/android/gms/common/zze;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/zze;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    sparse-switch v2, :sswitch_data_84

    move v0, v1

    :goto_2c
    return v0

    :sswitch_2d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Service available"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_2c

    :sswitch_3b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Service missing"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2c

    :sswitch_4a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Service updating"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_2c

    :sswitch_58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Service container out of date"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_2c

    :sswitch_66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Service disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2c

    :sswitch_75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Service invalid"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2c

    :sswitch_data_84
    .sparse-switch
        0x0 -> :sswitch_2d
        0x1 -> :sswitch_3b
        0x2 -> :sswitch_58
        0x3 -> :sswitch_66
        0x9 -> :sswitch_75
        0x12 -> :sswitch_4a
    .end sparse-switch
.end method

.method protected zza(Lcom/google/android/gms/internal/zzatt;)V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul;->zzbvB:Lcom/google/android/gms/internal/zzatt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzoo()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzNa()V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzatt;Lcom/google/android/gms/common/internal/safeparcel/zza;)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x0

    const/16 v4, 0x64

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLp()I

    move v3, v2

    move v1, v4

    :goto_23
    const/16 v0, 0x3e9

    if-ge v3, v0, :cond_e2

    if-ne v1, v4, :cond_e2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzatv;->zzlD(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e3

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_3b
    if-eqz p2, :cond_42

    if-ge v1, v4, :cond_42

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/zza;

    instance-of v7, v0, Lcom/google/android/gms/internal/zzatq;

    if-eqz v7, :cond_7b

    :try_start_56
    check-cast v0, Lcom/google/android/gms/internal/zzatq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzatu;->zzfD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v0, v7}, Lcom/google/android/gms/internal/zzatt;->zza(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_6b} :catch_6c

    goto :goto_46

    :catch_6c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v7

    const-string v8, "Failed to send event to the service"

    invoke-virtual {v7, v8, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_46

    :cond_7b
    instance-of v7, v0, Lcom/google/android/gms/internal/zzauq;

    if-eqz v7, :cond_a4

    :try_start_7f
    check-cast v0, Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzatu;->zzfD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v0, v7}, Lcom/google/android/gms/internal/zzatt;->zza(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_94} :catch_95

    goto :goto_46

    :catch_95
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v7

    const-string v8, "Failed to send attribute to the service"

    invoke-virtual {v7, v8, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_46

    :cond_a4
    instance-of v7, v0, Lcom/google/android/gms/internal/zzatg;

    if-eqz v7, :cond_ce

    :try_start_a8
    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzatu;->zzfD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v7

    invoke-interface {p1, v0, v7}, Lcom/google/android/gms/internal/zzatt;->zza(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_bd} :catch_be

    goto :goto_46

    :catch_be
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v7

    const-string v8, "Failed to send conditional property to the service"

    invoke-virtual {v7, v8, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_46

    :cond_ce
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v7, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto/16 :goto_46

    :cond_dd
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_23

    :cond_e2
    return-void

    :cond_e3
    move v1, v2

    goto/16 :goto_3b
.end method

.method protected zza(Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaul$4;-><init>(Lcom/google/android/gms/internal/zzaul;Lcom/google/android/gms/measurement/AppMeasurement$zzf;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaul$2;-><init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaul$9;-><init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaul$10;-><init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauq;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaul$12;-><init>(Lcom/google/android/gms/internal/zzaul;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzauq;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzatv;->zza(Lcom/google/android/gms/internal/zzauq;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_1a
    new-instance v1, Lcom/google/android/gms/internal/zzaul$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/zzaul$11;-><init>(Lcom/google/android/gms/internal/zzaul;ZLcom/google/android/gms/internal/zzauq;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void

    :cond_23
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method protected zzc(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzatv;->zza(Lcom/google/android/gms/internal/zzatq;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v3, v2

    :goto_1e
    new-instance v0, Lcom/google/android/gms/internal/zzaul$7;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaul$7;-><init>(Lcom/google/android/gms/internal/zzaul;ZZLcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void

    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method protected zzf(Lcom/google/android/gms/internal/zzatg;)V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzatv;->zzc(Lcom/google/android/gms/internal/zzatg;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v3, v2

    :goto_1c
    new-instance v4, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzatg;-><init>(Lcom/google/android/gms/internal/zzatg;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaul$8;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaul$8;-><init>(Lcom/google/android/gms/internal/zzaul;ZZLcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatg;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaul;->zzo(Ljava/lang/Runnable;)V

    return-void

    :cond_2c
    const/4 v3, 0x0

    goto :goto_1c
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

.method zzoD()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvC:Ljava/lang/Boolean;

    if-nez v0, :cond_43

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMm()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvC:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvC:Ljava/lang/Boolean;

    if-nez v0, :cond_43

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "State of service unknown"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzMY()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvC:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul;->zzbvC:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaua;->zzaK(Z)V

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Using measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzbvA:Lcom/google/android/gms/internal/zzaul$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul$zza;->zzNb()V

    goto :goto_c

    :cond_5e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaul;->zzMX()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Using local app measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaul;->zzbvA:Lcom/google/android/gms/internal/zzaul$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaul$zza;->zzz(Landroid/content/Intent;)V

    goto/16 :goto_c

    :cond_94
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaul;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.class public Lcom/google/android/gms/internal/zzaue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaue$zza;
    }
.end annotation


# static fields
.field private static volatile zzbtZ:Lcom/google/android/gms/internal/zzaue;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzadP:Z

.field private zzbuA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzbuB:I

.field private zzbuC:I

.field private zzbuD:J

.field protected zzbuE:J

.field private final zzbua:Lcom/google/android/gms/internal/zzati;

.field private final zzbub:Lcom/google/android/gms/internal/zzaua;

.field private final zzbuc:Lcom/google/android/gms/internal/zzatx;

.field private final zzbud:Lcom/google/android/gms/internal/zzaud;

.field private final zzbue:Lcom/google/android/gms/internal/zzaun;

.field private final zzbuf:Lcom/google/android/gms/internal/zzauc;

.field private final zzbug:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzbuh:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final zzbui:Lcom/google/android/gms/internal/zzaut;

.field private final zzbuj:Lcom/google/android/gms/internal/zzatj;

.field private final zzbuk:Lcom/google/android/gms/internal/zzatv;

.field private final zzbul:Lcom/google/android/gms/internal/zzaty;

.field private final zzbum:Lcom/google/android/gms/internal/zzauk;

.field private final zzbun:Lcom/google/android/gms/internal/zzaul;

.field private final zzbuo:Lcom/google/android/gms/internal/zzatl;

.field private final zzbup:Lcom/google/android/gms/internal/zzauj;

.field private final zzbuq:Lcom/google/android/gms/internal/zzatu;

.field private final zzbur:Lcom/google/android/gms/internal/zzatz;

.field private final zzbus:Lcom/google/android/gms/internal/zzaup;

.field private final zzbut:Lcom/google/android/gms/internal/zzatf;

.field private final zzbuu:Lcom/google/android/gms/internal/zzatb;

.field private zzbuv:Z

.field private zzbuw:Ljava/lang/Boolean;

.field private zzbux:J

.field private zzbuy:Ljava/nio/channels/FileLock;

.field private zzbuz:Ljava/nio/channels/FileChannel;

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaui;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaui;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuD:J

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzn(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zza(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbua:Lcom/google/android/gms/internal/zzati;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzb(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbub:Lcom/google/android/gms/internal/zzaua;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzc(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuc:Lcom/google/android/gms/internal/zzatx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMc()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "App measurement is starting up, version"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMc()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzj(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaut;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbui:Lcom/google/android/gms/internal/zzaut;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzq(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatl;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuo:Lcom/google/android/gms/internal/zzatl;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzr(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuq:Lcom/google/android/gms/internal/zzatu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->zzke()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaut;->zzge(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_163

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMc()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_96
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzk(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuj:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzl(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatv;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuk:Lcom/google/android/gms/internal/zzatv;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzu(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatf;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbut:Lcom/google/android/gms/internal/zzatf;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzv(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuu:Lcom/google/android/gms/internal/zzatb;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzm(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaty;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbul:Lcom/google/android/gms/internal/zzaty;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzo(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauk;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbum:Lcom/google/android/gms/internal/zzauk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzp(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbun:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzi(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbup:Lcom/google/android/gms/internal/zzauj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzt(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaup;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbus:Lcom/google/android/gms/internal/zzaup;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzs(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbur:Lcom/google/android/gms/internal/zzatz;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzh(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbug:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzg(Lcom/google/android/gms/internal/zzaue;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuh:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zze(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaun;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbue:Lcom/google/android/gms/internal/zzaun;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzf(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauc;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuf:Lcom/google/android/gms/internal/zzauc;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzaui;->zzd(Lcom/google/android/gms/internal/zzaue;)Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbud:Lcom/google/android/gms/internal/zzaud;

    iget v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuB:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuC:I

    if-eq v0, v1, :cond_13d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/internal/zzaue;->zzbuB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzaue;->zzbuC:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaue;->zzadP:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbua:Lcom/google/android/gms/internal/zzati;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_186

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzMQ()V

    :goto_158
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbud:Lcom/google/android/gms/internal/zzaud;

    new-instance v1, Lcom/google/android/gms/internal/zzaue$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaue$1;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    return-void

    :cond_163
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMc()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_180

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17b
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto/16 :goto_96

    :cond_180
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_17b

    :cond_186
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_158
.end method

.method private zzMH()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzLJ()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzLD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private zzMI()V
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMM()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_4f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_4d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatz;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMA()Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaup;->cancel()V

    goto :goto_e

    :cond_4d
    iput-wide v8, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:J

    :cond_4f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMt()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMH()Z

    move-result v0

    if-nez v0, :cond_6a

    :cond_5b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatz;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMA()Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaup;->cancel()V

    goto :goto_e

    :cond_6a
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMJ()J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-nez v2, :cond_81

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatz;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMA()Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaup;->cancel()V

    goto :goto_e

    :cond_81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMy()Lcom/google/android/gms/internal/zzaty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaty;->zzqa()Z

    move-result v2

    if-nez v2, :cond_9b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatz;->zzpX()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMA()Lcom/google/android/gms/internal/zzaup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaup;->cancel()V

    goto/16 :goto_e

    :cond_9b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaua;->zzbtb:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzLs()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zzh(JJ)Z

    move-result v6

    if-nez v6, :cond_bc

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMz()Lcom/google/android/gms/internal/zzatz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatz;->unregister()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-gtz v2, :cond_e9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLw()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaua;->zzbsZ:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMA()Lcom/google/android/gms/internal/zzaup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaup;->zzy(J)V

    goto/16 :goto_e
.end method

.method private zzMJ()J
    .registers 17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLz()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzLK()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzLE()Z

    move-result v0

    if-eqz v0, :cond_77

    :cond_24
    const/4 v0, 0x1

    move v4, v0

    :goto_26
    if-eqz v4, :cond_83

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, ".none."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLv()J

    move-result-wide v0

    :goto_46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaua;->zzbsZ:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaua;->zzbta:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatj;->zzLH()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatj;->zzLI()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-nez v5, :cond_8c

    const-wide/16 v2, 0x0

    :cond_76
    :goto_76
    return-wide v2

    :cond_77
    const/4 v0, 0x0

    move v4, v0

    goto :goto_26

    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLu()J

    move-result-wide v0

    goto :goto_46

    :cond_83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLt()J

    move-result-wide v0

    goto :goto_46

    :cond_8c
    sub-long/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long v12, v2, v12

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v2, v8

    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v2, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v2, v12, v6

    if-eqz v4, :cond_b4

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_b4

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v2, v0

    :cond_b4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v4

    invoke-virtual {v4, v8, v9, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzh(JJ)Z

    move-result v4

    if-nez v4, :cond_c0

    add-long v2, v8, v0

    :cond_c0
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_76

    cmp-long v0, v10, v12

    if-ltz v0, :cond_76

    const/4 v0, 0x0

    :goto_cb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLB()I

    move-result v1

    if-ge v0, v1, :cond_e9

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLA()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    cmp-long v1, v2, v10

    if-gtz v1, :cond_76

    add-int/lit8 v0, v0, 0x1

    goto :goto_cb

    :cond_e9
    const-wide/16 v2, 0x0

    goto :goto_76
.end method

.method private zza(Lcom/google/android/gms/internal/zzaug;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzauh;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauh;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzatm;)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->zzbrz:Lcom/google/android/gms/internal/zzato;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return v5

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->zzbrz:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "_r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v5, v10

    goto :goto_6

    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzauc;->zzab(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzME()J

    move-result-wide v2

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/zzatj;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzatj$zza;

    move-result-object v1

    if-eqz v0, :cond_6

    iget-wide v0, v1, Lcom/google/android/gms/internal/zzatj$zza;->zzbrr:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzati;->zzfl(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    move v5, v10

    goto :goto_6
.end method

.method private zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauw$zzg;[Lcom/google/android/gms/internal/zzauw$zzb;)[Lcom/google/android/gms/internal/zzauw$zza;
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzJZ()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzatf;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauw$zzb;[Lcom/google/android/gms/internal/zzauw$zzg;)[Lcom/google/android/gms/internal/zzauw$zza;

    move-result-object v0

    return-object v0
.end method

.method public static zzbM(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaue;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzaue;->zzbtZ:Lcom/google/android/gms/internal/zzaue;

    if-nez v0, :cond_21

    const-class v1, Lcom/google/android/gms/internal/zzaue;

    monitor-enter v1

    :try_start_11
    sget-object v0, Lcom/google/android/gms/internal/zzaue;->zzbtZ:Lcom/google/android/gms/internal/zzaue;

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/zzaui;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaui;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaui;->zzMP()Lcom/google/android/gms/internal/zzaue;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaue;->zzbtZ:Lcom/google/android/gms/internal/zzaue;

    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_24

    :cond_21
    sget-object v0, Lcom/google/android/gms/internal/zzaue;->zzbtZ:Lcom/google/android/gms/internal/zzaue;

    return-object v0

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private zzf(Lcom/google/android/gms/internal/zzatd;)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzaua;->zzfH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v2, :cond_11a

    new-instance v0, Lcom/google/android/gms/internal/zzatc;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/zzatc;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaua;->zzMh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatc;->zzfd(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzatc;->zzff(Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :cond_3d
    :goto_3d
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatc;->zzfe(Ljava/lang/String;)V

    move v0, v1

    :cond_57
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqT:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqT:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatc;->zzfg(Ljava/lang/String;)V

    move v0, v1

    :cond_71
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_89

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKv()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_89

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzatc;->zzab(J)V

    move v0, v1

    :cond_89
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a3

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatc;->setAppVersion(Ljava/lang/String;)V

    move v0, v1

    :cond_a3
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->zzbqS:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKt()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_b3

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->zzbqS:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzatc;->zzaa(J)V

    move v0, v1

    :cond_b3
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqM:Ljava/lang/String;

    if-eqz v3, :cond_c9

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqM:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqM:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatc;->zzfh(Ljava/lang/String;)V

    move v0, v1

    :cond_c9
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->zzbqO:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKw()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_d9

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->zzbqO:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzatc;->zzac(J)V

    move v0, v1

    :cond_d9
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKx()Z

    move-result v4

    if-eq v3, v4, :cond_e7

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatc;->setMeasurementEnabled(Z)V

    move v0, v1

    :cond_e7
    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqP:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_101

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatd;->zzbqP:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_101

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqP:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatc;->zzfi(Ljava/lang/String;)V

    move v0, v1

    :cond_101
    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->zzbqU:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzuW()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_135

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatd;->zzbqU:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzatc;->zzam(J)V

    :goto_110
    if-eqz v1, :cond_119

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    :cond_119
    return-void

    :cond_11a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzff(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatc;->zzfd(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_3d

    :cond_135
    move v1, v0

    goto :goto_110
.end method

.method private zzl(Ljava/lang/String;J)Z
    .registers 26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_7
    new-instance v8, Lcom/google/android/gms/internal/zzaue$zza;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/google/android/gms/internal/zzaue$zza;-><init>(Lcom/google/android/gms/internal/zzaue;Lcom/google/android/gms/internal/zzaue$1;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzaue;->zzbuD:J

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;JJLcom/google/android/gms/internal/zzatj$zzb;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzaue$zza;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51b

    const/4 v5, 0x0

    iget-object v0, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    move-object/from16 v19, v0

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauw$zzb;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_39
    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_379

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v3

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzauc;->zzaa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Dropping blacklisted raw event. appId"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v7, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaut;->zzgg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaut;->zzgh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d3

    :cond_9a
    const/4 v2, 0x1

    :goto_9b
    if-nez v2, :cond_53c

    const-string v3, "_err"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    const/16 v4, 0xb

    const-string v7, "_ev"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v7, v2, v9}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    move v2, v6

    move v3, v5

    :goto_cb
    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    move v6, v2

    move v5, v3

    goto/16 :goto_39

    :cond_d3
    const/4 v2, 0x0

    goto :goto_9b

    :cond_d5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v3

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzauc;->zzab(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_105

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzaut;->zzgi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_539

    :cond_105
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    if-nez v2, :cond_124

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/google/android/gms/internal/zzauw$zzc;

    iput-object v7, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    :cond_124
    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v10, v9

    const/4 v2, 0x0

    move v7, v2

    :goto_133
    if-ge v7, v10, :cond_165

    aget-object v2, v9, v7

    const-string v11, "_c"

    iget-object v12, v2, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_151

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    const/4 v2, 0x1

    move v3, v2

    move v2, v4

    :goto_14c
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v2

    goto :goto_133

    :cond_151
    const-string v11, "_r"

    iget-object v12, v2, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_536

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    const/4 v2, 0x1

    goto :goto_14c

    :cond_165
    if-nez v3, :cond_1c5

    if-eqz v20, :cond_1c5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v7, "Marking event as conversion"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzauw$zzc;

    new-instance v3, Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauw$zzc;-><init>()V

    const-string v7, "_c"

    iput-object v7, v3, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v3, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    aput-object v3, v2, v7

    iget-object v3, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzauw$zzb;

    iput-object v2, v3, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    :cond_1c5
    if-nez v4, :cond_223

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Marking event as real-time"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzauw$zzc;

    new-instance v3, Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzauw$zzc;-><init>()V

    const-string v4, "_r"

    iput-object v4, v3, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aput-object v3, v2, v4

    iget-object v3, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzauw$zzb;

    iput-object v2, v3, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    :cond_223
    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzME()J

    move-result-wide v10

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/internal/zzatj;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzatj$zza;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrr:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    iget-object v9, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/zzati;->zzfl(Ljava/lang/String;)I

    move-result v4

    int-to-long v10, v4

    cmp-long v2, v2, v10

    if-lez v2, :cond_28b

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    const/4 v3, 0x0

    :goto_259
    iget-object v4, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v4, v4

    if-ge v3, v4, :cond_28a

    const-string v4, "_r"

    iget-object v7, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_304

    iget-object v4, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/zzauw$zzc;

    if-lez v3, :cond_27c

    iget-object v7, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v9, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27c
    array-length v7, v4

    if-ge v3, v7, :cond_288

    iget-object v7, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    add-int/lit8 v9, v3, 0x1

    array-length v10, v4

    sub-int/2addr v10, v3

    invoke-static {v7, v9, v4, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_288
    iput-object v4, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    :cond_28a
    move v7, v5

    :cond_28b
    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaut;->zzfT(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_377

    if-eqz v20, :cond_377

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzME()J

    move-result-wide v10

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/internal/zzatj;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzatj$zza;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrp:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzati;->zzfk(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_377

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v4, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v10, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v11, v10

    const/4 v3, 0x0

    move v9, v3

    :goto_2ef
    if-ge v9, v11, :cond_319

    aget-object v3, v10, v9

    const-string v12, "_c"

    iget-object v13, v3, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_308

    move v4, v5

    :goto_2fe
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v4

    move-object v4, v3

    goto :goto_2ef

    :cond_304
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_259

    :cond_308
    const-string v12, "_err"

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_532

    const/4 v3, 0x1

    move-object/from16 v21, v4

    move v4, v3

    move-object/from16 v3, v21

    goto :goto_2fe

    :cond_319
    if-eqz v5, :cond_352

    if-eqz v4, :cond_352

    iget-object v3, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v10, v3, [Lcom/google/android/gms/internal/zzauw$zzc;

    const/4 v5, 0x0

    iget-object v11, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    array-length v12, v11

    const/4 v3, 0x0

    move v9, v3

    :goto_32a
    if-ge v9, v12, :cond_339

    aget-object v13, v11, v9

    if-eq v13, v4, :cond_52f

    add-int/lit8 v3, v5, 0x1

    aput-object v13, v10, v5

    :goto_334
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v5, v3

    goto :goto_32a

    :cond_339
    iput-object v10, v2, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    move v4, v7

    :goto_33c
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    add-int/lit8 v3, v6, 0x1

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzauw$zzb;

    aput-object v2, v5, v6

    move v2, v3

    move v3, v4

    goto/16 :goto_cb

    :cond_352
    if-eqz v4, :cond_362

    const-string v2, "_err"

    iput-object v2, v4, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    move v4, v7

    goto :goto_33c

    :cond_362
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    iget-object v4, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_377
    move v4, v7

    goto :goto_33c

    :cond_379
    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzth:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_38f

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzauw$zzb;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    :cond_38f
    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzbxh:[Lcom/google/android/gms/internal/zzauw$zzg;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzaue;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauw$zzg;[Lcom/google/android/gms/internal/zzauw$zzb;)[Lcom/google/android/gms/internal/zzauw$zza;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxz:[Lcom/google/android/gms/internal/zzauw$zza;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:Ljava/lang/Long;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    const/4 v2, 0x0

    :goto_3bd
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    array-length v3, v3

    if-ge v2, v3, :cond_3fd

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v6, v10

    if-gez v4, :cond_3e2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:Ljava/lang/Long;

    :cond_3e2
    iget-object v4, v3, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v6, v10

    if-lez v4, :cond_3fa

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    :cond_3fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_3bd

    :cond_3fd
    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v10

    if-nez v10, :cond_484

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Bundling raw events w/o app info. appId"

    iget-object v4, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_420
    :goto_420
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    array-length v2, v2

    if-lez v2, :cond_45d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzauc;->zzfL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzauv$zzb;

    move-result-object v2

    if-eqz v2, :cond_440

    iget-object v3, v2, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    if-nez v3, :cond_510

    :cond_440
    iget-object v2, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbqL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f9

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxE:Ljava/lang/Long;

    :goto_454
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzauw$zze;Z)Z

    :cond_45d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuH:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzJ(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzatj;->zzfB(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    array-length v2, v2
    :try_end_479
    .catchall {:try_start_7 .. :try_end_479} :catchall_4ec

    if-lez v2, :cond_518

    const/4 v2, 0x1

    :goto_47c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    :goto_483
    return v2

    :cond_484
    :try_start_484
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    array-length v2, v2

    if-lez v2, :cond_420

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzatc;->zzKs()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_4f5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_499
    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxm:Ljava/lang/Long;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzatc;->zzKr()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v4, v6, v12

    if-nez v4, :cond_52c

    :goto_4a7
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_4f7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_4b1
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxl:Ljava/lang/Long;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzatc;->zzKB()V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzatc;->zzKy()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxx:Ljava/lang/Integer;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzY(J)V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzZ(J)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzatc;->zzKJ()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbqP:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V
    :try_end_4ea
    .catchall {:try_start_484 .. :try_end_4ea} :catchall_4ec

    goto/16 :goto_420

    :catchall_4ec
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v2

    :cond_4f5
    const/4 v4, 0x0

    goto :goto_499

    :cond_4f7
    const/4 v2, 0x0

    goto :goto_4b1

    :cond_4f9
    :try_start_4f9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Did not find measurement config or missing version info. appId"

    iget-object v4, v8, Lcom/google/android/gms/internal/zzaue$zza;->zzbuG:Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_454

    :cond_510
    iget-object v2, v2, Lcom/google/android/gms/internal/zzauv$zzb;->zzbwN:Ljava/lang/Long;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxE:Ljava/lang/Long;

    goto/16 :goto_454

    :cond_518
    const/4 v2, 0x0

    goto/16 :goto_47c

    :cond_51b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_522
    .catchall {:try_start_4f9 .. :try_end_522} :catchall_4ec

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    const/4 v2, 0x0

    goto/16 :goto_483

    :cond_52c
    move-wide v2, v6

    goto/16 :goto_4a7

    :cond_52f
    move v3, v5

    goto/16 :goto_334

    :cond_532
    move-object v3, v4

    move v4, v5

    goto/16 :goto_2fe

    :cond_536
    move v2, v4

    goto/16 :goto_14c

    :cond_539
    move v4, v5

    goto/16 :goto_33c

    :cond_53c
    move v2, v6

    move v3, v5

    goto/16 :goto_cb
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLh()Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLi()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaua;->zzaL(Z)Z

    move-result v0

    goto :goto_11

    :cond_29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzwR()Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v0, 0x1

    goto :goto_20
.end method

.method protected start()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzLF()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbsZ:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbsZ:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMt()Z

    move-result v0

    if-nez v0, :cond_be

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzbW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzbW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzadf;->zzzx()Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzaub;->zzi(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_96

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_96
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzaum;->zzj(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_ba
    :goto_ba
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V

    return-void

    :cond_be
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMk()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_109

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaua;->zzfI(Ljava/lang/String;)V

    :cond_ec
    :goto_ec
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauj;->zzMR()V

    goto :goto_ba

    :cond_109
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMc()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbun:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbun:Lcom/google/android/gms/internal/zzaul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaul;->zzoD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaua;->zzfI(Ljava/lang/String;)V

    goto :goto_ec
.end method

.method zzJV()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method zzJW()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    return-void
.end method

.method public zzJY()Lcom/google/android/gms/internal/zzatb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuu:Lcom/google/android/gms/internal/zzatb;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzaug;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuu:Lcom/google/android/gms/internal/zzatb;

    return-object v0
.end method

.method public zzJZ()Lcom/google/android/gms/internal/zzatf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbut:Lcom/google/android/gms/internal/zzatf;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbut:Lcom/google/android/gms/internal/zzatf;

    return-object v0
.end method

.method protected zzK(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuA:Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_7

    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuA:Ljava/util/List;

    goto :goto_1b
.end method

.method public zzKa()Lcom/google/android/gms/internal/zzauj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbup:Lcom/google/android/gms/internal/zzauj;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbup:Lcom/google/android/gms/internal/zzauj;

    return-object v0
.end method

.method public zzKb()Lcom/google/android/gms/internal/zzatu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuq:Lcom/google/android/gms/internal/zzatu;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuq:Lcom/google/android/gms/internal/zzatu;

    return-object v0
.end method

.method public zzKc()Lcom/google/android/gms/internal/zzatl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuo:Lcom/google/android/gms/internal/zzatl;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuo:Lcom/google/android/gms/internal/zzatl;

    return-object v0
.end method

.method public zzKd()Lcom/google/android/gms/internal/zzaul;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbun:Lcom/google/android/gms/internal/zzaul;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbun:Lcom/google/android/gms/internal/zzaul;

    return-object v0
.end method

.method public zzKe()Lcom/google/android/gms/internal/zzauk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbum:Lcom/google/android/gms/internal/zzauk;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbum:Lcom/google/android/gms/internal/zzauk;

    return-object v0
.end method

.method public zzKf()Lcom/google/android/gms/internal/zzatv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuk:Lcom/google/android/gms/internal/zzatv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuk:Lcom/google/android/gms/internal/zzatv;

    return-object v0
.end method

.method public zzKg()Lcom/google/android/gms/internal/zzatj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuj:Lcom/google/android/gms/internal/zzatj;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuj:Lcom/google/android/gms/internal/zzatj;

    return-object v0
.end method

.method public zzKh()Lcom/google/android/gms/internal/zzaut;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbui:Lcom/google/android/gms/internal/zzaut;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzaug;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbui:Lcom/google/android/gms/internal/zzaut;

    return-object v0
.end method

.method public zzKi()Lcom/google/android/gms/internal/zzauc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuf:Lcom/google/android/gms/internal/zzauc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuf:Lcom/google/android/gms/internal/zzauc;

    return-object v0
.end method

.method public zzKj()Lcom/google/android/gms/internal/zzaun;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbue:Lcom/google/android/gms/internal/zzaun;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbue:Lcom/google/android/gms/internal/zzaun;

    return-object v0
.end method

.method public zzKk()Lcom/google/android/gms/internal/zzaud;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbud:Lcom/google/android/gms/internal/zzaud;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbud:Lcom/google/android/gms/internal/zzaud;

    return-object v0
.end method

.method public zzKl()Lcom/google/android/gms/internal/zzatx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuc:Lcom/google/android/gms/internal/zzatx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuc:Lcom/google/android/gms/internal/zzatx;

    return-object v0
.end method

.method public zzKm()Lcom/google/android/gms/internal/zzaua;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbub:Lcom/google/android/gms/internal/zzaua;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzaug;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbub:Lcom/google/android/gms/internal/zzaua;

    return-object v0
.end method

.method public zzKn()Lcom/google/android/gms/internal/zzati;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbua:Lcom/google/android/gms/internal/zzati;

    return-object v0
.end method

.method public zzMA()Lcom/google/android/gms/internal/zzaup;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbus:Lcom/google/android/gms/internal/zzaup;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbus:Lcom/google/android/gms/internal/zzaup;

    return-object v0
.end method

.method zzMB()Ljava/nio/channels/FileChannel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuz:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method zzMC()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMM()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMD()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMB()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatu;->zzLX()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaue;->zzy(II)Z

    :cond_25
    return-void
.end method

.method zzMD()Z
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuj:Lcom/google/android/gms/internal/zzatj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_16
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuz:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuz:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuy:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuy:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_4b} :catch_4d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4b} :catch_5c

    :goto_4b
    const/4 v0, 0x0

    goto :goto_3d

    :catch_4d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4b

    :catch_5c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4b
.end method

.method zzME()J
    .registers 7

    const-wide/16 v4, 0x3c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaua;->zzMi()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected zzMF()Z
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuA:Ljava/util/List;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public zzMG()V
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v6, 0x0

    const-wide/16 v10, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua;->zzMm()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_2a

    :cond_3f
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_49

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V

    goto :goto_2a

    :cond_49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMF()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_2a

    :cond_5d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMy()Lcom/google/android/gms/internal/zzaty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaty;->zzqa()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V

    goto :goto_2a

    :cond_78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLr()J

    move-result-wide v0

    sub-long v0, v8, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaue;->zzaq(J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbsZ:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_b2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzLD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_213

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzaue;->zzbuD:J

    cmp-long v0, v6, v10

    if-nez v0, :cond_d0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->zzLL()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/internal/zzaue;->zzbuD:J

    :cond_d0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzati;->zzfq(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzati;->zzfr(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lcom/google/android/gms/internal/zzatj;->zzn(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_242

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxt:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxt:Ljava/lang/String;

    move-object v6, v0

    :goto_10d
    if-eqz v6, :cond_23f

    move v2, v3

    :goto_110
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_23f

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzauw$zze;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxt:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12c

    :cond_128
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_110

    :cond_12c
    iget-object v0, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxt:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_128

    invoke-interface {v4, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    :goto_139
    new-instance v6, Lcom/google/android/gms/internal/zzauw$zzd;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzauw$zzd;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzauw$zze;

    iput-object v0, v6, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_14f
    iget-object v0, v6, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    array-length v0, v0

    if-ge v3, v0, :cond_1a0

    iget-object v7, v6, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzauw$zze;

    aput-object v0, v7, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzati;->zzKv()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxs:Ljava/lang/Long;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    aget-object v0, v0, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxi:Ljava/lang/Long;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxy:Ljava/lang/Boolean;

    add-int/lit8 v3, v3, 0x1

    goto :goto_14f

    :cond_1a0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v0

    if-eqz v0, :cond_23c

    invoke-static {v6}, Lcom/google/android/gms/internal/zzaut;->zzb(Lcom/google/android/gms/internal/zzauw$zzd;)Ljava/lang/String;

    move-result-object v0

    :goto_1af
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauw$zzd;)[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzLq()Ljava/lang/String;

    move-result-object v7

    :try_start_1bf
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzaue;->zzK(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaua;->zzbta:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    const-string v4, "?"

    iget-object v5, v6, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    array-length v5, v5

    if-lez v5, :cond_1de

    iget-object v4, v6, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    :cond_1de
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v5

    const-string v6, "Uploading data. app, uncompressed size, data"

    array-length v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v4, v8, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMy()Lcom/google/android/gms/internal/zzaty;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/gms/internal/zzaue$3;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzaue$3;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaty;->zza(Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzaty$zza;)V
    :try_end_1fd
    .catch Ljava/net/MalformedURLException; {:try_start_1bf .. :try_end_1fd} :catch_1ff

    goto/16 :goto_2a

    :catch_1ff
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v7}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_213
    iput-wide v10, p0, Lcom/google/android/gms/internal/zzaue;->zzbuD:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLr()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzao(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatc;)V

    goto/16 :goto_2a

    :cond_23c
    move-object v0, v5

    goto/16 :goto_1af

    :cond_23f
    move-object v2, v4

    goto/16 :goto_139

    :cond_242
    move-object v6, v5

    goto/16 :goto_10d
.end method

.method zzMK()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuC:I

    return-void
.end method

.method zzML()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuv:Z

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMc()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMC()V

    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuv:Z

    return-void
.end method

.method zzMM()Z
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuv:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method protected zzMt()Z
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuw:Ljava/lang/Boolean;

    if-eqz v1, :cond_34

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaue;->zzbux:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuw:Ljava/lang/Boolean;

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuw:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzaue;->zzbux:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-lez v1, :cond_a4

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzaue;->zzbux:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaut;->zzbW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaut;->zzbW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzadf;->zzzx()Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzaub;->zzi(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzaum;->zzj(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_80

    :cond_7f
    const/4 v0, 0x1

    :cond_80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuw:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatu;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzga(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuw:Ljava/lang/Boolean;

    :cond_a4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public zzMu()Lcom/google/android/gms/internal/zzatx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuc:Lcom/google/android/gms/internal/zzatx;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuc:Lcom/google/android/gms/internal/zzatx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuc:Lcom/google/android/gms/internal/zzatx;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method zzMv()Lcom/google/android/gms/internal/zzaud;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbud:Lcom/google/android/gms/internal/zzaud;

    return-object v0
.end method

.method public zzMw()Lcom/google/android/gms/measurement/AppMeasurement;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbug:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public zzMx()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuh:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public zzMy()Lcom/google/android/gms/internal/zzaty;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbul:Lcom/google/android/gms/internal/zzaty;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzauh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbul:Lcom/google/android/gms/internal/zzaty;

    return-object v0
.end method

.method public zzMz()Lcom/google/android/gms/internal/zzatz;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbur:Lcom/google/android/gms/internal/zzatz;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbur:Lcom/google/android/gms/internal/zzatz;

    return-object v0
.end method

.method public zzW(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V

    return-void
.end method

.method zza(Ljava/nio/channels/FileChannel;)I
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Bad chanel to read from"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    :try_start_21
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eq v2, v4, :cond_4e

    const/4 v1, -0x1

    if-eq v2, v1, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Unexpected data length. Bytes read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3e} :catch_3f

    goto :goto_1a

    :catch_3f
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Failed to read from channel"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_54} :catch_3f

    move-result v0

    goto :goto_1a
.end method

.method protected zza(ILjava/lang/Throwable;[B)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    if-nez p3, :cond_b

    new-array p3, v0, [B

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaue;->zzbuA:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaue;->zzbuA:Ljava/util/List;

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_18

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_d5

    :cond_18
    if-nez p2, :cond_d5

    :try_start_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbsZ:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbta:Lcom/google/android/gms/internal/zzaua$zzb;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_56} :catch_7b

    :try_start_56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzatj;->zzan(J)V
    :try_end_71
    .catchall {:try_start_56 .. :try_end_71} :catchall_72

    goto :goto_5a

    :catchall_72
    move-exception v0

    :try_start_73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v0
    :try_end_7b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_73 .. :try_end_7b} :catch_7b

    :catch_7b
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Disable upload, time"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a6
    return-void

    :cond_a7
    :try_start_a7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_72

    :try_start_ae
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMy()Lcom/google/android/gms/internal/zzaty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaty;->zzqa()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMH()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMG()V

    :goto_c8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:J

    goto :goto_a6

    :cond_cd
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuD:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V
    :try_end_d4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ae .. :try_end_d4} :catch_7b

    goto :goto_c8

    :cond_d5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaua;->zzbta:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    const/16 v1, 0x1f7

    if-eq p1, v1, :cond_ff

    const/16 v1, 0x1ad

    if-ne p1, v1, :cond_100

    :cond_ff
    const/4 v0, 0x1

    :cond_100
    if-eqz v0, :cond_113

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtb:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_113
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V

    goto :goto_a6
.end method

.method zza(Lcom/google/android/gms/internal/zzatd;J)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzatj;->zzfz(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_3f
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string v1, "_au"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_73
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzatm;Lcom/google/android/gms/internal/zzatd;)V
    .registers 13

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v2, Lcom/google/android/gms/internal/zzauw$zze;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzauw$zze;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxf:Ljava/lang/Integer;

    const-string v0, "android"

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxn:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqM:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbqM:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbhN:Ljava/lang/String;

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->zzbqS:J

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxA:Ljava/lang/Integer;

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxr:Ljava/lang/Long;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbqL:Ljava/lang/String;

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->zzbqO:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_178

    move-object v0, v1

    :goto_57
    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxw:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzaua;->zzfG(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_180

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxt:Ljava/lang/String;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxu:Ljava/lang/Boolean;

    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatl;->zzkN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatl;->zzLS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbb:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatl;->zzLT()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxq:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatl;->zzLU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxp:Ljava/lang/String;

    iput-object v1, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxs:Ljava/lang/Long;

    iput-object v1, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxi:Ljava/lang/Long;

    iput-object v1, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:Ljava/lang/Long;

    iput-object v1, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqU:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxF:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v0

    if-nez v0, :cond_11e

    new-instance v0, Lcom/google/android/gms/internal/zzatc;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzatc;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaua;->zzMh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzfd(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzfg(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzfe(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzaua;->zzfH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzff(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/zzatc;->zzad(J)V

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/zzatc;->zzY(J)V

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/zzatc;->zzZ(J)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbhN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->setAppVersion(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->zzbqS:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzatc;->zzaa(J)V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzfh(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->zzbqN:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzatc;->zzab(J)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->zzbqO:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzatc;->zzac(J)V

    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatc;->setMeasurementEnabled(Z)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->zzbqU:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzatc;->zzam(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    :cond_11e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->getAppInstanceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxv:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbqT:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzft(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzauw$zzg;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxh:[Lcom/google/android/gms/internal/zzauw$zzg;

    const/4 v0, 0x0

    move v1, v0

    :goto_13e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1cd

    new-instance v4, Lcom/google/android/gms/internal/zzauw$zzg;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zzg;-><init>()V

    iget-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxh:[Lcom/google/android/gms/internal/zzauw$zzg;

    aput-object v4, v0, v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaus;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaus;

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzaus;->zzbwg:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaus;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauw$zzg;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13e

    :cond_178
    iget-wide v4, p2, Lcom/google/android/gms/internal/zzatd;->zzbqO:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_57

    :cond_180
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaue;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzatl;->zzbL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v3, "null secure ID. appId"

    iget-object v4, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "null"

    :cond_1af
    :goto_1af
    iput-object v0, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxD:Ljava/lang/String;

    goto/16 :goto_79

    :cond_1b3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1af

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "empty secure ID. appId"

    iget-object v5, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1af

    :cond_1cd
    :try_start_1cd
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzauw$zze;)J
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d4} :catch_1e6

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzatm;)Z

    move-result v3

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatm;JZ)Z

    move-result v0

    if-eqz v0, :cond_1e5

    iput-wide v8, p0, Lcom/google/android/gms/internal/zzaue;->zzbuE:J

    :cond_1e5
    :goto_1e5
    return-void

    :catch_1e6
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1e5
.end method

.method zza(ILjava/nio/channels/FileChannel;)Z
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Bad chanel to read from"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    move v0, v1

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    :try_start_29
    invoke-virtual {p2, v4, v5}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_52} :catch_53

    goto :goto_1b

    :catch_53
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1b
.end method

.method public zza(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)[B
    .registers 21
    .param p1    # Lcom/google/android/gms/internal/zzatq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzJV()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Lcom/google/android/gms/internal/zzauw$zzd;

    invoke-direct {v13}, Lcom/google/android/gms/internal/zzauw$zzd;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v16

    if-nez v16, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Log and bundle not available. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_29b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    :goto_40
    return-object v2

    :cond_41
    :try_start_41
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzKx()Z

    move-result v2

    if-nez v2, :cond_61

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Log and bundle disabled. package_name"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_29b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto :goto_40

    :cond_61
    :try_start_61
    new-instance v17, Lcom/google/android/gms/internal/zzauw$zze;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/gms/internal/zzauw$zze;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauw$zze;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    iput-object v2, v13, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxf:Ljava/lang/Integer;

    const-string v2, "android"

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxn:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzKu()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbqM:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbhN:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzKt()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxA:Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzKv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxr:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbqL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzKw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxw:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaua;->zzfG(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e8

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxt:Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxu:Ljava/lang/Boolean;

    :cond_e8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzkN()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxo:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzLS()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzLT()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxq:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatl;->zzLU()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxp:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxv:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbqT:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzft(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauw$zzg;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxh:[Lcom/google/android/gms/internal/zzauw$zzg;

    const/4 v2, 0x0

    move v3, v2

    :goto_145
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_181

    new-instance v5, Lcom/google/android/gms/internal/zzauw$zzg;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzauw$zzg;-><init>()V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxh:[Lcom/google/android/gms/internal/zzauw$zzg;

    aput-object v5, v2, v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzaus;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iput-object v2, v5, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzaus;

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzaus;->zzbwg:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzaus;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v6, v5, v2}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauw$zzg;Ljava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_145

    :cond_181
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v12

    const-string v2, "_iap"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b0

    const-string v2, "_c"

    const-wide/16 v4, 0x1

    invoke-virtual {v12, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    const-string v2, "_r"

    const-wide/16 v4, 0x1

    invoke-virtual {v12, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1b0
    const-string v2, "_o"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatq;->zzbqV:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaut;->zzge(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v3, "_dbg"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v3, "_r"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzatj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatn;

    move-result-object v2

    if-nez v2, :cond_284

    const-wide/16 v14, 0x0

    new-instance v3, Lcom/google/android/gms/internal/zzatn;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzatq;->zzbrH:J

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/zzatn;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatn;)V

    move-wide v10, v14

    :goto_212
    new-instance v3, Lcom/google/android/gms/internal/zzatm;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->zzbqV:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzatq;->zzbrH:J

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/zzatm;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v6, Lcom/google/android/gms/internal/zzauw$zzb;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzauw$zzb;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauw$zzb;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzatm;->zzaxb:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    iget-object v2, v3, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    iput-object v2, v6, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzatm;->zzbry:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxa:Ljava/lang/Long;

    iget-object v2, v3, Lcom/google/android/gms/internal/zzatm;->zzbrz:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzauw$zzc;

    iput-object v2, v6, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/google/android/gms/internal/zzatm;->zzbrz:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzato;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    :goto_25c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzauw$zzc;-><init>()V

    iget-object v9, v6, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    add-int/lit8 v5, v4, 0x1

    aput-object v8, v9, v4

    iput-object v2, v8, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzatm;->zzbrz:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzato;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v4

    invoke-virtual {v4, v8, v2}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauw$zzc;Ljava/lang/Object;)V

    move v4, v5

    goto :goto_25c

    :cond_284
    iget-wide v10, v2, Lcom/google/android/gms/internal/zzatn;->zzbrC:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzatq;->zzbrH:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzatn;->zzap(J)Lcom/google/android/gms/internal/zzatn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatn;->zzLV()Lcom/google/android/gms/internal/zzatn;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatn;)V
    :try_end_299
    .catchall {:try_start_61 .. :try_end_299} :catchall_29b

    goto/16 :goto_212

    :catchall_29b
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v2

    :cond_2a4
    :try_start_2a4
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxh:[Lcom/google/android/gms/internal/zzauw$zzg;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzaue;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauw$zzg;[Lcom/google/android/gms/internal/zzauw$zzb;)[Lcom/google/android/gms/internal/zzauw$zza;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxz:[Lcom/google/android/gms/internal/zzauw$zza;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:Ljava/lang/Long;

    iget-object v2, v6, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzKs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_371

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_2d4
    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxm:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzKr()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_38c

    :goto_2e2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_374

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_2ec
    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxl:Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzKB()V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzatc;->zzKy()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxx:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxs:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxi:Ljava/lang/Long;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxy:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzY(J)V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzZ(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_350
    .catchall {:try_start_2a4 .. :try_end_350} :catchall_29b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    :try_start_357
    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzauw$zzd;->zzaeT()I

    move-result v2

    new-array v2, v2, [B

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxm;->zzag([B)Lcom/google/android/gms/internal/zzbxm;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/zzauw$zzd;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbxm;->zzaeG()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzaut;->zzk([B)[B
    :try_end_36e
    .catch Ljava/io/IOException; {:try_start_357 .. :try_end_36e} :catch_377

    move-result-object v2

    goto/16 :goto_40

    :cond_371
    const/4 v4, 0x0

    goto/16 :goto_2d4

    :cond_374
    const/4 v2, 0x0

    goto/16 :goto_2ec

    :catch_377
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_40

    :cond_38c
    move-wide v2, v4

    goto/16 :goto_2e2
.end method

.method zzaq(J)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzaue;->zzl(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method zzb(Lcom/google/android/gms/internal/zzatc;)V
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcc

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaue;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzati;->zzP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_28
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v4, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzauc;->zzfL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzauv$zzb;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzauc;->zzfM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_68

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMy()Lcom/google/android/gms/internal/zzaty;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzaue$4;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzaue$4;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    invoke-virtual {v2, v4, v1, v3, v5}, Lcom/google/android/gms/internal/zzaty;->zza(Ljava/lang/String;Ljava/net/URL;Ljava/util/Map;Lcom/google/android/gms/internal/zzaty$zza;)V
    :try_end_78
    .catch Ljava/net/MalformedURLException; {:try_start_28 .. :try_end_78} :catch_79

    goto :goto_17

    :catch_79
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17
.end method

.method zzb(Lcom/google/android/gms/internal/zzatd;J)V
    .registers 16
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    if-eqz p1, :cond_35

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/zzatc;->zzae(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    :cond_35
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_c"

    invoke-virtual {v3, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_r"

    invoke-virtual {v3, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_uwa"

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_pfo"

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sys"

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "_sysu"

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_9b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_75
    :goto_75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzfA(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-ltz v2, :cond_88

    const-string v2, "_pfo"

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_88
    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string v1, "_f"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void

    :cond_9b
    :try_start_9b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9b .. :try_end_a9} :catch_e7

    move-result-object v0

    :goto_aa
    if-eqz v0, :cond_bf

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_bf

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_bf

    const-string v0, "_uwa"

    invoke-virtual {v3, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_bf
    :try_start_bf
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/zzadf;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bf .. :try_end_cd} :catch_fd

    move-result-object v0

    :goto_ce
    if-eqz v0, :cond_75

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_db

    const-string v1, "_sys"

    invoke-virtual {v3, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_db
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_75

    const-string v0, "_sysu"

    invoke-virtual {v3, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_75

    :catch_e7
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v4, "Package info is null, first open report might be inaccurate. appId"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_aa

    :catch_fd
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v4, "Application info is null, first open report might be inaccurate. appId"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_ce
.end method

.method zzb(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqV:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    :goto_28
    return-void

    :cond_29
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    if-nez v0, :cond_31

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_28

    :cond_31
    new-instance v8, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/zzatg;-><init>(Lcom/google/android/gms/internal/zzatg;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_3e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzT(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatg;

    move-result-object v1

    if-eqz v1, :cond_dc

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzatg;->zzbqY:Z

    if-eqz v2, :cond_dc

    iget-object v2, v1, Lcom/google/android/gms/internal/zzatg;->zzbqV:Ljava/lang/String;

    iput-object v2, v8, Lcom/google/android/gms/internal/zzatg;->zzbqV:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzatg;->zzbqX:J

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatg;->zzbqX:J

    iget-object v2, v1, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Ljava/lang/String;

    iput-object v2, v8, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    iput-object v1, v8, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    move v7, v0

    :goto_63
    iget-boolean v0, v8, Lcom/google/android/gms/internal/zzatg;->zzbqY:Z

    if-eqz v0, :cond_a9

    iget-object v6, v8, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    new-instance v0, Lcom/google/android/gms/internal/zzaus;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->zzbqV:Ljava/lang/String;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-wide v4, v6, Lcom/google/android/gms/internal/zzauq;->zzbwc:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result v1

    if-eqz v1, :cond_fd

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_97
    if-eqz v7, :cond_a9

    iget-object v0, v8, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    if-eqz v0, :cond_a9

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatg;->zzbqX:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_a9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatg;)Z

    move-result v0

    if-eqz v0, :cond_11e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Conditional property added"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_cc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_d3
    .catchall {:try_start_3e .. :try_end_d3} :catchall_115

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto/16 :goto_28

    :cond_dc
    :try_start_dc
    iget-object v1, v8, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13c

    iget-object v5, v8, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    new-instance v0, Lcom/google/android/gms/internal/zzauq;

    iget-object v1, v5, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatg;->zzbqX:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauq;->zzbqV:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/google/android/gms/internal/zzatg;->zzbqY:Z

    move v7, v6

    goto/16 :goto_63

    :cond_fd
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_114
    .catchall {:try_start_dc .. :try_end_114} :catchall_115

    goto :goto_97

    :catchall_115
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v0

    :cond_11e
    :try_start_11e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Too many conditional properties, ignoring"

    iget-object v2, v8, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13b
    .catchall {:try_start_11e .. :try_end_13b} :catchall_115

    goto :goto_cc

    :cond_13c
    move v7, v0

    goto/16 :goto_63
.end method

.method zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    .registers 16
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v3, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzatq;->zzbrH:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/zzaut;->zzd(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)Z

    move-result v2

    if-nez v2, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    iget-boolean v2, p2, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    if-nez v2, :cond_25

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_1c

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v7}, Lcom/google/android/gms/internal/zzatj;->zzh(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_38
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatg;

    if-eqz v2, :cond_38

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v5

    const-string v8, "User property timed out"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v10, v2, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-object v11, v2, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    if-eqz v5, :cond_6d

    new-instance v5, Lcom/google/android/gms/internal/zzatq;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v5, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Lcom/google/android/gms/internal/zzatj;->zzU(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_2c .. :try_end_78} :catchall_79

    goto :goto_38

    :catchall_79
    move-exception v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v2

    :cond_82
    :try_start_82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v7}, Lcom/google/android/gms/internal/zzatj;->zzi(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_97
    :goto_97
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_de

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatg;

    if-eqz v2, :cond_97

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v8

    const-string v9, "User property expired"

    iget-object v10, v2, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v11, v2, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v8, v3, v9}, Lcom/google/android/gms/internal/zzatj;->zzR(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    if-eqz v8, :cond_d2

    iget-object v8, v2, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v8

    iget-object v2, v2, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v8, v3, v2}, Lcom/google/android/gms/internal/zzatj;->zzU(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_de
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatq;

    new-instance v5, Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v5, v2, v6, v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v5, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_e2

    :cond_f7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/google/android/gms/internal/zzatj;->zzc(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_10e
    :goto_10e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzatg;

    move-object v9, v0

    if-eqz v9, :cond_10e

    iget-object v8, v9, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    new-instance v2, Lcom/google/android/gms/internal/zzaus;

    iget-object v3, v9, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/gms/internal/zzatg;->zzbqV:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result v3

    if-eqz v3, :cond_167

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v9, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14c
    iget-object v3, v9, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    if-eqz v3, :cond_155

    iget-object v3, v9, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_155
    new-instance v3, Lcom/google/android/gms/internal/zzauq;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzauq;-><init>(Lcom/google/android/gms/internal/zzaus;)V

    iput-object v3, v9, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/google/android/gms/internal/zzatg;->zzbqY:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatg;)Z

    goto :goto_10e

    :cond_167
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v9, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v2, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v8, v12}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14c

    :cond_17f
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_186
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzatq;

    new-instance v4, Lcom/google/android/gms/internal/zzatq;

    invoke-direct {v4, v2, v6, v7}, Lcom/google/android/gms/internal/zzatq;-><init>(Lcom/google/android/gms/internal/zzatq;J)V

    invoke-virtual {p0, v4, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_186

    :cond_19b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_1a2
    .catchall {:try_start_82 .. :try_end_1a2} :catchall_79

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto/16 :goto_1c
.end method

.method zzb(Lcom/google/android/gms/internal/zzatq;Ljava/lang/String;)V
    .registers 23
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "No app data available; dropping event"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_25
    return-void

    :cond_26
    :try_start_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_77

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_58} :catch_59

    goto :goto_25

    :catch_59
    move-exception v3

    const-string v3, "_ui"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_77
    new-instance v3, Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKt()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKu()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKv()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKw()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKx()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzuW()J

    move-result-wide v18

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/zzatd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    goto/16 :goto_25
.end method

.method zzb(Lcom/google/android/gms/internal/zzauh;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuB:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaue;->zzbuB:I

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    if-nez v1, :cond_19

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_10

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaut;->zzfX(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    if-eqz v3, :cond_41

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_10

    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzaut;->zzm(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_8d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_83

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_7b

    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_83

    :cond_7b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    const-string v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_10

    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaut;->zzn(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/zzaus;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->zzbqV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzauq;->zzbwc:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Setting user property"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_c0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V

    if-eqz v1, :cond_ee

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "User property set"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e5
    .catchall {:try_start_c0 .. :try_end_e5} :catchall_10c

    :goto_e5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto/16 :goto_10

    :cond_ee
    :try_start_ee
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Too many unique user properties are set. Ignoring user property"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_10b
    .catchall {:try_start_ee .. :try_end_10b} :catchall_10c

    goto :goto_e5

    :catchall_10c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v0
.end method

.method zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/16 v6, 0x130

    const/4 v1, 0x1

    const/16 v5, 0x194

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    if-nez p4, :cond_14

    new-array p4, v0, [B

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v4

    const/16 v3, 0xc8

    if-eq p2, v3, :cond_2d

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_2d

    if-ne p2, v6, :cond_52

    :cond_2d
    if-nez p3, :cond_52

    move v3, v1

    :goto_30
    if-nez v4, :cond_54

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_4a
    .catchall {:try_start_1b .. :try_end_4a} :catchall_df

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    :goto_51
    return-void

    :cond_52
    move v3, v0

    goto :goto_30

    :cond_54
    if-nez v3, :cond_58

    if-ne p2, v5, :cond_104

    :cond_58
    if-eqz p5, :cond_93

    :try_start_5a
    const-string v0, "Last-Modified"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_62
    if-eqz v0, :cond_95

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_95

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_71
    if-eq p2, v5, :cond_75

    if-ne p2, v6, :cond_97

    :cond_75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzauc;->zzfL(Ljava/lang/String;)Lcom/google/android/gms/internal/zzauv$zzb;

    move-result-object v0

    if-nez v0, :cond_a9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzauc;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_88
    .catchall {:try_start_5a .. :try_end_88} :catchall_df

    move-result v0

    if-nez v0, :cond_a9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto :goto_51

    :cond_93
    move-object v0, v2

    goto :goto_62

    :cond_95
    move-object v0, v2

    goto :goto_71

    :cond_97
    :try_start_97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v1

    invoke-virtual {v1, p1, p4, v0}, Lcom/google/android/gms/internal/zzauc;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_df

    move-result v0

    if-nez v0, :cond_a9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto :goto_51

    :cond_a9
    :try_start_a9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/zzatc;->zzae(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    if-ne p2, v5, :cond_e8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Config not found. Using empty config. appId"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_ca
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMy()Lcom/google/android/gms/internal/zzaty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaty;->zzqa()Z

    move-result v0

    if-eqz v0, :cond_ff

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMH()Z

    move-result v0

    if-eqz v0, :cond_ff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMG()V
    :try_end_dd
    .catchall {:try_start_a9 .. :try_end_dd} :catchall_df

    goto/16 :goto_43

    :catchall_df
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v0

    :cond_e8
    :try_start_e8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ca

    :cond_ff
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V

    goto/16 :goto_43

    :cond_104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzaf(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatc;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzauc;->zzfN(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaua;->zzbta:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_147

    const/16 v2, 0x1ad

    if-ne p2, v2, :cond_148

    :cond_147
    move v0, v1

    :cond_148
    if-eqz v0, :cond_15b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtb:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    :cond_15b
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V
    :try_end_15e
    .catchall {:try_start_e8 .. :try_end_15e} :catchall_df

    goto/16 :goto_43
.end method

.method zzc(Lcom/google/android/gms/internal/zzatd;J)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_et"

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string v1, "_e"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method zzc(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    :goto_22
    return-void

    :cond_23
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    if-nez v0, :cond_2b

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_22

    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_32
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatj;->zzT(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatg;

    move-result-object v3

    if-eqz v3, :cond_b0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Removing conditional user property"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatj;->zzU(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v3, Lcom/google/android/gms/internal/zzatg;->zzbqY:Z

    if-eqz v0, :cond_76

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatj;->zzR(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    if-eqz v0, :cond_a0

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    if-eqz v0, :cond_89

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v2

    :cond_89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzatg;->zzbqV:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzatq;->zzbrH:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    :cond_a0
    :goto_a0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_a7
    .catchall {:try_start_32 .. :try_end_a7} :catchall_c8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto/16 :goto_22

    :cond_b0
    :try_start_b0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Conditional user property doesn\'t exist"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c7
    .catchall {:try_start_b0 .. :try_end_c7} :catchall_c8

    goto :goto_a0

    :catchall_c8
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v0
.end method

.method zzc(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V
    .registers 21
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzd(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_26
    :goto_26
    return-void

    :cond_27
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_26

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzauc;->zzaa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v4, "Dropping blacklisted event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaut;->zzgg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaut;->zzgh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d1

    :cond_6c
    const/4 v2, 0x1

    :goto_6d
    if-nez v2, :cond_8b

    const-string v4, "_err"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v4

    const/16 v5, 0xb

    const-string v6, "_ev"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_8b
    if-eqz v2, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKA()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKz()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzLl()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatc;)V

    goto/16 :goto_26

    :cond_d1
    const/4 v2, 0x0

    goto :goto_6d

    :cond_d3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v2

    if-eqz v2, :cond_ed

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v4, "Logging event"

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_ed
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_f4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatq;->zzbrG:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzato;->zzLW()Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    const-string v2, "_iap"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11b

    const-string v2, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e6

    :cond_11b
    const-string v2, "currency"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27e

    const-string v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_14c

    const-string v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    :cond_14c
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_259

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_259

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-wide v8, v4

    :goto_15d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e6

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "[A-Z]{3}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e6

    const-string v4, "_ltv_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_287

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/zzatj;->zzS(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaus;

    move-result-object v2

    if-eqz v2, :cond_195

    iget-object v4, v2, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_297

    :cond_195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzati;->zzfn(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatj;->zzz(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/gms/internal/zzaus;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->zzbqV:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_1bb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result v4

    if-nez v4, :cond_1e6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_1e6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaut;->zzfT(Ljava/lang/String;)Z

    move-result v10

    const-string v2, "_err"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzME()J

    move-result-wide v6

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/internal/zzatj;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzatj$zza;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbro:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzati;->zzKU()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2b7

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_239

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Data loss. Too many events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbro:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_239
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/16 v3, 0x10

    const-string v4, "_ev"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_250
    .catchall {:try_start_f4 .. :try_end_250} :catchall_28e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto/16 :goto_26

    :cond_259
    :try_start_259
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v6, "Data lost. Currency value is too big. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_275
    .catchall {:try_start_259 .. :try_end_275} :catchall_28e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto/16 :goto_26

    :cond_27e
    :try_start_27e
    const-string v4, "value"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v8, v4

    goto/16 :goto_15d

    :cond_287
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_28c
    .catchall {:try_start_27e .. :try_end_28c} :catchall_28e

    goto/16 :goto_185

    :catchall_28e
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v2

    :cond_297
    :try_start_297
    iget-object v2, v2, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v2, Lcom/google/android/gms/internal/zzaus;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzatq;->zzbqV:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto/16 :goto_1bb

    :cond_2b7
    if-eqz v10, :cond_30a

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrn:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzati;->zzKV()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_30a

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2ea

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Data loss. Too many public events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrn:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2ea
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/16 v3, 0x10

    const-string v4, "_ev"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_301
    .catchall {:try_start_297 .. :try_end_301} :catchall_28e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto/16 :goto_26

    :cond_30a
    if-eqz v12, :cond_34f

    :try_start_30c
    iget-wide v4, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrq:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzati;->zzfj(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_34f

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_33f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Too many error events logged. appId, count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v6, v2, Lcom/google/android/gms/internal/zzatj$zza;->zzbrq:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_346
    .catchall {:try_start_30c .. :try_end_346} :catchall_28e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto/16 :goto_26

    :cond_34f
    :try_start_34f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v4, "_o"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzatq;->zzbqV:Ljava/lang/String;

    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaut;->zzge(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_384

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v4, "_dbg"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const-string v4, "_r"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v14, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_384
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzfv(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3a7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v6, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v7, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a7
    new-instance v5, Lcom/google/android/gms/internal/zzatm;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzatq;->zzbqV:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/zzatq;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzatq;->zzbrH:J

    const-wide/16 v12, 0x0

    move-object/from16 v6, p0

    move-object v8, v3

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/zzatm;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    iget-object v4, v5, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatn;

    move-result-object v2

    if-nez v2, :cond_478

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzfC(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKT()I

    const-wide/16 v8, 0x1f4

    cmp-long v2, v6, v8

    if-ltz v2, :cond_412

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v4, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v5, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzati;->zzKT()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_409
    .catchall {:try_start_34f .. :try_end_409} :catchall_28e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto/16 :goto_26

    :cond_412
    :try_start_412
    new-instance v7, Lcom/google/android/gms/internal/zzatn;

    iget-object v9, v5, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v5, Lcom/google/android/gms/internal/zzatm;->zzaxb:J

    move-object v8, v3

    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/internal/zzatn;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    :goto_420
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatn;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzatm;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v2

    if-eqz v2, :cond_44d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Event recorded"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_44d
    .catchall {:try_start_412 .. :try_end_44d} :catchall_28e

    :cond_44d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzMI()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_478
    :try_start_478
    iget-wide v6, v2, Lcom/google/android/gms/internal/zzatn;->zzbrC:J

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/gms/internal/zzatm;->zza(Lcom/google/android/gms/internal/zzaue;J)Lcom/google/android/gms/internal/zzatm;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/gms/internal/zzatm;->zzaxb:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzatn;->zzap(J)Lcom/google/android/gms/internal/zzatn;
    :try_end_485
    .catchall {:try_start_478 .. :try_end_485} :catchall_28e

    move-result-object v7

    goto :goto_420
.end method

.method zzc(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    if-nez v0, :cond_17

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_e

    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Removing user property"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_2d
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatj;->zzR(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "User property removed"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_59

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto :goto_e

    :catchall_59
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v0
.end method

.method zzd(Lcom/google/android/gms/internal/zzatd;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method zzd(Lcom/google/android/gms/internal/zzatd;J)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    const-string v1, "_cd"

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    const-string v3, "auto"

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)V

    return-void
.end method

.method zzd(Lcom/google/android/gms/internal/zzatg;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zzfO(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    :cond_b
    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzatd;)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/32 v6, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_19
    return-void

    :cond_1a
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqQ:Z

    if-nez v0, :cond_22

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    goto :goto_19

    :cond_22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->beginTransaction()V

    :try_start_31
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/gms/internal/zzaue;->zza(Lcom/google/android/gms/internal/zzatd;J)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaue;->zzf(Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatd;->packageName:Ljava/lang/String;

    const-string v4, "_f"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/zzatj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatn;

    move-result-object v0

    if-nez v0, :cond_74

    const-wide/16 v0, 0x1

    const-wide/32 v4, 0x36ee80

    div-long v4, v2, v4

    add-long/2addr v0, v4

    mul-long v4, v0, v6

    new-instance v0, Lcom/google/android/gms/internal/zzauq;

    const-string v1, "_fot"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzauq;Lcom/google/android/gms/internal/zzatd;)V

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/gms/internal/zzaue;->zzb(Lcom/google/android/gms/internal/zzatd;J)V

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatd;J)V

    :cond_65
    :goto_65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->setTransactionSuccessful()V
    :try_end_6c
    .catchall {:try_start_31 .. :try_end_6c} :catchall_7c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    goto :goto_19

    :cond_74
    :try_start_74
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzatd;->zzbqR:Z

    if-eqz v0, :cond_65

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/gms/internal/zzaue;->zzd(Lcom/google/android/gms/internal/zzatd;J)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_7c

    goto :goto_65

    :catchall_7c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatj;->endTransaction()V

    throw v0
.end method

.method zze(Lcom/google/android/gms/internal/zzatg;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaue;->zzfO(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzaue;->zzc(Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzatd;)V

    :cond_b
    return-void
.end method

.method zzfO(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;
    .registers 22
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzatj;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_26
    return-object v3

    :cond_27
    :try_start_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_59} :catch_5b

    const/4 v3, 0x0

    goto :goto_26

    :catch_5b
    move-exception v3

    :cond_5c
    new-instance v3, Lcom/google/android/gms/internal/zzatd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKt()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKu()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKv()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKw()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKx()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->zzuW()J

    move-result-wide v18

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/zzatd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;J)V

    goto :goto_26
.end method

.method public zzfP(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaue$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzaue$2;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaud;->zzd(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x7530

    :try_start_f
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_17} :catch_2e
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_17} :catch_18
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_17} :catch_2c

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_17

    :catch_2c
    move-exception v0

    goto :goto_19

    :catch_2e
    move-exception v0

    goto :goto_19
.end method

.method public zzmR()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzmR()V

    return-void
.end method

.method public zznR()Lcom/google/android/gms/common/util/zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaue;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method zzob()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaue;->zzadP:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method zzy(II)Z
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    if-le p1, p2, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Panic: can\'t downgrade version. Previous, current version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1b
    return v0

    :cond_1c
    if-ge p1, p2, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzMB()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/internal/zzaue;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Storage version upgraded. Previous, current version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    const/4 v0, 0x1

    goto :goto_1b

    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaue;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Storage version upgrade failed. Previous, current version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b
.end method

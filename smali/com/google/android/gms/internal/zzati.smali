.class public Lcom/google/android/gms/internal/zzati;
.super Lcom/google/android/gms/internal/zzaug;


# static fields
.field static final zzbrf:Ljava/lang/String;


# instance fields
.field private zzaeZ:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Lcom/google/android/gms/common/zze;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\d+)(\\d)(\\d\\d)"

    const-string v2, "$1.$2.$3"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzati;->zzbrf:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaug;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJV()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzJV()V

    return-void
.end method

.method public bridge synthetic zzJW()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzJW()V

    return-void
.end method

.method public bridge synthetic zzJX()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzJX()V

    return-void
.end method

.method public bridge synthetic zzJY()Lcom/google/android/gms/internal/zzatb;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJZ()Lcom/google/android/gms/internal/zzatf;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzJZ()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    return-object v0
.end method

.method zzKK()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrO:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzKL()I
    .registers 2

    const/16 v0, 0x19

    return v0
.end method

.method public zzKM()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method public zzKN()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method

.method zzKO()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method zzKP()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method zzKQ()I
    .registers 2

    const/16 v0, 0x100

    return v0
.end method

.method public zzKR()I
    .registers 2

    const/16 v0, 0x24

    return v0
.end method

.method public zzKS()I
    .registers 2

    const/16 v0, 0x800

    return v0
.end method

.method zzKT()I
    .registers 2

    const/16 v0, 0x1f4

    return v0
.end method

.method public zzKU()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrY:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public zzKV()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsa:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method zzKW()I
    .registers 2

    const/16 v0, 0x19

    return v0
.end method

.method zzKX()I
    .registers 2

    const/16 v0, 0x3e8

    return v0
.end method

.method zzKY()I
    .registers 2

    const/16 v0, 0x19

    return v0
.end method

.method zzKZ()I
    .registers 2

    const/16 v0, 0x3e8

    return v0
.end method

.method public bridge synthetic zzKa()Lcom/google/android/gms/internal/zzauj;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKb()Lcom/google/android/gms/internal/zzatu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKc()Lcom/google/android/gms/internal/zzatl;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKd()Lcom/google/android/gms/internal/zzaul;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKe()Lcom/google/android/gms/internal/zzauk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKf()Lcom/google/android/gms/internal/zzatv;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKg()Lcom/google/android/gms/internal/zzatj;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKh()Lcom/google/android/gms/internal/zzaut;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKi()Lcom/google/android/gms/internal/zzauc;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKj()Lcom/google/android/gms/internal/zzaun;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKj()Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKk()Lcom/google/android/gms/internal/zzaud;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKl()Lcom/google/android/gms/internal/zzatx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKm()Lcom/google/android/gms/internal/zzaua;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKn()Lcom/google/android/gms/internal/zzati;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    return-object v0
.end method

.method public zzKv()J
    .registers 3

    const-wide/16 v0, 0x283a

    return-wide v0
.end method

.method public zzLA()J
    .registers 5

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsp:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLB()I
    .registers 4

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsq:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public zzLC()Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "debug.firebase.analytics.app"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2d} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2d} :catch_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2d} :catch_5d

    :goto_2d
    return-object v0

    :catch_2e
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Could not find SystemProperties class"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3c
    const-string v0, ""

    goto :goto_2d

    :catch_3f
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Could not find SystemProperties.get() method"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3c

    :catch_4e
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Could not access SystemProperties.get()"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3c

    :catch_5d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "SystemProperties.get() threw an exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3c
.end method

.method zzLa()J
    .registers 3

    const-wide v0, 0x39ef8b000L

    return-wide v0
.end method

.method zzLb()J
    .registers 3

    const-wide v0, 0x39ef8b000L

    return-wide v0
.end method

.method zzLc()J
    .registers 3

    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method zzLd()J
    .registers 3

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method zzLe()J
    .registers 3

    const-wide/32 v0, 0xee48

    return-wide v0
.end method

.method zzLf()Ljava/lang/String;
    .registers 2

    const-string v0, "google_app_measurement_local.db"

    return-object v0
.end method

.method public zzLg()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzLh()Z
    .registers 2

    const-string v0, "firebase_analytics_collection_deactivated"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzati;->zzfp(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public zzLi()Ljava/lang/Boolean;
    .registers 2

    const-string v0, "firebase_analytics_collection_enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzati;->zzfp(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public zzLj()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsr:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLk()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsm:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLl()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsn:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLm()J
    .registers 3

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public zzLn()I
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrW:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public zzLo()I
    .registers 3

    const/4 v1, 0x1

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrX:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public zzLp()I
    .registers 2

    const v0, 0x186a0

    return v0
.end method

.method public zzLq()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbse:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzLr()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrR:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLs()J
    .registers 5

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsf:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLt()J
    .registers 5

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsh:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLu()J
    .registers 5

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsi:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLv()J
    .registers 5

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsj:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLw()J
    .registers 5

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsk:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLx()J
    .registers 5

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsl:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLy()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsg:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLz()J
    .registers 5

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbso:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrS:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrT:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "config/app/"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "app_instance_id"

    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "gmp_version"

    const-wide/16 v4, 0x283a

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_53
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzats$zza",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    if-nez p1, :cond_d

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzats$zza;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzauc;->zzZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_c

    :cond_2a
    :try_start_2a
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzats$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_3f} :catch_41

    move-result-wide v0

    goto :goto_c

    :catch_41
    move-exception v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_c
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzats$zza",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_d

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzats$zza;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzauc;->zzZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_c

    :cond_2a
    :try_start_2a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzats$zza;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_3f} :catch_41

    move-result v0

    goto :goto_c

    :catch_41
    move-exception v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_c
.end method

.method public zzfj(Ljava/lang/String;)I
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrZ:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzati;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)I

    move-result v0

    const v1, 0xf4240

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public zzfk(Ljava/lang/String;)I
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsb:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzati;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)I

    move-result v0

    return v0
.end method

.method public zzfl(Ljava/lang/String;)I
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsc:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzati;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)I

    move-result v0

    return v0
.end method

.method zzfm(Ljava/lang/String;)J
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrP:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzati;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)J

    move-result-wide v0

    return-wide v0
.end method

.method zzfn(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbss:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzati;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)I

    move-result v0

    return v0
.end method

.method zzfo(Ljava/lang/String;)I
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbst:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzati;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)I

    move-result v0

    const/16 v1, 0x7d0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method zzfp(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to load metadata: PackageManager is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzadf;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_51

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to load metadata: ApplicationInfo is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_41} :catch_42

    goto :goto_1b

    :catch_42
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Failed to load metadata: Package name not found"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_51
    :try_start_51
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_63

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_1b

    :cond_63
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_74} :catch_42

    move-result-object v0

    goto :goto_1b
.end method

.method public zzfq(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrU:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzati;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)I

    move-result v0

    return v0
.end method

.method public zzfr(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzats;->zzbrV:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzati;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public zzfs(Ljava/lang/String;)I
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsd:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzati;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzats$zza;)I

    move-result v0

    const v1, 0xf4240

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic zzmR()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zzmR()V

    return-void
.end method

.method public bridge synthetic zznR()Lcom/google/android/gms/common/util/zze;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaug;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

.method public zzoW()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaeZ:Ljava/lang/Boolean;

    if-nez v0, :cond_3e

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaeZ:Ljava/lang/Boolean;

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/zzu;->zzzr()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_28

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaeZ:Ljava/lang/Boolean;

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaeZ:Ljava/lang/Boolean;

    if-nez v0, :cond_3d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaeZ:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzati;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_47

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaeZ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_45
    const/4 v0, 0x0

    goto :goto_22

    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0
.end method

.method zzpq()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbsu:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzpv()Ljava/lang/String;
    .registers 2

    const-string v0, "google_app_measurement.db"

    return-object v0
.end method

.method public zzpz()J
    .registers 5

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzats;->zzbrQ:Lcom/google/android/gms/internal/zzats$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzats$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzwR()Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/zzaba;->zzwR()Z

    move-result v0

    return v0
.end method

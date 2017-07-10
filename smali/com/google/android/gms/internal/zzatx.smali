.class public Lcom/google/android/gms/internal/zzatx;
.super Lcom/google/android/gms/internal/zzauh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzatx$zza;,
        Lcom/google/android/gms/internal/zzatx$zzb;
    }
.end annotation


# instance fields
.field private final zzaGr:Ljava/lang/String;

.field private final zzbqx:J

.field private final zzbsA:C

.field private final zzbsB:Lcom/google/android/gms/internal/zzatx$zza;

.field private final zzbsC:Lcom/google/android/gms/internal/zzatx$zza;

.field private final zzbsD:Lcom/google/android/gms/internal/zzatx$zza;

.field private final zzbsE:Lcom/google/android/gms/internal/zzatx$zza;

.field private final zzbsF:Lcom/google/android/gms/internal/zzatx$zza;

.field private final zzbsG:Lcom/google/android/gms/internal/zzatx$zza;

.field private final zzbsH:Lcom/google/android/gms/internal/zzatx$zza;

.field private final zzbsI:Lcom/google/android/gms/internal/zzatx$zza;

.field private final zzbsJ:Lcom/google/android/gms/internal/zzatx$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzKK()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzaGr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzKv()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbqx:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzoW()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    const/16 v0, 0x43

    iput-char v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsA:C

    :goto_30
    new-instance v0, Lcom/google/android/gms/internal/zzatx$zza;

    invoke-direct {v0, p0, v5, v2, v2}, Lcom/google/android/gms/internal/zzatx$zza;-><init>(Lcom/google/android/gms/internal/zzatx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsB:Lcom/google/android/gms/internal/zzatx$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzatx$zza;

    invoke-direct {v0, p0, v5, v3, v2}, Lcom/google/android/gms/internal/zzatx$zza;-><init>(Lcom/google/android/gms/internal/zzatx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsC:Lcom/google/android/gms/internal/zzatx$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzatx$zza;

    invoke-direct {v0, p0, v5, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;-><init>(Lcom/google/android/gms/internal/zzatx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsD:Lcom/google/android/gms/internal/zzatx$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzatx$zza;

    invoke-direct {v0, p0, v4, v2, v2}, Lcom/google/android/gms/internal/zzatx$zza;-><init>(Lcom/google/android/gms/internal/zzatx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsE:Lcom/google/android/gms/internal/zzatx$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzatx$zza;

    invoke-direct {v0, p0, v4, v3, v2}, Lcom/google/android/gms/internal/zzatx$zza;-><init>(Lcom/google/android/gms/internal/zzatx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsF:Lcom/google/android/gms/internal/zzatx$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzatx$zza;

    invoke-direct {v0, p0, v4, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;-><init>(Lcom/google/android/gms/internal/zzatx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsG:Lcom/google/android/gms/internal/zzatx$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzatx$zza;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/android/gms/internal/zzatx$zza;-><init>(Lcom/google/android/gms/internal/zzatx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsH:Lcom/google/android/gms/internal/zzatx$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzatx$zza;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/android/gms/internal/zzatx$zza;-><init>(Lcom/google/android/gms/internal/zzatx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsI:Lcom/google/android/gms/internal/zzatx$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzatx$zza;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/android/gms/internal/zzatx$zza;-><init>(Lcom/google/android/gms/internal/zzatx;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsJ:Lcom/google/android/gms/internal/zzatx$zza;

    return-void

    :cond_73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    const/16 v0, 0x63

    iput-char v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsA:C

    goto :goto_30
.end method

.method static zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 11

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzatx;->zzc(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p3}, Lcom/google/android/gms/internal/zzatx;->zzc(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p4}, Lcom/google/android/gms/internal/zzatx;->zzc(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_3e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static zzc(ZLjava/lang/Object;)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    if-nez p1, :cond_8

    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_131

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_17
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_aa

    if-nez p0, :cond_22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_22
    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v0, v4, v6

    if-gez v0, :cond_38

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_38
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_a7

    const-string v0, "-"

    :goto_46
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_a7
    const-string v0, ""

    goto :goto_46

    :cond_aa
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_b4
    instance-of v0, v1, Ljava/lang/Throwable;

    if-eqz v0, :cond_119

    check-cast v1, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_f0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_c6
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatx;->zzfF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v0, Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzatx;->zzfF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v6, v1

    move v0, v2

    :goto_e3
    if-ge v0, v6, :cond_113

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v7

    if-eqz v7, :cond_f5

    :cond_ed
    add-int/lit8 v0, v0, 0x1

    goto :goto_e3

    :cond_f0
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c6

    :cond_f5
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_ed

    invoke-static {v7}, Lcom/google/android/gms/internal/zzatx;->zzfF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10b

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ed

    :cond_10b
    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_119
    instance-of v0, v1, Lcom/google/android/gms/internal/zzatx$zzb;

    if-eqz v0, :cond_125

    check-cast v1, Lcom/google/android/gms/internal/zzatx$zzb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzatx$zzb;->zza(Lcom/google/android/gms/internal/zzatx$zzb;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_125
    if-eqz p0, :cond_12b

    const-string v0, "-"

    goto/16 :goto_7

    :cond_12b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_131
    move-object v1, p1

    goto/16 :goto_17
.end method

.method protected static zzfE(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzatx$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzatx$zzb;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static zzfF(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
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

.method public zzLY()Lcom/google/android/gms/internal/zzatx$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsB:Lcom/google/android/gms/internal/zzatx$zza;

    return-object v0
.end method

.method public zzLZ()Lcom/google/android/gms/internal/zzatx$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsC:Lcom/google/android/gms/internal/zzatx$zza;

    return-object v0
.end method

.method public zzMa()Lcom/google/android/gms/internal/zzatx$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsE:Lcom/google/android/gms/internal/zzatx$zza;

    return-object v0
.end method

.method public zzMb()Lcom/google/android/gms/internal/zzatx$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsG:Lcom/google/android/gms/internal/zzatx$zza;

    return-object v0
.end method

.method public zzMc()Lcom/google/android/gms/internal/zzatx$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsH:Lcom/google/android/gms/internal/zzatx$zza;

    return-object v0
.end method

.method public zzMd()Lcom/google/android/gms/internal/zzatx$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsI:Lcom/google/android/gms/internal/zzatx$zza;

    return-object v0
.end method

.method public zzMe()Lcom/google/android/gms/internal/zzatx$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbsJ:Lcom/google/android/gms/internal/zzatx$zza;

    return-object v0
.end method

.method public zzMf()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbsY:Lcom/google/android/gms/internal/zzaua$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua$zzc;->zzqm()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v1, Lcom/google/android/gms/internal/zzaua;->zzbsX:Landroid/util/Pair;

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method protected zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 14

    if-nez p2, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzatx;->zzak(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {v0, p4, p5, p6, p7}, Lcom/google/android/gms/internal/zzatx;->zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzatx;->zzn(ILjava/lang/String;)V

    :cond_10
    if-nez p3, :cond_1e

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1e

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatx;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method protected zzak(I)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzaGr:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzMv()Lcom/google/android/gms/internal/zzaud;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v0, 0x6

    const-string v1, "Scheduler not set. Not logging error/warn"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatx;->zzn(ILjava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaud;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x6

    const-string v1, "Scheduler not initialized. Not logging error/warn"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatx;->zzn(ILjava/lang/String;)V

    goto :goto_11

    :cond_1f
    if-gez p1, :cond_22

    const/4 p1, 0x0

    :cond_22
    const-string v0, "01VDIWEA?"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_32

    const-string v0, "01VDIWEA?"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    :cond_32
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "01VDIWEA?"

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/google/android/gms/internal/zzatx;->zzbsA:C

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzatx;->zzbqx:J

    const/4 v6, 0x1

    invoke-static {v6, p2, p3, p4, p5}, Lcom/google/android/gms/internal/zzatx;->zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x17

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_90

    const/4 v0, 0x0

    const/16 v2, 0x400

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_90
    new-instance v2, Lcom/google/android/gms/internal/zzatx$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzatx$1;-><init>(Lcom/google/android/gms/internal/zzatx;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaud;->zzm(Ljava/lang/Runnable;)V

    goto/16 :goto_11
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

.method protected zzn(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatx;->zzaGr:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic zznR()Lcom/google/android/gms/common/util/zze;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

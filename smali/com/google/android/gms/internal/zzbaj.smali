.class public final Lcom/google/android/gms/internal/zzbaj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbaj$zza;
    }
.end annotation


# static fields
.field public static final zzbEi:Lcom/google/android/gms/internal/zzbaj;


# instance fields
.field private final zzajv:Z

.field private final zzajw:Ljava/lang/String;

.field private final zzakm:Z

.field private final zzakn:Ljava/lang/String;

.field private final zzbEj:Z

.field private final zzbEk:Z

.field private final zzbEl:Ljava/lang/Long;

.field private final zzbEm:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzbaj$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbaj$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbaj$zza;->zzPO()Lcom/google/android/gms/internal/zzbaj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbaj;->zzbEi:Lcom/google/android/gms/internal/zzbaj;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEj:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbaj;->zzajv:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbaj;->zzajw:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbaj;->zzakm:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEk:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbaj;->zzakn:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEl:Ljava/lang/Long;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEm:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/zzbaj$1;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/zzbaj;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public getServerClientId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzajw:Ljava/lang/String;

    return-object v0
.end method

.method public isIdTokenRequested()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzajv:Z

    return v0
.end method

.method public zzPK()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEj:Z

    return v0
.end method

.method public zzPL()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEk:Z

    return v0
.end method

.method public zzPM()Ljava/lang/Long;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEl:Ljava/lang/Long;

    return-object v0
.end method

.method public zzPN()Ljava/lang/Long;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEm:Ljava/lang/Long;

    return-object v0
.end method

.method public zzrl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzakm:Z

    return v0
.end method

.method public zzrm()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzakn:Ljava/lang/String;

    return-object v0
.end method

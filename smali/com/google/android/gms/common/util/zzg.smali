.class public final Lcom/google/android/gms/common/util/zzg;
.super Ljava/lang/Object;


# static fields
.field private static final zzaHT:[Ljava/lang/String;

.field private static zzaHU:Landroid/os/DropBoxManager;

.field private static zzaHV:Z

.field private static zzaHW:I

.field private static zzaHX:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android."

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.android."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dalvik."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "java."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javax."

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/util/zzg;->zzaHT:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/zzg;->zzaHU:Landroid/os/DropBoxManager;

    sput-boolean v3, Lcom/google/android/gms/common/util/zzg;->zzaHV:Z

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/util/zzg;->zzaHW:I

    sput v3, Lcom/google/android/gms/common/util/zzg;->zzaHX:I

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    :goto_7
    return v2

    :catch_8
    move-exception v0

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/common/util/zzg;->zzzb()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_10

    move-result v1

    :goto_d
    if-eqz v1, :cond_1a

    throw v0

    :catch_10
    move-exception v1

    const-string v3, "CrashUtils"

    const-string v4, "Error determining which process we\'re running in!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_d

    :cond_1a
    const-string v1, "CrashUtils"

    const-string v3, "Error adding exception to DropBox!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private static zzzb()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;,
        Lcom/google/android/gms/dynamite/DynamiteModule$zza;,
        Lcom/google/android/gms/dynamite/DynamiteModule$zzb;
    }
.end annotation


# static fields
.field private static zzaRO:Ljava/lang/Boolean;

.field private static zzaRP:Lcom/google/android/gms/dynamite/zza;

.field private static zzaRQ:Lcom/google/android/gms/dynamite/zzb;

.field private static final zzaRR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static zzaRS:Ljava/lang/String;

.field private static final zzaRT:Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zza;

.field public static final zzaRU:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

.field public static final zzaRV:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

.field public static final zzaRW:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

.field public static final zzaRX:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

.field public static final zzaRY:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;


# instance fields
.field private final zzaRZ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRR:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$1;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRT:Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zza;

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$2;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRU:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$3;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRV:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$4;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$4;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRW:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$5;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$5;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRX:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$6;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$6;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRY:Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRZ:Landroid/content/Context;

    return-void
.end method

.method private static zzBT()Ljava/lang/ClassLoader;
    .registers 3

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$8;

    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRS:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$8;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static zzH(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ModuleDescriptor"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "MODULE_ID"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "MODULE_VERSION"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ad

    const-string v0, "DynamiteModule"

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Module descriptor id \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' didn\'t match expected id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_ac
    return v0

    :cond_ad
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_b1} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b1} :catch_de

    move-result v0

    goto :goto_ac

    :catch_b3
    move-exception v0

    const-string v0, "DynamiteModule"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Local module descriptor class for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_dc
    move v0, v1

    goto :goto_ac

    :catch_de
    move-exception v0

    const-string v2, "DynamiteModule"

    const-string v3, "Failed to load module descriptor class: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f9

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f5
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    :cond_f9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_f5
.end method

.method public static zzI(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private static zzJ(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 6

    const-string v1, "DynamiteModule"

    const-string v2, "Selected local version of "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;[BLcom/google/android/gms/dynamite/zzb;)Landroid/content/Context;
    .registers 8

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p3, v0, p1, p2}, Lcom/google/android/gms/dynamite/zzb;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;[B)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "DynamiteModule"

    const-string v2, "Failed to load DynamiteLoader: "

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_26
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_e

    :cond_2b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzb;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRT:Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zza;

    invoke-interface {p1, p0, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zza;)Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;

    move-result-object v2

    const-string v0, "DynamiteModule"

    iget v1, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSb:I

    iget v3, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSc:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x44

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Considering local module "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and remote module "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSd:I

    if-eqz v0, :cond_6a

    iget v0, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSd:I

    if-ne v0, v6, :cond_62

    iget v0, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSb:I

    if-eqz v0, :cond_6a

    :cond_62
    iget v0, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSd:I

    if-ne v0, v8, :cond_99

    iget v0, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSc:I

    if-nez v0, :cond_99

    :cond_6a
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    iget v1, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSb:I

    iget v2, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSc:I

    const/16 v3, 0x5b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No acceptable module found. Local version is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and remote version is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v0

    :cond_99
    iget v0, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSd:I

    if-ne v0, v6, :cond_a2

    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzJ(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    :goto_a1
    return-object v0

    :cond_a2
    iget v0, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSd:I

    if-ne v0, v8, :cond_ee

    :try_start_a6
    iget v0, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSc:I

    invoke-static {p0, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_ab
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_a6 .. :try_end_ab} :catch_ad

    move-result-object v0

    goto :goto_a1

    :catch_ad
    move-exception v0

    move-object v1, v0

    const-string v3, "DynamiteModule"

    const-string v4, "Failed to load remote module: "

    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_e0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c5
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSb:I

    if-eqz v0, :cond_e6

    iget v0, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSb:I

    new-instance v2, Lcom/google/android/gms/dynamite/DynamiteModule$7;

    invoke-direct {v2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$7;-><init>(I)V

    invoke-interface {p1, p0, p2, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zza;)Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSd:I

    if-ne v0, v6, :cond_e6

    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzJ(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    goto :goto_a1

    :cond_e0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_c5

    :cond_e6
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v2, "Remote load failed. No local fallback found."

    invoke-direct {v0, v2, v1, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v0

    :cond_ee
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    iget v1, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb$zzb;->zzaSd:I

    const/16 v2, 0x2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VersionPolicy returned invalid code:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRO:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    if-nez v0, :cond_14

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v1, "Failed to determine which loading route to use."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v0

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    goto :goto_1e
.end method

.method private static zza(Ljava/lang/ClassLoader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/dynamite/zzb$zza;->zzcf(Landroid/os/IBinder;)Lcom/google/android/gms/dynamite/zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRQ:Lcom/google/android/gms/dynamite/zzb;
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1c} :catch_29
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_1c} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1c} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_2b

    return-void

    :catch_1d
    move-exception v0

    :goto_1e
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v2, "Failed to instantiate dynamite loader"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v1

    :catch_27
    move-exception v0

    goto :goto_1e

    :catch_29
    move-exception v0

    goto :goto_1e

    :catch_2b
    move-exception v0

    goto :goto_1e

    :catch_2d
    move-exception v0

    goto :goto_1e
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 9

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRO:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_74

    if-nez v0, :cond_34

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v0, "sClassLoader"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    monitor-enter v2
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_20} :catch_98
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_20} :catch_f1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_20} :catch_ef
    .catchall {:try_start_7 .. :try_end_20} :catchall_74

    const/4 v0, 0x0

    :try_start_21
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    if-eqz v0, :cond_46

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v0, v3, :cond_40

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_95

    :goto_32
    :try_start_32
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRO:Ljava/lang/Boolean;

    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_74

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e6

    :try_start_3b
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Landroid/content/Context;Ljava/lang/String;Z)I
    :try_end_3e
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_3b .. :try_end_3e} :catch_c3

    move-result v0

    :goto_3f
    return v0

    :cond_40
    :try_start_40
    invoke-static {v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Ljava/lang/ClassLoader;)V
    :try_end_43
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_40 .. :try_end_43} :catch_ec
    .catchall {:try_start_40 .. :try_end_43} :catchall_95

    :goto_43
    :try_start_43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_31

    :cond_46
    const-string v0, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_95

    goto :goto_31

    :cond_61
    :try_start_61
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRS:Ljava/lang/String;

    if-eqz v4, :cond_71

    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRS:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_6e
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_61 .. :try_end_6e} :catch_89
    .catchall {:try_start_61 .. :try_end_6e} :catchall_95

    move-result v4

    if-eqz v4, :cond_77

    :cond_71
    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_95

    :try_start_72
    monitor-exit v1

    goto :goto_3f

    :catchall_74
    move-exception v0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_74

    throw v0

    :cond_77
    :try_start_77
    invoke-static {}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzBT()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Ljava/lang/ClassLoader;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRO:Ljava/lang/Boolean;
    :try_end_86
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zza; {:try_start_77 .. :try_end_86} :catch_89
    .catchall {:try_start_77 .. :try_end_86} :catchall_95

    :try_start_86
    monitor-exit v2
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_95

    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_74

    goto :goto_3f

    :catch_89
    move-exception v0

    const/4 v0, 0x0

    :try_start_8b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_31

    :catchall_95
    move-exception v0

    monitor-exit v2
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_95

    :try_start_97
    throw v0
    :try_end_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_97 .. :try_end_98} :catch_98
    .catch Ljava/lang/IllegalAccessException; {:try_start_97 .. :try_end_98} :catch_f1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_97 .. :try_end_98} :catch_ef
    .catchall {:try_start_97 .. :try_end_98} :catchall_74

    :catch_98
    move-exception v0

    :goto_99
    :try_start_99
    const-string v2, "DynamiteModule"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to load module via V2: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_c1
    .catchall {:try_start_99 .. :try_end_c1} :catchall_74

    goto/16 :goto_32

    :catch_c3
    move-exception v0

    const-string v1, "DynamiteModule"

    const-string v2, "Failed to retrieve remote module version: "

    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_da
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_3f

    :cond_e0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_da

    :cond_e6
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_3f

    :catch_ec
    move-exception v0

    goto/16 :goto_43

    :catch_ef
    move-exception v0

    goto :goto_99

    :catch_f1
    move-exception v0

    goto :goto_99
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "DynamiteModule"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Selected remote version of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzbm(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zza;

    move-result-object v0

    if-nez v0, :cond_3b

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v1, "Failed to create IDynamiteLoader."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v0

    :cond_3b
    :try_start_3b
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/dynamite/zza;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_51

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5a

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v1, "Failed to load remote module."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v0

    :catch_51
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v2, "Failed to load remote module."

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v1

    :cond_5a
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method private static zzbm(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zza;
    .registers 7

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v2

    :try_start_4
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRP:Lcom/google/android/gms/dynamite/zza;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRP:Lcom/google/android/gms/dynamite/zza;

    monitor-exit v2

    :goto_b
    return-object v0

    :cond_c
    invoke-static {}, Lcom/google/android/gms/common/zze;->zzuY()Lcom/google/android/gms/common/zze;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/zze;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_19

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_3a

    move-object v0, v1

    goto :goto_b

    :cond_19
    :try_start_19
    const-string v0, "com.google.android.gms"

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/dynamite/zza$zza;->zzce(Landroid/os/IBinder;)Lcom/google/android/gms/dynamite/zza;

    move-result-object v0

    if-eqz v0, :cond_57

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRP:Lcom/google/android/gms/dynamite/zza;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_38} :catch_3d
    .catchall {:try_start_19 .. :try_end_38} :catchall_3a

    :try_start_38
    monitor-exit v2

    goto :goto_b

    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v0

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string v3, "DynamiteModule"

    const-string v4, "Failed to load IDynamiteLoader from GmsCore: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_54
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    monitor-exit v2

    move-object v0, v1

    goto :goto_b

    :cond_5a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_3a

    goto :goto_54
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 8

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzbm(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zza;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Lcom/google/android/gms/dynamite/zza;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_12

    move-result v0

    goto :goto_8

    :catch_12
    move-exception v0

    const-string v2, "DynamiteModule"

    const-string v3, "Failed to retrieve remote module version: "

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_29
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_8

    :cond_2e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_29
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "DynamiteModule"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Selected remote version of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1

    :try_start_30
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRR:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRQ:Lcom/google/android/gms/dynamite/zzb;

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_66

    if-nez v0, :cond_69

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v1, "Module implementation could not be found."

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v0

    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v0

    :cond_69
    if-nez v2, :cond_73

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v1, "DynamiteLoaderV2 was not cached."

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v0

    :cond_73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;[BLcom/google/android/gms/dynamite/zzb;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_85

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v1, "Failed to get module context"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v0

    :cond_85
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-direct {v1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method private static zzd(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/content/Context;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_d
    const-string v0, "DynamiteModule"

    const-string v2, "Failed to retrieve remote module version."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v2, "Failed to connect to dynamite module ContentResolver."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_23

    :catch_1d
    move-exception v0

    :try_start_1e
    instance-of v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    if-eqz v2, :cond_75

    throw v0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    if-eqz v1, :cond_29

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_29
    throw v0

    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6c

    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_1d
    .catchall {:try_start_2b .. :try_end_34} :catchall_23

    const/4 v3, 0x3

    :try_start_35
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRR:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRS:Ljava/lang/String;

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_35 .. :try_end_6c} :catchall_72

    :cond_6c
    if-eqz v1, :cond_71

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_71
    return v0

    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_75} :catch_1d
    .catchall {:try_start_74 .. :try_end_75} :catchall_23

    :cond_75
    :try_start_75
    new-instance v2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v3, "V2 version check failed"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v2
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_23
.end method

.method public static zze(Landroid/content/Context;Ljava/lang/String;Z)Landroid/database/Cursor;
    .registers 9

    const/4 v2, 0x0

    if-eqz p2, :cond_52

    const-string v0, "api_force_staging"

    :goto_5
    const-string v1, "content://com.google.android.gms.chimera/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_52
    const-string v0, "api"

    goto :goto_5
.end method


# virtual methods
.method public zzBS()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRZ:Landroid/content/Context;

    return-object v0
.end method

.method public zzdT(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zza;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaRZ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_10} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_31

    return-object v0

    :catch_11
    move-exception v0

    :goto_12
    new-instance v2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    const-string v3, "Failed to instantiate module class: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_24
    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/DynamiteModule$1;)V

    throw v2

    :cond_29
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :catch_2f
    move-exception v0

    goto :goto_12

    :catch_31
    move-exception v0

    goto :goto_12
.end method

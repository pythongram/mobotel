.class Lcom/google/android/gms/internal/zzatj;
.super Lcom/google/android/gms/internal/zzauh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzatj$zzc;,
        Lcom/google/android/gms/internal/zzatj$zzb;,
        Lcom/google/android/gms/internal/zzatj$zza;
    }
.end annotation


# static fields
.field private static final zzbrg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbrh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbri:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbrj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbrk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbrl:Lcom/google/android/gms/internal/zzatj$zzc;

.field private final zzbrm:Lcom/google/android/gms/internal/zzauo;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrg:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrg:Ljava/util/Map;

    const-string v1, "origin"

    const-string v2, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "app_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "app_store"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "gmp_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "dev_cert_hash"

    const-string v2, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "measurement_enabled"

    const-string v2, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "last_bundle_start_timestamp"

    const-string v2, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "day"

    const-string v2, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "daily_public_events_count"

    const-string v2, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "daily_events_count"

    const-string v2, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "daily_conversions_count"

    const-string v2, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "remote_config"

    const-string v2, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "config_fetched_time"

    const-string v2, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "failed_config_fetch_time"

    const-string v2, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "app_version_int"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "firebase_instance_id"

    const-string v2, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "daily_error_events_count"

    const-string v2, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "daily_realtime_events_count"

    const-string v2, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "health_monitor_sample"

    const-string v2, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    const-string v1, "android_id"

    const-string v2, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/zzatj;->zzbri:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbri:Ljava/util/Map;

    const-string v1, "realtime"

    const-string v2, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrj:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrj:Ljava/util/Map;

    const-string v1, "has_realtime"

    const-string v2, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrk:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrk:Ljava/util/Map;

    const-string v1, "previous_install_count"

    const-string v2, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance v0, Lcom/google/android/gms/internal/zzauo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzauo;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatj;->zzbrm:Lcom/google/android/gms/internal/zzauo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzow()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzatj$zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/zzatj$zzc;-><init>(Lcom/google/android/gms/internal/zzatj;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzatj;->zzbrl:Lcom/google/android/gms/internal/zzatj$zzc;

    return-void
.end method

.method private zzLM()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic zzLN()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrg:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzLO()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrh:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzLP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrj:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzLQ()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbri:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzLR()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzatj;->zzbrk:Ljava/util/Map;

    return-object v0
.end method

.method static zza(Landroid/database/Cursor;I)I
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method private zza(Ljava/lang/String;[Ljava/lang/String;J)J
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_13} :catch_20
    .catchall {:try_start_5 .. :try_end_13} :catchall_2f

    move-result-wide p3

    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    :goto_19
    return-wide p3

    :cond_1a
    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_19

    :catch_20
    move-exception v0

    :try_start_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Database error"

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    if-eqz v1, :cond_35

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzatj;)Lcom/google/android/gms/internal/zzauo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj;->zzbrm:Lcom/google/android/gms/internal/zzauo;

    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Monitor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to turn off database read permission"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_26
    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to turn off database write permission"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_35
    invoke-virtual {v0, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to turn on database read permission for owner"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_44
    invoke-virtual {v0, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to turn on database write permission for owner"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_53
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzatx;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Monitor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_13
    :try_start_13
    invoke-static {p0, p1, p2, p4, p5}, Lcom/google/android/gms/internal/zzatj;->zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to verify columns on table that was just created"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method static zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzatx;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Monitor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzatj;->zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v3, :cond_59

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Table "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is missing required column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_59
    if-eqz p4, :cond_83

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_63
    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_63

    :cond_83
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_98

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Table has extra columns. table, columns"

    const-string v3, ", "

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, p2, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_98
    return-void
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zza;)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Audience with no ID. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    array-length v4, v2

    move v1, v0

    :goto_37
    if-ge v1, v4, :cond_56

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    if-nez v5, :cond_53

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2c

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_56
    iget-object v2, p2, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    array-length v4, v2

    move v1, v0

    :goto_5a
    if-ge v1, v4, :cond_79

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    if-nez v5, :cond_76

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2c

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_79
    const/4 v1, 0x1

    iget-object v4, p2, Lcom/google/android/gms/internal/zzauu$zza;->zzbwm:[Lcom/google/android/gms/internal/zzauu$zzb;

    array-length v5, v4

    move v2, v0

    :goto_7e
    if-ge v2, v5, :cond_89

    aget-object v6, v4, v2

    invoke-direct {p0, p1, v3, v6}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzauu$zzb;)Z

    move-result v6

    if-nez v6, :cond_9f

    move v1, v0

    :cond_89
    if-eqz v1, :cond_a5

    iget-object v4, p2, Lcom/google/android/gms/internal/zzauu$zza;->zzbwl:[Lcom/google/android/gms/internal/zzauu$zze;

    array-length v5, v4

    move v2, v0

    :goto_8f
    if-ge v2, v5, :cond_a5

    aget-object v6, v4, v2

    invoke-direct {p0, p1, v3, v6}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzauu$zze;)Z

    move-result v6

    if-nez v6, :cond_a2

    :goto_99
    if-nez v0, :cond_2c

    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/zzatj;->zzA(Ljava/lang/String;I)V

    goto :goto_2c

    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    :cond_a5
    move v0, v1

    goto :goto_99
.end method

.method static zza(Lcom/google/android/gms/internal/zzatx;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez p0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Monitor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    const-string v1, "SQLITE_MASTER"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_25} :catch_30
    .catchall {:try_start_c .. :try_end_25} :catchall_42

    move-result-object v1

    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_29} :catch_4c
    .catchall {:try_start_26 .. :try_end_29} :catchall_49

    move-result v0

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2f
    :goto_2f
    return v0

    :catch_30
    move-exception v0

    move-object v1, v9

    :goto_32
    :try_start_32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error querying for table"

    invoke-virtual {v2, v3, p2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_49

    if-eqz v1, :cond_40

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_40
    move v0, v8

    goto :goto_2f

    :catchall_42
    move-exception v0

    :goto_43
    if-eqz v9, :cond_48

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v0

    :catchall_49
    move-exception v0

    move-object v9, v1

    goto :goto_43

    :catch_4c
    move-exception v0

    goto :goto_32
.end method

.method private zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzauu$zzb;)Z
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_30
    return v0

    :cond_31
    :try_start_31
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzauu$zzb;->zzaeT()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxm;->zzag([B)Lcom/google/android/gms/internal/zzbxm;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzauu$zzb;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxm;->zzaeG()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_8c

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "filter_id"

    iget-object v4, p3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "event_name"

    iget-object v4, p3, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "event_filters"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_8a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to insert event filter (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_8a} :catch_9f

    :cond_8a
    const/4 v0, 0x1

    goto :goto_30

    :catch_8c
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Configuration loss. Failed to serialize event filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_30

    :catch_9f
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error storing event filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_30
.end method

.method private zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzauu$zze;)Z
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p3, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_30
    return v0

    :cond_31
    :try_start_31
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzauu$zze;->zzaeT()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxm;->zzag([B)Lcom/google/android/gms/internal/zzbxm;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/zzauu$zze;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbxm;->zzaeG()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_9e

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "filter_id"

    iget-object v4, p3, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "property_name"

    iget-object v4, p3, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "property_filters"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_b1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to insert property filter (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_8a} :catch_8b

    goto :goto_30

    :catch_8b
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error storing property filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_30

    :catch_9e
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Configuration loss. Failed to serialize property filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_30

    :cond_b1
    const/4 v0, 0x1

    goto/16 :goto_30
.end method

.method private zzb(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_13} :catch_22
    .catchall {:try_start_5 .. :try_end_13} :catchall_31

    move-result-wide v2

    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    return-wide v2

    :cond_1a
    :try_start_1a
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Database returned empty set"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_22} :catch_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_31

    :catch_22
    move-exception v0

    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Database error"

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v0

    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v0
.end method

.method static zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_38

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_38
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public beginTransaction()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public endTransaction()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatj;->zzbrl:Lcom/google/android/gms/internal/zzatj$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatj$zzc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public setTransactionSuccessful()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method zzA(Ljava/lang/String;I)V
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "property_filters"

    const-string v2, "app_id=? and audience_id=?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "event_filters"

    const-string v2, "app_id=? and audience_id=?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public zzJ(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "rowid in ("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_30

    if-eqz v1, :cond_1f

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    :cond_30
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "raw_events"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_63

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Deleted fewer rows from raw events table than expected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    return-void
.end method

.method public zzLD()Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_5
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_b} :catch_23
    .catchall {:try_start_5 .. :try_end_b} :catchall_38

    move-result-object v2

    :try_start_c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_16} :catch_43
    .catchall {:try_start_c .. :try_end_16} :catchall_41

    move-result-object v0

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    if-eqz v2, :cond_1c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    :catch_23
    move-exception v1

    move-object v2, v0

    :goto_25
    :try_start_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_41

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1c

    :catchall_38
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3b
    if-eqz v2, :cond_40

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_40
    throw v0

    :catchall_41
    move-exception v0

    goto :goto_3b

    :catch_43
    move-exception v1

    goto :goto_25
.end method

.method public zzLE()Z
    .registers 5

    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method zzLF()V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzatj;->zzLM()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtc:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaua$zzb;->get()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzLk()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaua;->zzbtc:Lcom/google/android/gms/internal/zzaua$zzb;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzaua$zzb;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzLG()V

    goto :goto_c
.end method

.method zzLG()V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzatj;->zzLM()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzLj()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "queue"

    const-string v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public zzLH()J
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "select max(bundle_end_timestamp) from queue"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLI()J
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "select max(timestamp) from raw_events"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzLJ()Z
    .registers 5

    const-string v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public zzLK()Z
    .registers 5

    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public zzLL()J
    .registers 7

    const-wide/16 v0, -0x1

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "select rowid from raw_events order by rowid desc limit 1;"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_11} :catch_25
    .catchall {:try_start_3 .. :try_end_11} :catchall_39

    move-result v2

    if-nez v2, :cond_1a

    if-eqz v3, :cond_19

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_19
    :goto_19
    return-wide v0

    :cond_1a
    const/4 v2, 0x0

    :try_start_1b
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1e} :catch_25
    .catchall {:try_start_1b .. :try_end_1e} :catchall_39

    move-result-wide v0

    if-eqz v3, :cond_19

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_19

    :catch_25
    move-exception v2

    :try_start_26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Error querying raw events"

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_39

    if-eqz v3, :cond_19

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_19

    :catchall_39
    move-exception v0

    if-eqz v3, :cond_3f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0
.end method

.method public zzQ(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatn;
    .registers 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lifetime_count"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "current_bundle_count"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "last_fire_timestamp"

    aput-object v4, v2, v3

    const-string v3, "app_id=? and name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_36} :catch_77
    .catchall {:try_start_d .. :try_end_36} :catchall_91

    move-result-object v11

    :try_start_37
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_3a} :catch_9e
    .catchall {:try_start_37 .. :try_end_3a} :catchall_98

    move-result v0

    if-nez v0, :cond_44

    if-eqz v11, :cond_42

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_42
    move-object v1, v10

    :cond_43
    :goto_43
    return-object v1

    :cond_44
    const/4 v0, 0x0

    :try_start_45
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v1, Lcom/google/android/gms/internal/zzatn;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzatn;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Got multiple records for event aggregates, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_71} :catch_9e
    .catchall {:try_start_45 .. :try_end_71} :catchall_98

    :cond_71
    if-eqz v11, :cond_43

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_43

    :catch_77
    move-exception v0

    move-object v1, v10

    :goto_79
    :try_start_79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error querying events. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8a
    .catchall {:try_start_79 .. :try_end_8a} :catchall_9b

    if-eqz v1, :cond_8f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8f
    move-object v1, v10

    goto :goto_43

    :catchall_91
    move-exception v0

    :goto_92
    if-eqz v10, :cond_97

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_97
    throw v0

    :catchall_98
    move-exception v0

    move-object v10, v11

    goto :goto_92

    :catchall_9b
    move-exception v0

    move-object v10, v1

    goto :goto_92

    :catch_9e
    move-exception v0

    move-object v1, v11

    goto :goto_79
.end method

.method public zzR(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Deleted user attribute rows"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error deleting user attribute. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_32
.end method

.method public zzS(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaus;
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "set_timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "origin"

    aput-object v4, v2, v3

    const-string v3, "app_id=? and name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_36} :catch_77
    .catchall {:try_start_d .. :try_end_36} :catchall_91

    move-result-object v7

    :try_start_37
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_3a} :catch_9e
    .catchall {:try_start_37 .. :try_end_3a} :catchall_98

    move-result v0

    if-nez v0, :cond_44

    if-eqz v7, :cond_42

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_42
    move-object v0, v8

    :cond_43
    :goto_43
    return-object v0

    :cond_44
    const/4 v0, 0x0

    :try_start_45
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/google/android/gms/internal/zzatj;->zzb(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzaus;

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Got multiple records for user property, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_71} :catch_9e
    .catchall {:try_start_45 .. :try_end_71} :catchall_98

    :cond_71
    if-eqz v7, :cond_43

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_43

    :catch_77
    move-exception v0

    move-object v1, v8

    :goto_79
    :try_start_79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error querying user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8a
    .catchall {:try_start_79 .. :try_end_8a} :catchall_9b

    if-eqz v1, :cond_8f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8f
    move-object v0, v8

    goto :goto_43

    :catchall_91
    move-exception v0

    :goto_92
    if-eqz v8, :cond_97

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_97
    throw v0

    :catchall_98
    move-exception v0

    move-object v8, v7

    goto :goto_92

    :catchall_9b
    move-exception v0

    move-object v8, v1

    goto :goto_92

    :catch_9e
    move-exception v0

    move-object v1, v7

    goto :goto_79
.end method

.method public zzT(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzatg;
    .registers 24
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    const/4 v10, 0x0

    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "origin"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "value"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "active"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "trigger_event_name"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "trigger_timeout"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "timed_out_event"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "creation_timestamp"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "triggered_event"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "triggered_timestamp"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "time_to_live"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "expired_event"

    aput-object v6, v4, v5

    const-string v5, "app_id=? and name=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_62
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_62} :catch_11b
    .catchall {:try_start_d .. :try_end_62} :catchall_138

    move-result-object v20

    :try_start_63
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_66
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_66} :catch_147
    .catchall {:try_start_63 .. :try_end_66} :catchall_141

    move-result v2

    if-nez v2, :cond_70

    if-eqz v20, :cond_6e

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_6e
    const/4 v5, 0x0

    :cond_6f
    :goto_6f
    return-object v5

    :cond_70
    const/4 v2, 0x0

    :try_start_71
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatj;->zzb(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_118

    const/4 v11, 0x1

    :goto_8a
    const/4 v2, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/4 v3, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzaut;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzatq;

    const/4 v2, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/4 v3, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzaut;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/internal/zzatq;

    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v2, 0x9

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/16 v3, 0xa

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v8, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/internal/zzaut;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/internal/zzatq;

    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/internal/zzatg;

    move-object/from16 v6, p1

    move-object v8, v2

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/internal/zzatg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_111

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Got multiple records for conditional property, expected one"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_111
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_71 .. :try_end_111} :catch_147
    .catchall {:try_start_71 .. :try_end_111} :catchall_141

    :cond_111
    if-eqz v20, :cond_6f

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6f

    :cond_118
    const/4 v11, 0x0

    goto/16 :goto_8a

    :catch_11b
    move-exception v2

    move-object v3, v10

    :goto_11d
    :try_start_11d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Error querying conditional property"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v6, v0, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_130
    .catchall {:try_start_11d .. :try_end_130} :catchall_143

    if-eqz v3, :cond_135

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_135
    const/4 v5, 0x0

    goto/16 :goto_6f

    :catchall_138
    move-exception v2

    move-object/from16 v20, v10

    :goto_13b
    if-eqz v20, :cond_140

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_140
    throw v2

    :catchall_141
    move-exception v2

    goto :goto_13b

    :catchall_143
    move-exception v2

    move-object/from16 v20, v3

    goto :goto_13b

    :catch_147
    move-exception v2

    move-object/from16 v3, v20

    goto :goto_11d
.end method

.method public zzU(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "conditional_properties"

    const-string v3, "app_id=? and name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_21} :catch_23

    move-result v0

    :goto_22
    return v0

    :catch_23
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error deleting conditional property"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_22
.end method

.method zzV(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauu$zzb;",
            ">;>;"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v8}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_16
    const-string v1, "event_filters"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audience_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data"

    aput-object v4, v2, v3

    const-string v3, "app_id=? AND event_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_36} :catch_bb
    .catchall {:try_start_16 .. :try_end_36} :catchall_b1

    move-result-object v1

    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_40} :catch_98
    .catchall {:try_start_37 .. :try_end_40} :catchall_b9

    move-result-object v0

    if-eqz v1, :cond_46

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_46
    :goto_46
    return-object v0

    :cond_47
    const/4 v0, 0x1

    :try_start_48
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxl;->zzaf([B)Lcom/google/android/gms/internal/zzbxl;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzauu$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzauu$zzb;-><init>()V
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_55} :catch_98
    .catchall {:try_start_48 .. :try_end_55} :catchall_b9

    :try_start_55
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzauu$zzb;->zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_58} :catch_98
    .catchall {:try_start_55 .. :try_end_58} :catchall_b9

    const/4 v0, 0x0

    :try_start_59
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_75

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_78
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_7b} :catch_98
    .catchall {:try_start_59 .. :try_end_7b} :catchall_b9

    move-result v0

    if-nez v0, :cond_47

    if-eqz v1, :cond_83

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_83
    move-object v0, v8

    goto :goto_46

    :catch_85
    move-exception v0

    :try_start_86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Failed to merge filter. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_86 .. :try_end_97} :catch_98
    .catchall {:try_start_86 .. :try_end_97} :catchall_b9

    goto :goto_78

    :catch_98
    move-exception v0

    :goto_99
    :try_start_99
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Database error querying filters. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_aa
    .catchall {:try_start_99 .. :try_end_aa} :catchall_b9

    if-eqz v1, :cond_af

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_af
    move-object v0, v9

    goto :goto_46

    :catchall_b1
    move-exception v0

    move-object v1, v9

    :goto_b3
    if-eqz v1, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b8
    throw v0

    :catchall_b9
    move-exception v0

    goto :goto_b3

    :catch_bb
    move-exception v0

    move-object v1, v9

    goto :goto_99
.end method

.method zzW(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzauu$zze;",
            ">;>;"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v8}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_16
    const-string v1, "property_filters"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audience_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data"

    aput-object v4, v2, v3

    const-string v3, "app_id=? AND property_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_36} :catch_bb
    .catchall {:try_start_16 .. :try_end_36} :catchall_b1

    move-result-object v1

    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_40} :catch_98
    .catchall {:try_start_37 .. :try_end_40} :catchall_b9

    move-result-object v0

    if-eqz v1, :cond_46

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_46
    :goto_46
    return-object v0

    :cond_47
    const/4 v0, 0x1

    :try_start_48
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxl;->zzaf([B)Lcom/google/android/gms/internal/zzbxl;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzauu$zze;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzauu$zze;-><init>()V
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_55} :catch_98
    .catchall {:try_start_48 .. :try_end_55} :catchall_b9

    :try_start_55
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzauu$zze;->zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_58} :catch_98
    .catchall {:try_start_55 .. :try_end_58} :catchall_b9

    const/4 v0, 0x0

    :try_start_59
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_75

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_78
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_7b} :catch_98
    .catchall {:try_start_59 .. :try_end_7b} :catchall_b9

    move-result v0

    if-nez v0, :cond_47

    if-eqz v1, :cond_83

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_83
    move-object v0, v8

    goto :goto_46

    :catch_85
    move-exception v0

    :try_start_86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Failed to merge filter"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_86 .. :try_end_97} :catch_98
    .catchall {:try_start_86 .. :try_end_97} :catchall_b9

    goto :goto_78

    :catch_98
    move-exception v0

    :goto_99
    :try_start_99
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Database error querying filters. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_aa
    .catchall {:try_start_99 .. :try_end_aa} :catchall_b9

    if-eqz v1, :cond_af

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_af
    move-object v0, v9

    goto :goto_46

    :catchall_b1
    move-exception v0

    move-object v1, v9

    :goto_b3
    if-eqz v1, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b8
    throw v0

    :catchall_b9
    move-exception v0

    goto :goto_b3

    :catch_bb
    move-exception v0

    move-object v1, v9

    goto :goto_99
.end method

.method protected zzX(Ljava/lang/String;Ljava/lang/String;)J
    .registers 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_17
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "select "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from app2 where app_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v1, v7

    const-wide/16 v8, -0x1

    invoke-direct {p0, v0, v1, v8, v9}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v7, v0, v2

    if-nez v7, :cond_8b

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "first_open_count"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "previous_install_count"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "app2"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v6, v1, v7, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to insert column (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v1, v7, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_85} :catch_cf
    .catchall {:try_start_17 .. :try_end_85} :catchall_e7

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v0, v2

    :goto_89
    return-wide v0

    :cond_8a
    move-wide v0, v4

    :cond_8b
    :try_start_8b
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_id"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x1

    add-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "app2"

    const-string v9, "app_id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    cmp-long v4, v8, v4

    if-nez v4, :cond_c8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Failed to update column (got 0). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8b .. :try_end_c3} :catch_ec
    .catchall {:try_start_8b .. :try_end_c3} :catchall_e7

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v0, v2

    goto :goto_89

    :cond_c8
    :try_start_c8
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c8 .. :try_end_cb} :catch_ec
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_e7

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_89

    :catch_cf
    move-exception v0

    move-object v2, v0

    move-wide v0, v4

    :goto_d2
    :try_start_d2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Error inserting column. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e3
    .catchall {:try_start_d2 .. :try_end_e3} :catchall_e7

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_89

    :catchall_e7
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catch_ec
    move-exception v2

    goto :goto_d2
.end method

.method public zza(Lcom/google/android/gms/internal/zzauw$zze;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    :try_start_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauw$zze;->zzaeT()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxm;->zzag([B)Lcom/google/android/gms/internal/zzbxm;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzauw$zze;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxm;->zzaeG()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_4c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaut;->zzz([B)J

    move-result-wide v2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "metadata_fingerprint"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "metadata"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "raw_events_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_40 .. :try_end_4b} :catch_61

    return-wide v2

    :catch_4c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Data loss. Failed to serialize event metadata. appId"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    :catch_61
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error storing raw event metadata. appId"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method

.method public zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzatj$zza;
    .registers 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v10, v0

    new-instance v8, Lcom/google/android/gms/internal/zzatj$zza;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzatj$zza;-><init>()V

    const/4 v9, 0x0

    :try_start_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "apps"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "day"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "daily_events_count"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "daily_public_events_count"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "daily_conversions_count"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "daily_error_events_count"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "daily_realtime_events_count"

    aput-object v4, v2, v3

    const-string v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_4a} :catch_116
    .catchall {:try_start_15 .. :try_end_4a} :catchall_131

    move-result-object v1

    :try_start_4b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Not updating daily counts, app is not known. appId"

    invoke-static {p3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_62
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_62} :catch_13b
    .catchall {:try_start_4b .. :try_end_62} :catchall_139

    if-eqz v1, :cond_67

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_67
    move-object v0, v8

    :goto_68
    return-object v0

    :cond_69
    const/4 v2, 0x0

    :try_start_6a
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_95

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbro:J

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrn:J

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrp:J

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrq:J

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrr:J

    :cond_95
    if-eqz p4, :cond_9e

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbro:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbro:J

    :cond_9e
    if-eqz p5, :cond_a7

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrn:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrn:J

    :cond_a7
    if-eqz p6, :cond_b0

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrp:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrp:J

    :cond_b0
    if-eqz p7, :cond_b9

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrq:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrq:J

    :cond_b9
    if-eqz p8, :cond_c2

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrr:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrr:J

    :cond_c2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "day"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_public_events_count"

    iget-wide v4, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrn:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_events_count"

    iget-wide v4, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbro:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_conversions_count"

    iget-wide v4, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_error_events_count"

    iget-wide v4, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrq:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "daily_realtime_events_count"

    iget-wide v4, v8, Lcom/google/android/gms/internal/zzatj$zza;->zzbrr:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "apps"

    const-string v4, "app_id=?"

    invoke-virtual {v0, v3, v2, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_10e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_10e} :catch_13b
    .catchall {:try_start_6a .. :try_end_10e} :catchall_139

    if-eqz v1, :cond_113

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_113
    move-object v0, v8

    goto/16 :goto_68

    :catch_116
    move-exception v0

    move-object v1, v9

    :goto_118
    :try_start_118
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error updating daily counts. appId"

    invoke-static {p3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_129
    .catchall {:try_start_118 .. :try_end_129} :catchall_139

    if-eqz v1, :cond_12e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_12e
    move-object v0, v8

    goto/16 :goto_68

    :catchall_131
    move-exception v0

    move-object v1, v9

    :goto_133
    if-eqz v1, :cond_138

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_138
    throw v0

    :catchall_139
    move-exception v0

    goto :goto_133

    :catch_13b
    move-exception v0

    goto :goto_118
.end method

.method zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_10

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_f

    :cond_1a
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_24

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_f

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzatc;)V
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmp_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resettable_device_id_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "last_bundle_index"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKy()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_bundle_start_timestamp"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKr()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_bundle_end_timestamp"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "app_version"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzmZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_store"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmp_version"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "dev_cert_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "measurement_enabled"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKx()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "day"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKC()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_public_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKD()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKE()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_conversions_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKF()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "config_fetched_time"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKz()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "failed_config_fetch_time"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKA()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "app_version_int"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "firebase_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "daily_error_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKH()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "daily_realtime_events_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKG()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "health_monitor_sample"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzKI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzuW()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_126
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "apps"

    const-string v3, "app_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_166

    const-string v2, "apps"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_166

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to insert/update app (got -1). appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_166
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_126 .. :try_end_166} :catch_167

    :cond_166
    :goto_166
    return-void

    :catch_167
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error storing app. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzatc;->zzke()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_166
.end method

.method public zza(Lcom/google/android/gms/internal/zzatn;)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatn;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatn;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lifetime_count"

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzatn;->zzbrA:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "current_bundle_count"

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzatn;->zzbrB:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_fire_timestamp"

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzatn;->zzbrC:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_62

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to insert/update event aggregates (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatn;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_62
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_62} :catch_63

    :cond_62
    :goto_62
    return-void

    :catch_63
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error storing event aggregates. appId"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatn;->mAppId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_62
.end method

.method zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzauw$zzf;)V
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_c
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzauw$zzf;->zzaeT()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxm;->zzag([B)Lcom/google/android/gms/internal/zzbxm;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzauw$zzf;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxm;->zzaeG()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_58

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "current_results"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "audience_filter_values"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_57

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to insert filter results (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_57} :catch_6b

    :cond_57
    :goto_57
    return-void

    :catch_58
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Configuration loss. Failed to serialize filter results. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_57

    :catch_6b
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error storing filter results. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_57
.end method

.method public zza(Ljava/lang/String;JJLcom/google/android/gms/internal/zzatj$zzb;)V
    .registers 21

    invoke-static/range {p6 .. p6}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c1

    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-eqz v4, :cond_67

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v4

    :goto_2c
    const-wide/16 v6, -0x1

    cmp-long v4, p4, v6

    if-eqz v4, :cond_73

    const-string v4, "rowid <= ? and "

    :goto_34
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, 0x94

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_5e} :catch_24f
    .catchall {:try_start_a .. :try_end_5e} :catchall_245

    move-result v4

    if-nez v4, :cond_76

    if-eqz v3, :cond_66

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_66
    :goto_66
    return-void

    :cond_67
    const/4 v4, 0x1

    :try_start_68
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v4

    goto :goto_2c

    :cond_73
    const-string v4, ""

    goto :goto_34

    :cond_76
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_83} :catch_24f
    .catchall {:try_start_68 .. :try_end_83} :catchall_245

    move-object v12, v4

    move-object v11, v3

    :goto_85
    :try_start_85
    const-string v3, "raw_events_metadata"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "metadata"

    aput-object v6, v4, v5

    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v12, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "2"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_128

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Raw event metadata record is missing. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_bb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_85 .. :try_end_bb} :catch_1d5
    .catchall {:try_start_85 .. :try_end_bb} :catchall_24c

    if-eqz v11, :cond_66

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_66

    :cond_c1
    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-eqz v4, :cond_111

    const/4 v4, 0x2

    :try_start_c8
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v4

    :goto_d5
    const-wide/16 v6, -0x1

    cmp-long v4, p4, v6

    if-eqz v4, :cond_119

    const-string v4, " and rowid <= ?"

    :goto_dd
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " order by rowid limit 1;"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_107
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c8 .. :try_end_107} :catch_24f
    .catchall {:try_start_c8 .. :try_end_107} :catchall_245

    move-result v4

    if-nez v4, :cond_11c

    if-eqz v3, :cond_66

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66

    :cond_111
    const/4 v4, 0x1

    :try_start_112
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v4

    goto :goto_d5

    :cond_119
    const-string v4, ""

    goto :goto_dd

    :cond_11c
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_124
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_112 .. :try_end_124} :catch_24f
    .catchall {:try_start_112 .. :try_end_124} :catchall_245

    move-object v12, v4

    move-object v11, v3

    goto/16 :goto_85

    :cond_128
    const/4 v3, 0x0

    :try_start_129
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbxl;->zzaf([B)Lcom/google/android/gms/internal/zzbxl;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzauw$zze;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zze;-><init>()V
    :try_end_136
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_129 .. :try_end_136} :catch_1d5
    .catchall {:try_start_129 .. :try_end_136} :catchall_24c

    :try_start_136
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzauw$zze;->zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_1b0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_136 .. :try_end_139} :catch_1d5
    .catchall {:try_start_136 .. :try_end_139} :catchall_24c

    :try_start_139
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_150

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v5, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_150
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/zzatj$zzb;->zzb(Lcom/google/android/gms/internal/zzauw$zze;)V

    const-wide/16 v4, -0x1

    cmp-long v3, p4, v4

    if-eqz v3, :cond_1c9

    const-string v5, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    const/4 v3, 0x1

    aput-object v12, v6, v3

    const/4 v3, 0x2

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    :goto_170
    const-string v3, "raw_events"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "rowid"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "name"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "timestamp"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "data"

    aput-object v8, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_191
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_139 .. :try_end_191} :catch_1d5
    .catchall {:try_start_139 .. :try_end_191} :catchall_24c

    move-result-object v3

    :try_start_192
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1ef

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v4, "Raw event data disappeared while in transaction. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1a9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_192 .. :try_end_1a9} :catch_24f
    .catchall {:try_start_192 .. :try_end_1a9} :catchall_245

    if-eqz v3, :cond_66

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66

    :catch_1b0
    move-exception v2

    :try_start_1b1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b1 .. :try_end_1c2} :catch_1d5
    .catchall {:try_start_1b1 .. :try_end_1c2} :catchall_24c

    if-eqz v11, :cond_66

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66

    :cond_1c9
    :try_start_1c9
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    const/4 v3, 0x1

    aput-object v12, v6, v3
    :try_end_1d4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c9 .. :try_end_1d4} :catch_1d5
    .catchall {:try_start_1c9 .. :try_end_1d4} :catchall_24c

    goto :goto_170

    :catch_1d5
    move-exception v2

    move-object v3, v11

    :goto_1d7
    :try_start_1d7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Data loss. Error selecting raw event. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e8
    .catchall {:try_start_1d7 .. :try_end_1e8} :catchall_245

    if-eqz v3, :cond_66

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66

    :cond_1ef
    const/4 v2, 0x0

    :try_start_1f0
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxl;->zzaf([B)Lcom/google/android/gms/internal/zzbxl;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/zzauw$zzb;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzauw$zzb;-><init>()V
    :try_end_202
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f0 .. :try_end_202} :catch_24f
    .catchall {:try_start_1f0 .. :try_end_202} :catchall_245

    :try_start_202
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/zzauw$zzb;->zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    :try_end_205
    .catch Ljava/io/IOException; {:try_start_202 .. :try_end_205} :catch_226
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_202 .. :try_end_205} :catch_24f
    .catchall {:try_start_202 .. :try_end_205} :catchall_245

    const/4 v2, 0x1

    :try_start_206
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/zzatj$zzb;->zza(JLcom/google/android/gms/internal/zzauw$zzb;)Z
    :try_end_21c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_206 .. :try_end_21c} :catch_24f
    .catchall {:try_start_206 .. :try_end_21c} :catchall_245

    move-result v2

    if-nez v2, :cond_238

    if-eqz v3, :cond_66

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66

    :catch_226
    move-exception v2

    :try_start_227
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Data loss. Failed to merge raw event. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_238
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_23b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_227 .. :try_end_23b} :catch_24f
    .catchall {:try_start_227 .. :try_end_23b} :catchall_245

    move-result v2

    if-nez v2, :cond_1ef

    if-eqz v3, :cond_66

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66

    :catchall_245
    move-exception v2

    :goto_246
    if-eqz v3, :cond_24b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_24b
    throw v2

    :catchall_24c
    move-exception v2

    move-object v3, v11

    goto :goto_246

    :catch_24f
    move-exception v2

    goto :goto_1d7
.end method

.method public zza(Lcom/google/android/gms/internal/zzatg;)Z
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    iget-object v2, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzS(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaus;

    move-result-object v2

    if-nez v2, :cond_31

    const-string v2, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKZ()I

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_31

    :goto_30
    return v0

    :cond_31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbqV:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauq;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzauq;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "active"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbqY:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "trigger_event_name"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbqZ:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trigger_timeout"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatg;->zzbrb:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "timed_out_event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->zzbra:Lcom/google/android/gms/internal/zzatq;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "creation_timestamp"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatg;->zzbqX:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "triggered_event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->zzbrc:Lcom/google/android/gms/internal/zzatq;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "triggered_timestamp"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->zzbqW:Lcom/google/android/gms/internal/zzauq;

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzauq;->zzbwc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "time_to_live"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzatg;->zzbrd:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "expired_event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->zzbre:Lcom/google/android/gms/internal/zzatq;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_c5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_ea

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Failed to insert/update conditional user property (got -1)"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ea
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c5 .. :try_end_ea} :catch_ed

    :cond_ea
    :goto_ea
    move v0, v1

    goto/16 :goto_30

    :catch_ed
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error storing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatg;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ea
.end method

.method public zza(Lcom/google/android/gms/internal/zzatm;JZ)Z
    .registers 15

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/zzauw$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzauw$zzb;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzatm;->zzbry:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxa:Ljava/lang/Long;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->zzbrz:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzauw$zzc;

    iput-object v0, v5, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzatm;->zzbrz:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzato;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzauw$zzc;-><init>()V

    iget-object v8, v5, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    add-int/lit8 v3, v1, 0x1

    aput-object v7, v8, v1

    iput-object v0, v7, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzatm;->zzbrz:Lcom/google/android/gms/internal/zzato;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzato;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lcom/google/android/gms/internal/zzaut;->zza(Lcom/google/android/gms/internal/zzauw$zzc;Ljava/lang/Object;)V

    move v1, v3

    goto :goto_2e

    :cond_56
    :try_start_56
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzauw$zzb;->zzaeT()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxm;->zzag([B)Lcom/google/android/gms/internal/zzbxm;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/zzauw$zzb;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxm;->zzaeG()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_66} :catch_d7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Saving event, name, data size"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "name"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzatm;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timestamp"

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzatm;->zzaxb:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "metadata_fingerprint"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "realtime"

    if-eqz p4, :cond_ec

    move v0, v4

    :goto_ab
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_b2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "raw_events"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-nez v0, :cond_103

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to insert raw event (got -1). appId"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b2 .. :try_end_d6} :catch_ee

    :goto_d6
    return v2

    :catch_d7
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Data loss. Failed to serialize event params/data. appId"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d6

    :cond_ec
    move v0, v2

    goto :goto_ab

    :catch_ee
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Error storing raw event. appId"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzatm;->mAppId:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d6

    :cond_103
    move v2, v4

    goto :goto_d6
.end method

.method public zza(Lcom/google/android/gms/internal/zzaus;)Z
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v6, 0x19

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaus;->mAppId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzS(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaus;

    move-result-object v2

    if-nez v2, :cond_53

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaut;->zzfT(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzaus;->mAppId:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKW()I

    cmp-long v2, v2, v6

    if-ltz v2, :cond_53

    :cond_36
    :goto_36
    return v0

    :cond_37
    const-string v2, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzaus;->mAppId:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v4, p1, Lcom/google/android/gms/internal/zzaus;->mOrigin:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKY()I

    cmp-long v2, v2, v6

    if-gez v2, :cond_36

    :cond_53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaus;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaus;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaus;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "set_timestamp"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzaus;->zzbwg:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "value"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaus;->mValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_7f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_a4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v2, "Failed to insert/update user property (got -1). appId"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaus;->mAppId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7f .. :try_end_a4} :catch_a6

    :cond_a4
    :goto_a4
    move v0, v1

    goto :goto_36

    :catch_a6
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error storing user property. appId"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzaus;->mAppId:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a4
.end method

.method public zza(Lcom/google/android/gms/internal/zzauw$zze;Z)Z
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzLF()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLj()J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_47

    iget-object v0, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLj()J

    move-result-wide v8

    add-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-lez v0, :cond_60

    :cond_47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v3, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    iget-object v6, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    invoke-virtual {v0, v3, v6, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    :try_start_60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauw$zze;->zzaeT()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxm;->zzag([B)Lcom/google/android/gms/internal/zzbxm;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzauw$zze;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbxm;->zzaeG()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzaut;->zzk([B)[B
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_77} :catch_d3

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Saving bundle, size"

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bundle_end_timestamp"

    iget-object v5, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "has_realtime"

    if-eqz p2, :cond_e8

    move v0, v1

    :goto_a7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_ae
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "queue"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_ff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to insert bundle (got -1). appId"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ae .. :try_end_d2} :catch_ea

    :goto_d2
    return v2

    :catch_d3
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Data loss. Failed to serialize bundle. appId"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d2

    :cond_e8
    move v0, v2

    goto :goto_a7

    :catch_ea
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Error storing bundle. appId"

    iget-object v4, p1, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d2

    :cond_ff
    move v2, v1

    goto :goto_d2
.end method

.method public zzan(J)V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :try_start_14
    const-string v2, "queue"

    const-string v3, "rowid=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_35

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to delete a bundle in a queue table"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_35
    return-void
.end method

.method public zzao(J)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_1a} :catch_3f
    .catchall {:try_start_7 .. :try_end_1a} :catchall_54

    move-result-object v2

    :try_start_1b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "No expired configs for apps with pending events"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_2e} :catch_5f
    .catchall {:try_start_1b .. :try_end_2e} :catchall_5d

    if-eqz v2, :cond_33

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_33
    :goto_33
    return-object v0

    :cond_34
    const/4 v1, 0x0

    :try_start_35
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_38} :catch_5f
    .catchall {:try_start_35 .. :try_end_38} :catchall_5d

    move-result-object v0

    if-eqz v2, :cond_33

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_33

    :catch_3f
    move-exception v1

    move-object v2, v0

    :goto_41
    :try_start_41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_5d

    if-eqz v2, :cond_33

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_33

    :catchall_54
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_57
    if-eqz v2, :cond_5c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0

    :catchall_5d
    move-exception v0

    goto :goto_57

    :catch_5f
    move-exception v1

    goto :goto_41
.end method

.method zzb(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzatj;->zza(Landroid/database/Cursor;I)I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Loaded invalid unknown value type, ignoring it"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_19
    return-object v0

    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Loaded invalid null value from database"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_28
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_19

    :pswitch_31
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_19

    :pswitch_3a
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :pswitch_3f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto :goto_19

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_28
        :pswitch_31
        :pswitch_3a
        :pswitch_3f
    .end packed-switch
.end method

.method zzb(Ljava/lang/String;[Lcom/google/android/gms/internal/zzauu$zza;)V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzatj;->zzfx(Ljava/lang/String;)V

    array-length v3, p2

    move v1, v0

    :goto_19
    if-ge v1, v3, :cond_23

    aget-object v4, p2, v1

    invoke-direct {p0, p1, v4}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzauu$zza;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p2

    :goto_29
    if-ge v0, v3, :cond_35

    aget-object v4, p2, v0

    iget-object v4, v4, Lcom/google/android/gms/internal/zzauu$zza;->zzbwk:Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_35
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzatj;->zzd(Ljava/lang/String;Ljava/util/List;)Z

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_3f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_3f
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Invalid time querying triggered conditional properties"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2b
    return-object v0

    :cond_2c
    const-string v0, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2b
.end method

.method public zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "app_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "origin"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "value"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "active"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "trigger_event_name"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "trigger_timeout"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "timed_out_event"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "creation_timestamp"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "triggered_event"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "triggered_timestamp"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "time_to_live"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "expired_event"

    aput-object v6, v4, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzati;->zzKZ()I

    const/16 v5, 0x3e9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_74
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_74} :catch_15d
    .catchall {:try_start_c .. :try_end_74} :catchall_177

    move-result-object v21

    :try_start_75
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_78} :catch_186
    .catchall {:try_start_75 .. :try_end_78} :catchall_180

    move-result v2

    if-nez v2, :cond_83

    if-eqz v21, :cond_80

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_80
    move-object/from16 v2, v20

    :cond_82
    :goto_82
    return-object v2

    :cond_83
    :try_start_83
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzati;->zzKZ()I

    move-result v3

    if-lt v2, v3, :cond_b2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Read more than the max allowed conditional properties, ignoring extra"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKZ()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_aa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_83 .. :try_end_aa} :catch_186
    .catchall {:try_start_83 .. :try_end_aa} :catchall_180

    :goto_aa
    if-eqz v21, :cond_af

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_af
    move-object/from16 v2, v20

    goto :goto_82

    :cond_b2
    const/4 v2, 0x0

    :try_start_b3
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatj;->zzb(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_15a

    const/4 v11, 0x1

    :goto_da
    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x6

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/4 v4, 0x7

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzatq;

    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/16 v4, 0x9

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/internal/zzatq;

    const/16 v2, 0xa

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v2, 0xb

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    const/16 v19, 0xc

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    sget-object v22, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/internal/zzatq;

    new-instance v2, Lcom/google/android/gms/internal/zzauq;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzauq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/internal/zzatg;

    move-object v6, v8

    move-object v8, v2

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/internal/zzatg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_155
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b3 .. :try_end_155} :catch_186
    .catchall {:try_start_b3 .. :try_end_155} :catchall_180

    move-result v2

    if-nez v2, :cond_83

    goto/16 :goto_aa

    :cond_15a
    const/4 v11, 0x0

    goto/16 :goto_da

    :catch_15d
    move-exception v2

    move-object v3, v11

    :goto_15f
    :try_start_15f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Error querying conditional user property value"

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_16f
    .catchall {:try_start_15f .. :try_end_16f} :catchall_182

    move-result-object v2

    if-eqz v3, :cond_82

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_82

    :catchall_177
    move-exception v2

    move-object/from16 v21, v11

    :goto_17a
    if-eqz v21, :cond_17f

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_17f
    throw v2

    :catchall_180
    move-exception v2

    goto :goto_17a

    :catchall_182
    move-exception v2

    move-object/from16 v21, v3

    goto :goto_17a

    :catch_186
    move-exception v2

    move-object/from16 v3, v21

    goto :goto_15f
.end method

.method public zzd(Ljava/lang/String;[B)V
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "remote_config"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "apps"

    const-string v3, "app_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to update remote config (got 0). appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error storing remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3d
.end method

.method zzd(Ljava/lang/String;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    :try_start_f
    const-string v0, "select count(1) from audience_filter_values where app_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzb(Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_1a} :catch_29

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/zzati;->zzfo(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    cmp-long v0, v0, v6

    if-gtz v0, :cond_3c

    :cond_28
    :goto_28
    return v2

    :catch_29
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Database error querying filters. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28

    :cond_3c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_65

    move v1, v2

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_65

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_28

    instance-of v7, v0, Ljava/lang/Integer;

    if-eqz v7, :cond_28

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44

    :cond_65
    const-string v0, ","

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audience_filter_values"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, 0x8c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {v4, v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_28

    move v2, v3

    goto/16 :goto_28
.end method

.method public zzfA(Ljava/lang/String;)J
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    const-string v0, "first_open_count"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzatj;->zzX(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzfB(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_4
    const-string v1, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to remove unused event metadata. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public zzfC(Ljava/lang/String;)J
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatj;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzft(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaus;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "origin"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "set_timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "rowid"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzati;->zzKX()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_47} :catch_be
    .catchall {:try_start_f .. :try_end_47} :catchall_b1

    move-result-object v7

    :try_start_48
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_4b} :catch_97
    .catchall {:try_start_48 .. :try_end_4b} :catchall_b8

    move-result v0

    if-nez v0, :cond_55

    if-eqz v7, :cond_53

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_53
    move-object v0, v9

    :goto_54
    return-object v0

    :cond_55
    const/4 v0, 0x0

    :try_start_56
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_63

    const-string v2, ""

    :cond_63
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-virtual {p0, v7, v0}, Lcom/google/android/gms/internal/zzatj;->zzb(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Read invalid user property value, ignoring it. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_80
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_83
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_83} :catch_97
    .catchall {:try_start_56 .. :try_end_83} :catchall_b8

    move-result v0

    if-nez v0, :cond_55

    if-eqz v7, :cond_8b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8b
    move-object v0, v9

    goto :goto_54

    :cond_8d
    :try_start_8d
    new-instance v0, Lcom/google/android/gms/internal/zzaus;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8d .. :try_end_96} :catch_97
    .catchall {:try_start_8d .. :try_end_96} :catchall_b8

    goto :goto_80

    :catch_97
    move-exception v0

    move-object v1, v7

    :goto_99
    :try_start_99
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error querying user properties. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_aa
    .catchall {:try_start_99 .. :try_end_aa} :catchall_bb

    if-eqz v1, :cond_af

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_af
    move-object v0, v10

    goto :goto_54

    :catchall_b1
    move-exception v0

    :goto_b2
    if-eqz v10, :cond_b7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b7
    throw v0

    :catchall_b8
    move-exception v0

    move-object v10, v7

    goto :goto_b2

    :catchall_bb
    move-exception v0

    move-object v10, v1

    goto :goto_b2

    :catch_be
    move-exception v0

    move-object v1, v10

    goto :goto_99
.end method

.method public zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "apps"

    const/16 v2, 0x17

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_instance_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "gmp_app_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "resettable_device_id_hash"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "last_bundle_index"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "last_bundle_start_timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "last_bundle_end_timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "app_version"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "app_store"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "gmp_version"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "dev_cert_hash"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "measurement_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "day"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "daily_public_events_count"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "daily_events_count"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "daily_conversions_count"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "config_fetched_time"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "failed_config_fetch_time"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "app_version_int"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "firebase_instance_id"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "daily_error_events_count"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "daily_realtime_events_count"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "health_monitor_sample"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "android_id"

    aput-object v4, v2, v3

    const-string v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_a6} :catch_1cc
    .catchall {:try_start_c .. :try_end_a6} :catchall_1e7

    move-result-object v1

    :try_start_a7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_aa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a7 .. :try_end_aa} :catch_1f1
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_1ef

    move-result v0

    if-nez v0, :cond_b4

    if-eqz v1, :cond_b2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b2
    move-object v0, v8

    :cond_b3
    :goto_b3
    return-object v0

    :cond_b4
    :try_start_b4
    new-instance v0, Lcom/google/android/gms/internal/zzatc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzatj;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/zzatc;-><init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatc;->zzfd(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatc;->zzfe(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatc;->zzff(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzad(J)V

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzY(J)V

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzZ(J)V

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatc;->setAppVersion(Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatc;->zzfh(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzab(J)V

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzac(J)V

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1b2

    move v2, v9

    :goto_116
    if-eqz v2, :cond_1ba

    move v2, v9

    :goto_119
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatc;->setMeasurementEnabled(Z)V

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzag(J)V

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzah(J)V

    const/16 v2, 0xd

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzai(J)V

    const/16 v2, 0xe

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzaj(J)V

    const/16 v2, 0xf

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzae(J)V

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzaf(J)V

    const/16 v2, 0x11

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1bd

    const-wide/32 v2, -0x80000000

    :goto_15d
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzaa(J)V

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatc;->zzfg(Ljava/lang/String;)V

    const/16 v2, 0x13

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzal(J)V

    const/16 v2, 0x14

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzak(J)V

    const/16 v2, 0x15

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzatc;->zzfi(Ljava/lang/String;)V

    const/16 v2, 0x16

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1c5

    const-wide/16 v2, 0x0

    :goto_18e
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatc;->zzam(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatc;->zzKo()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1ab

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Got multiple records for app, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b4 .. :try_end_1ab} :catch_1f1
    .catchall {:try_start_b4 .. :try_end_1ab} :catchall_1ef

    :cond_1ab
    if-eqz v1, :cond_b3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b3

    :cond_1b2
    const/16 v2, 0xa

    :try_start_1b4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto/16 :goto_116

    :cond_1ba
    move v2, v10

    goto/16 :goto_119

    :cond_1bd
    const/16 v2, 0x11

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    goto :goto_15d

    :cond_1c5
    const/16 v2, 0x16

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1ca
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b4 .. :try_end_1ca} :catch_1f1
    .catchall {:try_start_1b4 .. :try_end_1ca} :catchall_1ef

    move-result-wide v2

    goto :goto_18e

    :catch_1cc
    move-exception v0

    move-object v1, v8

    :goto_1ce
    :try_start_1ce
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error querying app. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1df
    .catchall {:try_start_1ce .. :try_end_1df} :catchall_1ef

    if-eqz v1, :cond_1e4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1e4
    move-object v0, v8

    goto/16 :goto_b3

    :catchall_1e7
    move-exception v0

    move-object v1, v8

    :goto_1e9
    if-eqz v1, :cond_1ee

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1ee
    throw v0

    :catchall_1ef
    move-exception v0

    goto :goto_1e9

    :catch_1f1
    move-exception v0

    goto :goto_1ce
.end method

.method public zzfv(Ljava/lang/String;)J
    .registers 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzati;->zzfs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw_events"

    const-string v3, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_29} :catch_2c

    move-result v0

    int-to-long v0, v0

    :goto_2b
    return-wide v0

    :catch_2c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error deleting over the limit events. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_2b
.end method

.method public zzfw(Ljava/lang/String;)[B
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "apps"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "remote_config"

    aput-object v4, v2, v3

    const-string v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_26} :catch_56
    .catchall {:try_start_a .. :try_end_26} :catchall_70

    move-result-object v1

    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2a} :catch_7a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_78

    move-result v0

    if-nez v0, :cond_34

    if-eqz v1, :cond_32

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_32
    move-object v0, v8

    :cond_33
    :goto_33
    return-object v0

    :cond_34
    const/4 v0, 0x0

    :try_start_35
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Got multiple records for app config, expected one. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_50} :catch_7a
    .catchall {:try_start_35 .. :try_end_50} :catchall_78

    :cond_50
    if-eqz v1, :cond_33

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_33

    :catch_56
    move-exception v0

    move-object v1, v8

    :goto_58
    :try_start_58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error querying remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_78

    if-eqz v1, :cond_6e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6e
    move-object v0, v8

    goto :goto_33

    :catchall_70
    move-exception v0

    move-object v1, v8

    :goto_72
    if-eqz v1, :cond_77

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_77
    throw v0

    :catchall_78
    move-exception v0

    goto :goto_72

    :catch_7a
    move-exception v0

    goto :goto_58
.end method

.method zzfx(Ljava/lang/String;)V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "property_filters"

    const-string v2, "app_id=?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "event_filters"

    const-string v2, "app_id=?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method zzfy(Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/zzauw$zzf;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_e
    const-string v1, "audience_filter_values"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audience_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "current_results"

    aput-object v4, v2, v3

    const-string v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_2b} :catch_a1
    .catchall {:try_start_e .. :try_end_2b} :catchall_97

    move-result-object v1

    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_2f} :catch_7e
    .catchall {:try_start_2c .. :try_end_2f} :catchall_9f

    move-result v0

    if-nez v0, :cond_39

    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_37
    move-object v0, v8

    :cond_38
    :goto_38
    return-object v0

    :cond_39
    :try_start_39
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_3e
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbxl;->zzaf([B)Lcom/google/android/gms/internal/zzbxl;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzauw$zzf;-><init>()V
    :try_end_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_51} :catch_7e
    .catchall {:try_start_39 .. :try_end_51} :catchall_9f

    :try_start_51
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzauw$zzf;->zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_51 .. :try_end_54} :catch_7e
    .catchall {:try_start_51 .. :try_end_54} :catchall_9f

    :try_start_54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_54 .. :try_end_5e} :catch_7e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_9f

    move-result v2

    if-nez v2, :cond_3e

    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_38

    :catch_67
    move-exception v3

    :try_start_68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Failed to merge filter results. appId, audienceId, error"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_7d} :catch_7e
    .catchall {:try_start_68 .. :try_end_7d} :catchall_9f

    goto :goto_5b

    :catch_7e
    move-exception v0

    :goto_7f
    :try_start_7f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Database error querying filter results. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_90
    .catchall {:try_start_7f .. :try_end_90} :catchall_9f

    if-eqz v1, :cond_95

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_95
    move-object v0, v8

    goto :goto_38

    :catchall_97
    move-exception v0

    move-object v1, v8

    :goto_99
    if-eqz v1, :cond_9e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9e
    throw v0

    :catchall_9f
    move-exception v0

    goto :goto_99

    :catch_a1
    move-exception v0

    move-object v1, v8

    goto :goto_7f
.end method

.method zzfz(Ljava/lang/String;)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "events"

    const-string v3, "app_id=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    const-string v3, "user_attributes"

    const-string v4, "app_id=?"

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "conditional_properties"

    const-string v4, "app_id=?"

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "apps"

    const-string v4, "app_id=?"

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "raw_events"

    const-string v4, "app_id=?"

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "raw_events_metadata"

    const-string v4, "app_id=?"

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "event_filters"

    const-string v4, "app_id=?"

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "property_filters"

    const-string v4, "app_id=?"

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "audience_filter_values"

    const-string v4, "app_id=?"

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    if-lez v0, :cond_78

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMe()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Deleted application data. app, records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_78} :catch_79

    :cond_78
    :goto_78
    return-void

    :catch_79
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error deleting application data. appId, error"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_78
.end method

.method public zzh(Ljava/lang/String;J)Ljava/util/List;
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Invalid time querying timed out conditional properties"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    const-string v0, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_28
.end method

.method public zzi(Ljava/lang/String;J)Ljava/util/List;
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Invalid time querying expired conditional properties"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    const-string v0, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzatj;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_28
.end method

.method public zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaus;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_f
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, " and origin=?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, " and name glob ?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "set_timestamp"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "value"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "origin"

    aput-object v6, v2, v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "rowid"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzati;->zzKX()I

    const/16 v8, 0x3e9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_86
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_86} :catch_124
    .catchall {:try_start_f .. :try_end_86} :catchall_117

    move-result-object v7

    :try_start_87
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_87 .. :try_end_8a} :catch_127
    .catchall {:try_start_87 .. :try_end_8a} :catchall_11e

    move-result v0

    if-nez v0, :cond_95

    if-eqz v7, :cond_92

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_92
    move-object v0, v9

    :goto_93
    return-object v0

    :cond_94
    move-object p2, v2

    :cond_95
    :try_start_95
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzKX()I

    move-result v1

    if-lt v0, v1, :cond_c3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Read more than the max allowed user properties, ignoring excess"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_bc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_95 .. :try_end_bc} :catch_127
    .catchall {:try_start_95 .. :try_end_bc} :catchall_11e

    :goto_bc
    if-eqz v7, :cond_c1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c1
    move-object v0, v9

    goto :goto_93

    :cond_c3
    const/4 v0, 0x0

    :try_start_c4
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-virtual {p0, v7, v0}, Lcom/google/android/gms/internal/zzatj;->zzb(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v6

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_d6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c4 .. :try_end_d6} :catch_127
    .catchall {:try_start_c4 .. :try_end_d6} :catchall_11e

    move-result-object v2

    if-nez v6, :cond_f1

    :try_start_d9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "(2)Read invalid user property value, ignoring it"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_ea
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_94

    goto :goto_bc

    :cond_f1
    new-instance v0, Lcom/google/android/gms/internal/zzaus;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d9 .. :try_end_fa} :catch_fb
    .catchall {:try_start_d9 .. :try_end_fa} :catchall_11e

    goto :goto_ea

    :catch_fb
    move-exception v0

    move-object v1, v7

    move-object p2, v2

    :goto_fe
    :try_start_fe
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "(2)Error querying user properties"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10f
    .catchall {:try_start_fe .. :try_end_10f} :catchall_121

    if-eqz v1, :cond_114

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_114
    move-object v0, v10

    goto/16 :goto_93

    :catchall_117
    move-exception v0

    :goto_118
    if-eqz v10, :cond_11d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11d
    throw v0

    :catchall_11e
    move-exception v0

    move-object v10, v7

    goto :goto_118

    :catchall_121
    move-exception v0

    move-object v10, v1

    goto :goto_118

    :catch_124
    move-exception v0

    move-object v1, v10

    goto :goto_fe

    :catch_127
    move-exception v0

    move-object v1, v7

    goto :goto_fe
.end method

.method public zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzatg;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "app_id=?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, " and origin=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, " and name glob ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzatj;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected zzmS()V
    .registers 1

    return-void
.end method

.method public zzn(Ljava/lang/String;II)Ljava/util/List;
    .registers 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/gms/internal/zzauw$zze;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    if-lez p2, :cond_4e

    move v0, v1

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    if-lez p3, :cond_50

    :goto_11
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "queue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rowid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data"

    aput-object v4, v2, v3

    const-string v3, "app_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "rowid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_3d} :catch_ef
    .catchall {:try_start_17 .. :try_end_3d} :catchall_e2

    move-result-object v2

    :try_start_3e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_47} :catch_b1
    .catchall {:try_start_3e .. :try_end_47} :catchall_ea

    move-result-object v0

    if-eqz v2, :cond_4d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4d
    :goto_4d
    return-object v0

    :cond_4e
    move v0, v9

    goto :goto_c

    :cond_50
    move v1, v9

    goto :goto_11

    :cond_52
    :try_start_52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v9

    :goto_58
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_5c} :catch_b1
    .catchall {:try_start_52 .. :try_end_5c} :catchall_ea

    move-result-wide v4

    const/4 v1, 0x1

    :try_start_5e
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/zzaut;->zzx([B)[B
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_69} :catch_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5e .. :try_end_69} :catch_b1
    .catchall {:try_start_5e .. :try_end_69} :catchall_ea

    move-result-object v1

    :try_start_6a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_97

    array-length v6, v1
    :try_end_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_71} :catch_b1
    .catchall {:try_start_6a .. :try_end_71} :catchall_ea

    add-int/2addr v6, v3

    if-le v6, p3, :cond_97

    :cond_74
    if-eqz v2, :cond_4d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4d

    :catch_7a
    move-exception v1

    :try_start_7b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Failed to unzip queued bundle. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v3

    :goto_8d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_74

    if-gt v1, p3, :cond_74

    move v3, v1

    goto :goto_58

    :cond_97
    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxl;->zzaf([B)Lcom/google/android/gms/internal/zzbxl;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/zzauw$zze;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzauw$zze;-><init>()V
    :try_end_a0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7b .. :try_end_a0} :catch_b1
    .catchall {:try_start_7b .. :try_end_a0} :catchall_ea

    :try_start_a0
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzauw$zze;->zzb(Lcom/google/android/gms/internal/zzbxl;)Lcom/google/android/gms/internal/zzbxt;
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_ce
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a0 .. :try_end_a3} :catch_b1
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_ea

    :try_start_a3
    array-length v1, v1

    add-int/2addr v1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a3 .. :try_end_b0} :catch_b1
    .catchall {:try_start_a3 .. :try_end_b0} :catchall_ea

    goto :goto_8d

    :catch_b1
    move-exception v0

    move-object v1, v2

    :goto_b3
    :try_start_b3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error querying bundles. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_c7
    .catchall {:try_start_b3 .. :try_end_c7} :catchall_ec

    move-result-object v0

    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4d

    :catch_ce
    move-exception v1

    :try_start_cf
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Failed to merge queued bundle. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_cf .. :try_end_e0} :catch_b1
    .catchall {:try_start_cf .. :try_end_e0} :catchall_ea

    move v1, v3

    goto :goto_8d

    :catchall_e2
    move-exception v0

    move-object v2, v10

    :goto_e4
    if-eqz v2, :cond_e9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e9
    throw v0

    :catchall_ea
    move-exception v0

    goto :goto_e4

    :catchall_ec
    move-exception v0

    move-object v2, v1

    goto :goto_e4

    :catch_ef
    move-exception v0

    move-object v1, v10

    goto :goto_b3
.end method

.method zzow()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzpv()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzz(Ljava/lang/String;I)V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzob()V

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatj;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error pruning currencies. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_22
.end method

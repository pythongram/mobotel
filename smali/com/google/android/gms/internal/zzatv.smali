.class public Lcom/google/android/gms/internal/zzatv;
.super Lcom/google/android/gms/internal/zzauh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzatv$zza;
    }
.end annotation


# instance fields
.field private final zzbsx:Lcom/google/android/gms/internal/zzatv$zza;

.field private zzbsy:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance v0, Lcom/google/android/gms/internal/zzatv$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzow()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzatv$zza;-><init>(Lcom/google/android/gms/internal/zzatv;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbsx:Lcom/google/android/gms/internal/zzatv$zza;

    return-void
.end method

.method private zza(I[B)Z
    .registers 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJW()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzmR()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbsy:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    invoke-virtual {v6, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLp()I

    const/4 v0, 0x0

    move v3, v0

    move v0, v1

    :goto_2a
    const/4 v1, 0x5

    if-ge v3, v1, :cond_10d

    const/4 v2, 0x0

    :try_start_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_3e

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbsy:Z
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2e .. :try_end_37} :catch_b8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_37} :catch_d3
    .catchall {:try_start_2e .. :try_end_37} :catchall_106

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3c
    const/4 v0, 0x0

    goto :goto_b

    :cond_3e
    :try_start_3e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v4, 0x0

    const-string v1, "select count(1) from messages"

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_57

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :cond_57
    const-wide/32 v8, 0x186a0

    cmp-long v1, v4, v8

    if-ltz v1, :cond_a4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v7, "Data loss, local db full"

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    const-wide/32 v8, 0x186a0

    sub-long v4, v8, v4

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    const-string v1, "messages"

    const-string v7, "rowid in (select rowid from messages order by rowid asc limit ?)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v8, v4

    if-eqz v1, :cond_a4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v7, "Different delete count than expected in local db. expected, received, difference"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v7, v10, v11, v4}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a4
    const-string v1, "messages"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3e .. :try_end_b0} :catch_b8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_b0} :catch_d3
    .catchall {:try_start_3e .. :try_end_b0} :catchall_106

    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b5
    const/4 v0, 0x1

    goto/16 :goto_b

    :catch_b8
    move-exception v1

    :try_start_b9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Error writing entry to local database"

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbsy:Z
    :try_end_c9
    .catchall {:try_start_b9 .. :try_end_c9} :catchall_106

    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_ce
    :goto_ce
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2a

    :catch_d3
    move-exception v1

    :try_start_d4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_ea

    instance-of v4, v1, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v4, :cond_ea

    int-to-long v4, v0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_e2
    .catchall {:try_start_d4 .. :try_end_e2} :catchall_106

    add-int/lit8 v0, v0, 0x14

    :goto_e4
    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_ce

    :cond_ea
    if-eqz v2, :cond_f5

    :try_start_ec
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_f5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_f5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Error writing entry to local database"

    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbsy:Z
    :try_end_105
    .catchall {:try_start_ec .. :try_end_105} :catchall_106

    goto :goto_e4

    :catchall_106
    move-exception v0

    if-eqz v2, :cond_10c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10c
    throw v0

    :cond_10d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to write entry to local database"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_b
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbsy:Z

    if-eqz v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbsx:Lcom/google/android/gms/internal/zzatv$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatv$zza;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbsy:Z

    goto :goto_7

    :cond_14
    move-object v0, v1

    goto :goto_7
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

.method zzLM()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzatq;)Z
    .registers 6

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzatq;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    array-length v1, v2

    const/high16 v3, 0x20000

    if-le v1, v3, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Event is too long for local database. Sending event directly to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_23
    return v0

    :cond_24
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzatv;->zza(I[B)Z

    move-result v0

    goto :goto_23
.end method

.method public zza(Lcom/google/android/gms/internal/zzauq;)Z
    .registers 6

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzauq;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    array-length v1, v2

    const/high16 v3, 0x20000

    if-le v1, v3, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "User property too long for local database. Sending directly to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzatv;->zza(I[B)Z

    move-result v0

    goto :goto_23
.end method

.method public zzc(Lcom/google/android/gms/internal/zzatg;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Parcelable;)[B

    move-result-object v0

    array-length v1, v0

    const/high16 v2, 0x20000

    if-le v1, v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Conditional user property too long for local database. Sending directly to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzatv;->zza(I[B)Z

    move-result v0

    goto :goto_1d
.end method

.method public zzlD(I)Ljava/util/List;
    .registers 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/internal/safeparcel/zza;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzJW()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbsy:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzLM()Z

    move-result v0

    if-nez v0, :cond_1b

    move-object v0, v10

    goto :goto_d

    :cond_1b
    const/4 v9, 0x5

    const/4 v0, 0x0

    move v11, v0

    :goto_1e
    const/4 v0, 0x5

    if-ge v11, v0, :cond_1c3

    const/4 v1, 0x0

    :try_start_22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_22 .. :try_end_25} :catch_1d9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_25} :catch_1d6
    .catchall {:try_start_22 .. :try_end_25} :catchall_1d3

    move-result-object v0

    if-nez v0, :cond_32

    const/4 v1, 0x1

    :try_start_29
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzatv;->zzbsy:Z
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_29 .. :try_end_2b} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2b} :catch_e9
    .catchall {:try_start_29 .. :try_end_2b} :catchall_11b

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_30
    const/4 v0, 0x0

    goto :goto_d

    :cond_32
    :try_start_32
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "messages"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rowid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "entry"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "rowid asc"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-wide/16 v2, -0x1

    :goto_59
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_16f

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-nez v1, :cond_c7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_73
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_32 .. :try_end_73} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_73} :catch_e9
    .catchall {:try_start_32 .. :try_end_73} :catchall_11b

    move-result-object v2

    const/4 v1, 0x0

    :try_start_75
    array-length v7, v3

    invoke-virtual {v2, v3, v1, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzatq;
    :try_end_85
    .catch Lcom/google/android/gms/common/internal/safeparcel/zzb$zza; {:try_start_75 .. :try_end_85} :catch_8f
    .catchall {:try_start_75 .. :try_end_85} :catchall_a2

    :try_start_85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    if-eqz v1, :cond_8d

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_85 .. :try_end_8d} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_85 .. :try_end_8d} :catch_e9
    .catchall {:try_start_85 .. :try_end_8d} :catchall_11b

    :cond_8d
    :goto_8d
    move-wide v2, v4

    goto :goto_59

    :catch_8f
    move-exception v1

    :try_start_90
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Failed to load event from local database"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_90 .. :try_end_9d} :catchall_a2

    :try_start_9d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move-wide v2, v4

    goto :goto_59

    :catchall_a2
    move-exception v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_a7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9d .. :try_end_a7} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9d .. :try_end_a7} :catch_e9
    .catchall {:try_start_9d .. :try_end_a7} :catchall_11b

    :catch_a7
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_ab
    :try_start_ab
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error reading entries from local database"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbsy:Z
    :try_end_bb
    .catchall {:try_start_ab .. :try_end_bb} :catchall_1d3

    if-eqz v1, :cond_1dc

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v9

    :cond_c1
    :goto_c1
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    move v9, v0

    goto/16 :goto_1e

    :cond_c7
    const/4 v2, 0x1

    if-ne v1, v2, :cond_125

    :try_start_ca
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_cd
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ca .. :try_end_cd} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ca .. :try_end_cd} :catch_e9
    .catchall {:try_start_ca .. :try_end_cd} :catchall_11b

    move-result-object v7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_d0
    array-length v8, v3

    invoke-virtual {v7, v3, v1, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzauq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzauq;
    :try_end_e0
    .catch Lcom/google/android/gms/common/internal/safeparcel/zzb$zza; {:try_start_d0 .. :try_end_e0} :catch_103
    .catchall {:try_start_d0 .. :try_end_e0} :catchall_116

    :try_start_e0
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    :goto_e3
    if-eqz v1, :cond_8d

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e0 .. :try_end_e8} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e0 .. :try_end_e8} :catch_e9
    .catchall {:try_start_e0 .. :try_end_e8} :catchall_11b

    goto :goto_8d

    :catch_e9
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_ed
    :try_start_ed
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1a5

    instance-of v2, v0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v2, :cond_1a5

    int-to-long v2, v9

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_fb
    .catchall {:try_start_ed .. :try_end_fb} :catchall_1d3

    add-int/lit8 v0, v9, 0x14

    :goto_fd
    if-eqz v1, :cond_c1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_c1

    :catch_103
    move-exception v1

    :try_start_104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Failed to load user property from local database"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_111
    .catchall {:try_start_104 .. :try_end_111} :catchall_116

    :try_start_111
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v1, v2

    goto :goto_e3

    :catchall_116
    move-exception v1

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_11b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_111 .. :try_end_11b} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_111 .. :try_end_11b} :catch_e9
    .catchall {:try_start_111 .. :try_end_11b} :catchall_11b

    :catchall_11b
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_11f
    if-eqz v1, :cond_124

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_124
    throw v0

    :cond_125
    const/4 v2, 0x2

    if-ne v1, v2, :cond_160

    :try_start_128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_12b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_128 .. :try_end_12b} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_128 .. :try_end_12b} :catch_e9
    .catchall {:try_start_128 .. :try_end_12b} :catchall_11b

    move-result-object v7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_12e
    array-length v8, v3

    invoke-virtual {v7, v3, v1, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzatg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzatg;
    :try_end_13e
    .catch Lcom/google/android/gms/common/internal/safeparcel/zzb$zza; {:try_start_12e .. :try_end_13e} :catch_148
    .catchall {:try_start_12e .. :try_end_13e} :catchall_15b

    :try_start_13e
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    :goto_141
    if-eqz v1, :cond_8d

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_146
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13e .. :try_end_146} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13e .. :try_end_146} :catch_e9
    .catchall {:try_start_13e .. :try_end_146} :catchall_11b

    goto/16 :goto_8d

    :catch_148
    move-exception v1

    :try_start_149
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v3, "Failed to load user property from local database"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_156
    .catchall {:try_start_149 .. :try_end_156} :catchall_15b

    :try_start_156
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    move-object v1, v2

    goto :goto_141

    :catchall_15b
    move-exception v1

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_160
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Unknown record type in local database"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    goto/16 :goto_8d

    :cond_16f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-string v1, "messages"

    const-string v4, "rowid <= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_197

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Fewer entries removed from local database than expected"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_197
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_19d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_156 .. :try_end_19d} :catch_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_156 .. :try_end_19d} :catch_e9
    .catchall {:try_start_156 .. :try_end_19d} :catchall_11b

    if-eqz v0, :cond_1a2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1a2
    move-object v0, v10

    goto/16 :goto_d

    :cond_1a5
    if-eqz v1, :cond_1b0

    :try_start_1a7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_1b0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1b0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Error reading entries from local database"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatv;->zzbsy:Z
    :try_end_1c0
    .catchall {:try_start_1a7 .. :try_end_1c0} :catchall_1d3

    move v0, v9

    goto/16 :goto_fd

    :cond_1c3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_d

    :catchall_1d3
    move-exception v0

    goto/16 :goto_11f

    :catch_1d6
    move-exception v0

    goto/16 :goto_ed

    :catch_1d9
    move-exception v0

    goto/16 :goto_ab

    :cond_1dc
    move v0, v9

    goto/16 :goto_c1
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

.method zzow()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzatv;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

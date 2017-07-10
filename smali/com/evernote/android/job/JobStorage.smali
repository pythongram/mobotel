.class Lcom/evernote/android/job/JobStorage;
.super Ljava/lang/Object;
.source "JobStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/JobStorage$JobOpenHelper;,
        Lcom/evernote/android/job/JobStorage$JobCacheId;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x1e

.field private static final CAT:Lnet/vrallev/android/cat/CatLog;

.field public static final COLUMN_BACKOFF_MS:Ljava/lang/String; = "backoffMs"

.field public static final COLUMN_BACKOFF_POLICY:Ljava/lang/String; = "backoffPolicy"

.field public static final COLUMN_END_MS:Ljava/lang/String; = "endMs"

.field public static final COLUMN_EXACT:Ljava/lang/String; = "exact"

.field public static final COLUMN_EXTRAS:Ljava/lang/String; = "extras"

.field public static final COLUMN_FLEX_MS:Ljava/lang/String; = "flexMs"

.field public static final COLUMN_FLEX_SUPPORT:Ljava/lang/String; = "flexSupport"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_INTERVAL_MS:Ljava/lang/String; = "intervalMs"

.field public static final COLUMN_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final COLUMN_NUM_FAILURES:Ljava/lang/String; = "numFailures"

.field public static final COLUMN_PERSISTED:Ljava/lang/String; = "persisted"

.field public static final COLUMN_REQUIREMENTS_ENFORCED:Ljava/lang/String; = "requirementsEnforced"

.field public static final COLUMN_REQUIRES_CHARGING:Ljava/lang/String; = "requiresCharging"

.field public static final COLUMN_REQUIRES_DEVICE_IDLE:Ljava/lang/String; = "requiresDeviceIdle"

.field public static final COLUMN_SCHEDULED_AT:Ljava/lang/String; = "scheduledAt"

.field public static final COLUMN_START_MS:Ljava/lang/String; = "startMs"

.field public static final COLUMN_TAG:Ljava/lang/String; = "tag"

.field public static final COLUMN_TRANSIENT:Ljava/lang/String; = "isTransient"

.field public static final DATABASE_NAME:Ljava/lang/String; = "evernote_jobs.db"

.field public static final DATABASE_VERSION:I = 0x3

.field private static final JOB_ID_COUNTER:Ljava/lang/String; = "JOB_ID_COUNTER"

.field public static final JOB_TABLE_NAME:Ljava/lang/String; = "jobs"

.field public static final PREF_FILE_NAME:Ljava/lang/String; = "evernote_jobs"

.field private static final WHERE_NOT_TRANSIENT:Ljava/lang/String; = "ifnull(isTransient, 0)<=0"


# instance fields
.field private final mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDbHelper:Lcom/evernote/android/job/JobStorage$JobOpenHelper;

.field private final mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobStorage"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v1, "evernote_jobs"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mPreferences:Landroid/content/SharedPreferences;

    .line 98
    new-instance v1, Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-direct {v1, p0}, Lcom/evernote/android/job/JobStorage$JobCacheId;-><init>(Lcom/evernote/android/job/JobStorage;)V

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    .line 100
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "JOB_ID_COUNTER"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "lastJobId":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    new-instance v1, Lcom/evernote/android/job/JobStorage$JobOpenHelper;

    invoke-direct {v1, p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;-><init>(Lcom/evernote/android/job/JobStorage;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mDbHelper:Lcom/evernote/android/job/JobStorage$JobOpenHelper;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/evernote/android/job/JobStorage;IZ)Lcom/evernote/android/job/JobRequest;
    .registers 4
    .param p0, "x0"    # Lcom/evernote/android/job/JobStorage;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/JobStorage;->load(IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    return-object v0
.end method

.method private getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_12

    .line 235
    monitor-enter p0

    .line 236
    :try_start_5
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_11

    .line 237
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDbHelper:Lcom/evernote/android/job/JobStorage$JobOpenHelper;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 239
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_15

    .line 241
    :cond_12
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 239
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private load(IZ)Lcom/evernote/android/job/JobRequest;
    .registers 14
    .param p1, "id"    # I
    .param p2, "includeTransient"    # Z

    .prologue
    const/4 v10, 0x0

    .line 209
    const/4 v8, 0x0

    .line 211
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v3, "_id=?"

    .line 212
    .local v3, "where":Ljava/lang/String;
    if-nez p2, :cond_19

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND isTransient<=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    :cond_19
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "jobs"

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 217
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 218
    invoke-static {v8}, Lcom/evernote/android/job/JobRequest;->fromCursor(Landroid/database/Cursor;)Lcom/evernote/android/job/JobRequest;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_48
    .catchall {:try_start_2 .. :try_end_3a} :catchall_60

    move-result-object v0

    .line 225
    if-eqz v8, :cond_40

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 230
    .end local v3    # "where":Ljava/lang/String;
    :cond_40
    :goto_40
    return-object v0

    .line 225
    .restart local v3    # "where":Ljava/lang/String;
    :cond_41
    if-eqz v8, :cond_46

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v3    # "where":Ljava/lang/String;
    :cond_46
    :goto_46
    move-object v0, v10

    .line 230
    goto :goto_40

    .line 221
    :catch_48
    move-exception v9

    .line 222
    .local v9, "e":Ljava/lang/Exception;
    :try_start_49
    sget-object v0, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "could not load id %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v9, v1, v2}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_60

    .line 225
    if-eqz v8, :cond_46

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .line 225
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_60
    move-exception v0

    if-eqz v8, :cond_66

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_66
    throw v0
.end method

.method private store(Lcom/evernote/android/job/JobRequest;)V
    .registers 8
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 202
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "jobs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 206
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :goto_e
    return-void

    .line 203
    :catch_f
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v3, "could not store %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v1, v3, v4}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e
.end method

.method private updateRequestInCache(Lcom/evernote/android/job/JobRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/evernote/android/job/JobStorage$JobCacheId;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method


# virtual methods
.method public declared-synchronized get(I)Lcom/evernote/android/job/JobRequest;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobStorage$JobCacheId;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/JobRequest;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllJobRequests(Ljava/lang/String;Z)Ljava/util/Set;
    .registers 16
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "includeTransient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 130
    monitor-enter p0

    :try_start_2
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_91

    .line 132
    .local v12, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/JobRequest;>;"
    const/4 v9, 0x0

    .line 136
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 137
    if-eqz p2, :cond_5e

    .line 138
    .local v3, "where":Ljava/lang/String;
    :goto_10
    const/4 v4, 0x0

    .line 145
    .local v4, "args":[Ljava/lang/String;
    :goto_11
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "jobs"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 148
    new-instance v8, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage$JobCacheId;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 150
    .local v8, "cachedRequests":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/evernote/android/job/JobRequest;>;"
    :goto_2a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 152
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 153
    .local v11, "id":Ljava/lang/Integer;
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 154
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4b} :catch_4c
    .catchall {:try_start_8 .. :try_end_4b} :catchall_8a

    goto :goto_2a

    .line 159
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v8    # "cachedRequests":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/evernote/android/job/JobRequest;>;"
    .end local v11    # "id":Ljava/lang/Integer;
    :catch_4c
    move-exception v10

    .line 160
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4d
    sget-object v0, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "could not load all jobs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v1, v2}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_8a

    .line 163
    if-eqz v9, :cond_5c

    .line 164
    :try_start_59
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_91

    .line 168
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    monitor-exit p0

    return-object v12

    .line 137
    :cond_5e
    :try_start_5e
    const-string v3, "ifnull(isTransient, 0)<=0"

    goto :goto_10

    .line 140
    :cond_61
    if-eqz p2, :cond_7f

    const-string v3, ""

    .line 141
    .restart local v3    # "where":Ljava/lang/String;
    :goto_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tag=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .restart local v4    # "args":[Ljava/lang/String;
    goto :goto_11

    .line 140
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    :cond_7f
    const-string v3, "ifnull(isTransient, 0)<=0 AND "

    goto :goto_65

    .line 156
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v8    # "cachedRequests":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/evernote/android/job/JobRequest;>;"
    .restart local v11    # "id":Ljava/lang/Integer;
    :cond_82
    invoke-static {v9}, Lcom/evernote/android/job/JobRequest;->fromCursor(Landroid/database/Cursor;)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_89} :catch_4c
    .catchall {:try_start_5e .. :try_end_89} :catchall_8a

    goto :goto_2a

    .line 163
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v8    # "cachedRequests":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/evernote/android/job/JobRequest;>;"
    .end local v11    # "id":Ljava/lang/Integer;
    :catchall_8a
    move-exception v0

    if-eqz v9, :cond_90

    .line 164
    :try_start_8d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_90
    throw v0
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_91

    .line 130
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/JobRequest;>;"
    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v8    # "cachedRequests":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/evernote/android/job/JobRequest;>;"
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/JobRequest;>;"
    :cond_94
    if-eqz v9, :cond_5c

    .line 164
    :try_start_96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_91

    goto :goto_5c
.end method

.method public declared-synchronized nextJobId()I
    .registers 4

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 183
    .local v0, "id":I
    if-gez v0, :cond_f

    .line 188
    const/4 v0, 0x1

    .line 189
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 192
    :cond_f
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "JOB_ID_COUNTER"

    .line 193
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 196
    monitor-exit p0

    return v0

    .line 181
    .end local v0    # "id":I
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Lcom/evernote/android/job/JobRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage;->updateRequestInCache(Lcom/evernote/android/job/JobRequest;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage;->store(Lcom/evernote/android/job/JobRequest;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 110
    monitor-exit p0

    return-void

    .line 107
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/evernote/android/job/JobRequest;)V
    .registers 9
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 172
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/JobStorage$JobCacheId;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_38

    .line 174
    :try_start_e
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "jobs"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_29
    .catchall {:try_start_e .. :try_end_27} :catchall_38

    .line 178
    :goto_27
    monitor-exit p0

    return-void

    .line 175
    :catch_29
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2a
    sget-object v1, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v2, "could not delete %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_38

    goto :goto_27

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized update(Lcom/evernote/android/job/JobRequest;Landroid/content/ContentValues;)V
    .registers 10
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage;->updateRequestInCache(Lcom/evernote/android/job/JobRequest;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2e

    .line 115
    :try_start_4
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "jobs"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1f
    .catchall {:try_start_4 .. :try_end_1d} :catchall_2e

    .line 119
    :goto_1d
    monitor-exit p0

    return-void

    .line 116
    :catch_1f
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    sget-object v1, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v2, "could not update %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2e

    goto :goto_1d

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

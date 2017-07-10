.class public Lorg/telegram/SQLite/DatabaseHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHandler.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "favourites"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final KEY_CHAT_ID:Ljava/lang/String; = "chat_id"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final TABLE_FAVS:Ljava/lang/String; = "tbl_favs"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string v0, "favourites"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public addFavourite(Lorg/telegram/ui/Components/Favourite;)V
    .registers 8
    .param p1, "paramFavourite"    # Lorg/telegram/ui/Components/Favourite;

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/telegram/SQLite/DatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 28
    .local v1, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .local v0, "localContentValues":Landroid/content/ContentValues;
    const-string v2, "chat_id"

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Favourite;->getChatID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    const-string v2, "tbl_favs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 31
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 32
    return-void
.end method

.method public deleteFavourite(Ljava/lang/Long;)V
    .registers 6
    .param p1, "paramLong"    # Ljava/lang/Long;

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/telegram/SQLite/DatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 37
    .local v1, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 38
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 39
    const-string v2, "tbl_favs"

    const-string v3, "chat_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 41
    return-void
.end method

.method public getFavouriteByChatId(J)Lorg/telegram/ui/Components/Favourite;
    .registers 16
    .param p1, "paramLong"    # J

    .prologue
    const/4 v11, 0x0

    .line 45
    invoke-virtual {p0}, Lorg/telegram/SQLite/DatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 46
    .local v0, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 49
    .local v8, "localCursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_7
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "chat_id"

    aput-object v3, v2, v1

    .line 50
    .local v2, "arrayOfString1":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 51
    .local v4, "arrayOfString2":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    .line 52
    const-string v1, "tbl_favs"

    const-string v3, "chat_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 53
    if-eqz v8, :cond_40

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 55
    new-instance v10, Lorg/telegram/ui/Components/Favourite;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v10, v6, v7}, Lorg/telegram/ui/Components/Favourite;-><init>(J)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_47
    .catchall {:try_start_7 .. :try_end_3a} :catchall_59

    .line 69
    .local v10, "localFavourite":Lorg/telegram/ui/Components/Favourite;
    if-eqz v8, :cond_3f

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 65
    .end local v2    # "arrayOfString1":[Ljava/lang/String;
    .end local v4    # "arrayOfString2":[Ljava/lang/String;
    .end local v10    # "localFavourite":Lorg/telegram/ui/Components/Favourite;
    :cond_3f
    :goto_3f
    return-object v10

    .line 69
    .restart local v2    # "arrayOfString1":[Ljava/lang/String;
    .restart local v4    # "arrayOfString2":[Ljava/lang/String;
    :cond_40
    if-eqz v8, :cond_45

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_45
    move-object v10, v11

    .line 58
    goto :goto_3f

    .line 60
    .end local v2    # "arrayOfString1":[Ljava/lang/String;
    .end local v4    # "arrayOfString2":[Ljava/lang/String;
    :catch_47
    move-exception v9

    .line 62
    .local v9, "localException":Ljava/lang/Exception;
    if-eqz v8, :cond_4d

    .line 63
    :try_start_4a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_4d
    const-string v1, "tmessages"

    invoke-static {v1, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_59

    .line 69
    if-eqz v8, :cond_57

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_57
    move-object v10, v11

    .line 65
    goto :goto_3f

    .line 69
    .end local v9    # "localException":Ljava/lang/Exception;
    :catchall_59
    move-exception v1

    if-eqz v8, :cond_5f

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 76
    const-string v0, "CREATE TABLE tbl_favs(id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I

    .prologue
    .line 81
    const-string v0, "DROP TABLE IF EXISTS tbl_favs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lorg/telegram/SQLite/DatabaseHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    return-void
.end method

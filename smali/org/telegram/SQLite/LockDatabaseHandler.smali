.class public Lorg/telegram/SQLite/LockDatabaseHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockDatabaseHandler.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locked"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final KEY_CHAT_ID:Ljava/lang/String; = "chat_id"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final TABLE_LOCkS:Ljava/lang/String; = "tbl_lock"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 17
    const-string v0, "locked"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public deletelock(Ljava/lang/Long;)V
    .registers 6
    .param p1, "paramLong"    # Ljava/lang/Long;

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/telegram/SQLite/LockDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 25
    .local v1, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 26
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 27
    const-string v2, "tbl_lock"

    const-string v3, "chat_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 28
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 29
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 34
    const-string v0, "CREATE TABLE tbl_lock(id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onDrop(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 44
    const-string v0, "DROP TABLE IF EXISTS tbl_lock"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I

    .prologue
    .line 39
    const-string v0, "DROP TABLE IF EXISTS tbl_lock"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lorg/telegram/SQLite/LockDatabaseHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    return-void
.end method

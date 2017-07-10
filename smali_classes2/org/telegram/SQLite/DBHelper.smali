.class public Lorg/telegram/SQLite/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static DB_NAME:Ljava/lang/String;

.field private static DB_VERSION:I


# instance fields
.field private DB_PATH:Ljava/lang/String;

.field private sqLite:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "thedb"

    sput-object v0, Lorg/telegram/SQLite/DBHelper;->DB_NAME:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    sput v0, Lorg/telegram/SQLite/DBHelper;->DB_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 18
    sget-object v0, Lorg/telegram/SQLite/DBHelper;->DB_NAME:Ljava/lang/String;

    sget v1, Lorg/telegram/SQLite/DBHelper;->DB_VERSION:I

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 11
    iput-object v2, p0, Lorg/telegram/SQLite/DBHelper;->DB_PATH:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/SQLite/DBHelper;->DB_PATH:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public addFM(JI)V
    .registers 5
    .param p1, "dialogId"    # J
    .param p3, "messageId"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/SQLite/TableFM;->addFM(JILandroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    return-void
.end method

.method public addPM(II)V
    .registers 4
    .param p1, "messageId"    # I
    .param p2, "catId"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2, v0}, Lorg/telegram/SQLite/TablePM;->addPM(IILandroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    return-void
.end method

.method public addPMCategory(Ljava/lang/String;)V
    .registers 3
    .param p1, "catName"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TablePMCategory;->addCategory(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    return-void
.end method

.method public changePMCategory(II)V
    .registers 4
    .param p1, "messageId"    # I
    .param p2, "catId"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2, v0}, Lorg/telegram/SQLite/TablePM;->changePMCategory(IILandroid/database/sqlite/SQLiteDatabase;)V

    .line 164
    return-void
.end method

.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_a

    .line 48
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 50
    :cond_a
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 51
    monitor-exit p0

    return-void

    .line 47
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteAllFMs()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/telegram/SQLite/TableFM;->deleteAllFMs(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    return-void
.end method

.method public deleteAllPMs()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/telegram/SQLite/TablePM;->deleteAllPMs(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    return-void
.end method

.method public deleteFMByMid(I)V
    .registers 3
    .param p1, "messageId"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TableFM;->deleteFMByMid(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    return-void
.end method

.method public deleteFMsByDid(J)V
    .registers 4
    .param p1, "dialogId"    # J

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2, v0}, Lorg/telegram/SQLite/TableFM;->deleteFMsByDid(JLandroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    return-void
.end method

.method public deletePMByMid(I)V
    .registers 3
    .param p1, "messageId"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TablePM;->deletePMByMid(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 149
    return-void
.end method

.method public deletePMCategoryById(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TablePMCategory;->deletePMCategoryById(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    return-void
.end method

.method public deletePMFromCategory(I)V
    .registers 3
    .param p1, "messageId"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TablePM;->deletePMFromCategory(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 159
    return-void
.end method

.method public deletePMsByCid(I)V
    .registers 3
    .param p1, "cid"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TablePM;->deletePMsByCid(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 154
    return-void
.end method

.method public editPMCategoryById(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "catName"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2, v0}, Lorg/telegram/SQLite/TablePMCategory;->editPMCategoryById(ILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    return-void
.end method

.method public getAllFMDialogs()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/telegram/SQLite/TableFM;->getAllFMDialogs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllFMs()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/telegram/SQLite/TableFM;->getAllFMs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllFMsByDid(J)Ljava/util/ArrayList;
    .registers 4
    .param p1, "dialogId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2, v0}, Lorg/telegram/SQLite/TableFM;->getAllFMsByDid(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllPMCategoryIds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/telegram/SQLite/TablePMCategory;->getAllPMCategoryIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllPMCategoryNames()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/telegram/SQLite/TablePMCategory;->getAllPMCategoryNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllPMs()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/telegram/SQLite/TablePM;->getAllPMs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllPMsByCid(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "catId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TablePM;->getAllPMsByCid(ILandroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllPMsWithCid()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/telegram/SQLite/TablePM;->getAllPMsWithCid(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryPMCount(I)Ljava/lang/Integer;
    .registers 3
    .param p1, "catId"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TablePM;->getCategoryPMCount(ILandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDialogFMsCount(J)Ljava/lang/Integer;
    .registers 4
    .param p1, "dialogId"    # J

    .prologue
    .line 127
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, p2, v0}, Lorg/telegram/SQLite/TableFM;->getDialogFMsCount(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPMCategoryById(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TablePMCategory;->getPMCategoryNameById(ILandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ifExistsMid(I)Z
    .registers 3
    .param p1, "messageId"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TableFM;->ifExistsFM(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method public ifExistsPM(I)Z
    .registers 3
    .param p1, "messageId"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/telegram/SQLite/TablePM;->ifExistsPM(ILandroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 24
    const-string v0, "CREATE TABLE tbl_dialog_cat (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    const-string v0, "CREATE TABLE tbl_dialog (_id INTEGER PRIMARY KEY AUTOINCREMENT, dialog_id INTEGER, category_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    const-string v0, "CREATE TABLE tbl_fav_msg_cat (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    const-string v0, "CREATE TABLE tbl_fav_msg (_id INTEGER PRIMARY KEY AUTOINCREMENT, dialog_id INTEGER, message_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    const-string v0, "CREATE TABLE tbl_profile_msg (_id INTEGER PRIMARY KEY AUTOINCREMENT, message_id INTEGER, category_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 33
    const-string v0, "DROP TABLE IF EXISTS tbl_dialog_cat"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    const-string v0, "DROP TABLE IF EXISTS tbl_dialog"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    const-string v0, "DROP TABLE IF EXISTS tbl_fav_msg_cat"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v0, "DROP TABLE IF EXISTS tbl_fav_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v0, "DROP TABLE IF EXISTS tbl_profile_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Lorg/telegram/SQLite/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    return-void
.end method

.method public open()V
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/telegram/SQLite/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/SQLite/DBHelper;->sqLite:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    return-void
.end method

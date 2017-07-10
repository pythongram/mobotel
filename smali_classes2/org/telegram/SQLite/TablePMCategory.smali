.class public Lorg/telegram/SQLite/TablePMCategory;
.super Ljava/lang/Object;
.source "TablePMCategory.java"


# static fields
.field static final CatID:Ljava/lang/String; = "_id"

.field static final CatName:Ljava/lang/String; = "name"

.field static final Table:Ljava/lang/String; = "tbl_fav_msg_cat"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCategory(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "catName"    # Ljava/lang/String;
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 17
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 18
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "tbl_fav_msg_cat"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 20
    return-void
.end method

.method public static deletePMCategoryById(ILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "id"    # I
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 24
    const-string v0, "tbl_fav_msg_cat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public static editPMCategoryById(ILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p0, "id"    # I
    .param p1, "catName"    # Ljava/lang/String;
    .param p2, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 29
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "tbl_fav_msg_cat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public static getAllPMCategoryIds(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const-string v2, "SELECT _id FROM tbl_fav_msg_cat"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 67
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "categoryArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 71
    :cond_12
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_28

    move-result v2

    if-nez v2, :cond_12

    .line 75
    :cond_24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 77
    return-object v0

    .line 75
    :catchall_28
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static getAllPMCategoryNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-string v2, "SELECT name FROM tbl_fav_msg_cat"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 51
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "categoryArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 55
    :cond_12
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_24

    move-result v2

    if-nez v2, :cond_12

    .line 59
    :cond_20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 61
    return-object v0

    .line 59
    :catchall_24
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static getPMCategoryNameById(ILandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # I
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT name FROM tbl_fav_msg_cat WHERE _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 37
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 39
    .local v1, "name":Ljava/lang/String;
    :try_start_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 40
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_28

    move-result-object v1

    .line 43
    :cond_24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 45
    return-object v1

    .line 43
    :catchall_28
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

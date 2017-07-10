.class public Lorg/telegram/SQLite/TablePM;
.super Ljava/lang/Object;
.source "TablePM.java"


# static fields
.field static final CategoryId:Ljava/lang/String; = "category_id"

.field static final ID:Ljava/lang/String; = "_id"

.field static final MessageId:Ljava/lang/String; = "message_id"

.field static final Table:Ljava/lang/String; = "tbl_profile_msg"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPM(IILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p0, "messageId"    # I
    .param p1, "categoryId"    # I
    .param p2, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 17
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "message_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    const-string v1, "category_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    const-string v1, "tbl_profile_msg"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 20
    return-void
.end method

.method public static changePMCategory(IILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p0, "messageId"    # I
    .param p1, "catId"    # I
    .param p2, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 45
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "category_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v1, "tbl_profile_msg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public static deleteAllPMs(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p0, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v0, "tbl_profile_msg"

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public static deletePMByMid(ILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "messageId"    # I
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 30
    const-string v0, "tbl_profile_msg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public static deletePMFromCategory(ILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p0, "messageId"    # I
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/SQLite/TablePM;->changePMCategory(IILandroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    return-void
.end method

.method public static deletePMsByCid(ILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "cid"    # I
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    const-string v0, "tbl_profile_msg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public static getAllPMs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
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
    .line 69
    const-string v2, "SELECT message_id FROM tbl_profile_msg"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 70
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 74
    :cond_12
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_2a

    move-result v2

    if-nez v2, :cond_12

    .line 78
    :cond_24
    if-eqz v1, :cond_29

    .line 79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_29
    return-object v0

    .line 78
    :catchall_2a
    move-exception v2

    if-eqz v1, :cond_30

    .line 79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_30
    throw v2
.end method

.method public static getAllPMsByCid(ILandroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "catId"    # I
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT message_id FROM tbl_profile_msg WHERE category_id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 106
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 110
    :cond_23
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_3b

    move-result v2

    if-nez v2, :cond_23

    .line 114
    :cond_35
    if-eqz v1, :cond_3a

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_3a
    return-object v0

    .line 114
    :catchall_3b
    move-exception v2

    if-eqz v1, :cond_41

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v2
.end method

.method public static getAllPMsWithCid(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
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
    .line 87
    const-string v2, "SELECT message_id FROM tbl_profile_msg WHERE category_id > 0"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 88
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 92
    :cond_12
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_2a

    move-result v2

    if-nez v2, :cond_12

    .line 96
    :cond_24
    if-eqz v1, :cond_29

    .line 97
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_29
    return-object v0

    .line 96
    :catchall_2a
    move-exception v2

    if-eqz v1, :cond_30

    .line 97
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_30
    throw v2
.end method

.method public static getCategoryPMCount(ILandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .registers 7
    .param p0, "catId"    # I
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(category_id) FROM tbl_profile_msg WHERE category_id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 124
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    .local v0, "count":Ljava/lang/Integer;
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 128
    :cond_23
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_36

    move-result v2

    if-nez v2, :cond_23

    .line 132
    :cond_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 134
    return-object v0

    .line 132
    :catchall_36
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static ifExistsPM(ILandroid/database/sqlite/SQLiteDatabase;)Z
    .registers 6
    .param p0, "messageId"    # I
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT message_id FROM tbl_profile_msg WHERE message_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 56
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    move-result v2

    if-eqz v2, :cond_20

    .line 57
    const/4 v1, 0x1

    .line 60
    :cond_20
    if-eqz v0, :cond_25

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_25
    return v1

    .line 60
    :catchall_26
    move-exception v2

    if-eqz v0, :cond_2c

    .line 61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    throw v2
.end method

.class public Lorg/telegram/SQLite/TableFM;
.super Ljava/lang/Object;
.source "TableFM.java"


# static fields
.field static final DialogId:Ljava/lang/String; = "dialog_id"

.field static final ID:Ljava/lang/String; = "_id"

.field static final MessageId:Ljava/lang/String; = "message_id"

.field static final Table:Ljava/lang/String; = "tbl_fav_msg"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFM(JILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .param p0, "dialogId"    # J
    .param p2, "messageId"    # I
    .param p3, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 17
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 18
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "dialog_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    const-string v1, "message_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    const-string v1, "tbl_fav_msg"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 21
    return-void
.end method

.method public static deleteAllFMs(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p0, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v0, "tbl_fav_msg"

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public static deleteFMByMid(ILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "messageId"    # I
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    const-string v0, "tbl_fav_msg"

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

    .line 36
    return-void
.end method

.method public static deleteFMsByDid(JLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p0, "did"    # J
    .param p2, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 30
    const-string v0, "tbl_fav_msg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public static getAllFMDialogs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
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
    .line 92
    const-string v2, "SELECT dialog_Id FROM tbl_fav_msg GROUP BY dialog_Id"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 93
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 97
    :cond_12
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_2a

    move-result v2

    if-nez v2, :cond_12

    .line 101
    :cond_24
    if-eqz v0, :cond_29

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_29
    return-object v1

    .line 101
    :catchall_2a
    move-exception v2

    if-eqz v0, :cond_30

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_30
    throw v2
.end method

.method public static getAllFMs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
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
    .line 56
    const-string v2, "SELECT message_id FROM tbl_fav_msg"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 57
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 61
    :cond_12
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_2a

    move-result v2

    if-nez v2, :cond_12

    .line 65
    :cond_24
    if-eqz v1, :cond_29

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_29
    return-object v0

    .line 65
    :catchall_2a
    move-exception v2

    if-eqz v1, :cond_30

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_30
    throw v2
.end method

.method public static getAllFMsByDid(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "dialogId"    # J
    .param p2, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT message_id FROM tbl_fav_msg WHERE dialog_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 75
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 79
    :cond_23
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_3b

    move-result v2

    if-nez v2, :cond_23

    .line 83
    :cond_35
    if-eqz v1, :cond_3a

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_3a
    return-object v0

    .line 83
    :catchall_3b
    move-exception v2

    if-eqz v1, :cond_41

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v2
.end method

.method public static getDialogFMsCount(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .registers 9
    .param p0, "dialogId"    # J
    .param p2, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(dialog_id) FROM tbl_fav_msg WHERE dialog_id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 111
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 113
    .local v0, "count":Ljava/lang/Integer;
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 114
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_30

    move-result-object v0

    .line 117
    :cond_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    return-object v0

    .line 117
    :catchall_30
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static ifExistsFM(ILandroid/database/sqlite/SQLiteDatabase;)Z
    .registers 6
    .param p0, "messageId"    # I
    .param p1, "sqLite"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT message_id FROM tbl_fav_msg WHERE message_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 43
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    move-result v2

    if-eqz v2, :cond_20

    .line 44
    const/4 v1, 0x1

    .line 47
    :cond_20
    if-eqz v0, :cond_25

    .line 48
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_25
    return v1

    .line 47
    :catchall_26
    move-exception v2

    if-eqz v0, :cond_2c

    .line 48
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    throw v2
.end method

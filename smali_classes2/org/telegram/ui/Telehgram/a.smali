.class public Lorg/telegram/ui/Telehgram/a;
.super Ljava/lang/Object;
.source "a.java"


# instance fields
.field private a:Lorg/telegram/ui/Telehgram/b;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lorg/telegram/ui/Telehgram/b;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Telehgram/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    return-void
.end method


# virtual methods
.method public a(II)Landroid/database/Cursor;
    .registers 13
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .prologue
    const/4 v6, 0x0

    .line 17
    if-eqz p1, :cond_43

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "var3":Ljava/lang/String;
    :goto_16
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tbl_update"

    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    move-object v4, v6

    check-cast v4, [Ljava/lang/String;

    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    const-string v7, "_id DESC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 20
    .end local v3    # "var3":Ljava/lang/String;
    :cond_43
    const/4 v3, 0x0

    .restart local v3    # "var3":Ljava/lang/String;
    goto :goto_16
.end method

.method public a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 9
    .param p1, "var1"    # Ljava/lang/Long;
    .param p2, "var2"    # Ljava/lang/Long;

    .prologue
    .line 299
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 300
    .local v2, "var5":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 304
    :try_start_9
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v3, "var6":Landroid/content/ContentValues;
    const-string v4, "categoryId"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    const-string v4, "dialogId"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    const-string v5, "tbl_cat_dlg_info"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 308
    .local v0, "var3":J
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_2c

    .line 310
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 313
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 310
    .end local v0    # "var3":J
    .end local v3    # "var6":Landroid/content/ContentValues;
    :catchall_2c
    move-exception v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public a(Lorg/telegram/ui/Telehgram/AlarmResponse;)Ljava/lang/Long;
    .registers 12
    .param p1, "alarmResponse"    # Lorg/telegram/ui/Telehgram/AlarmResponse;

    .prologue
    .line 154
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v6}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 155
    .local v5, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 157
    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 159
    const-string v6, "_id"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    :cond_1d
    const-string v6, "title"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v6, "message"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v6, "imageUrl"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v6, "positiveBtnText"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getPositiveBtnText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v6, "positiveBtnAction"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getPositiveBtnAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v6, "positiveBtnUrl"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getPositiveBtnUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v6, "negativeBtnText"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getNegativeBtnText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v6, "negativeBtnAction"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getNegativeBtnAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v6, "negativeBtnUrl"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getNegativeBtnUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v6, "showCount"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getShowCount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v7, "exitOnDismiss"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getExitOnDismiss()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_d3

    const/4 v6, 0x1

    :goto_84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v6, "targetNetwork"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getTargetNetwork()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getDisplayCount()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_a3

    .line 174
    const-string v6, "displayCount"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getDisplayCount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    :cond_a3
    const-string v6, "targetVersion"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getTargetVersion()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_c0

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/telegram/ui/Telehgram/a;->a(J)Lorg/telegram/ui/Telehgram/AlarmResponse;

    move-result-object v6

    if-nez v6, :cond_d5

    .line 179
    :cond_c0
    const-string v6, "tbl_alarm"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 180
    .local v2, "insertOrThrow":J
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 181
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_cd
    .catchall {:try_start_9 .. :try_end_cd} :catchall_105

    move-result-object v1

    .line 190
    .local v1, "valueOf":Ljava/lang/Long;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v4, v1

    .line 188
    .end local v1    # "valueOf":Ljava/lang/Long;
    .end local v2    # "insertOrThrow":J
    .local v4, "valueOf":Ljava/lang/Long;
    :goto_d2
    return-object v4

    .line 171
    .end local v4    # "valueOf":Ljava/lang/Long;
    :cond_d3
    const/4 v6, 0x0

    goto :goto_84

    .line 184
    :cond_d5
    :try_start_d5
    const-string v6, "tbl_alarm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 186
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/AlarmResponse;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 187
    .restart local v1    # "valueOf":Ljava/lang/Long;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_100
    .catchall {:try_start_d5 .. :try_end_100} :catchall_105

    .line 190
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v4, v1

    .line 188
    .end local v1    # "valueOf":Ljava/lang/Long;
    .restart local v4    # "valueOf":Ljava/lang/Long;
    goto :goto_d2

    .line 190
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v4    # "valueOf":Ljava/lang/Long;
    :catchall_105
    move-exception v6

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

.method public a(Lorg/telegram/ui/Telehgram/Teleh/a/a;)Ljava/lang/Long;
    .registers 14
    .param p1, "var1"    # Lorg/telegram/ui/Telehgram/Teleh/a/a;

    .prologue
    .line 114
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v8}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 115
    .local v4, "var4":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 116
    const/4 v7, 0x0

    .line 122
    .local v7, "var8":Z
    const/4 v7, 0x1

    .line 123
    :try_start_b
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v6, "var6":Landroid/content/ContentValues;
    const-string v8, "name"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/a/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v8, "priority"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/a/a;->c()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/a/a;->a()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_43

    .line 127
    const-string v9, "tbl_category"

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v9, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 128
    .local v2, "var2":J
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_78

    .line 129
    const/4 v7, 0x0

    .line 139
    if-eqz v7, :cond_3a

    .line 140
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    :cond_3a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 149
    .local v0, "var10":Ljava/lang/Long;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v1, v0

    .line 150
    .end local v0    # "var10":Ljava/lang/Long;
    .end local v2    # "var2":J
    .local v1, "var10":Ljava/lang/Long;
    :goto_42
    return-object v1

    .line 133
    .end local v1    # "var10":Ljava/lang/Long;
    :cond_43
    :try_start_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v5, "var5":Ljava/lang/StringBuilder;
    const-string v9, "tbl_category"

    const-string v8, "_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/a/a;->a()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v9, v6, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 136
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/a/a;->a()Ljava/lang/Long;
    :try_end_6c
    .catchall {:try_start_43 .. :try_end_6c} :catchall_78

    move-result-object v0

    .line 137
    .restart local v0    # "var10":Ljava/lang/Long;
    const/4 v7, 0x0

    .line 139
    if-eqz v7, :cond_73

    .line 140
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    :cond_73
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v1, v0

    .line 145
    .end local v0    # "var10":Ljava/lang/Long;
    .restart local v1    # "var10":Ljava/lang/Long;
    goto :goto_42

    .line 139
    .end local v1    # "var10":Ljava/lang/Long;
    .end local v5    # "var5":Ljava/lang/StringBuilder;
    .end local v6    # "var6":Landroid/content/ContentValues;
    :catchall_78
    move-exception v8

    if-eqz v7, :cond_7e

    .line 140
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7e
    throw v8
.end method

.method public a(Lorg/telegram/ui/Telehgram/Teleh/c/a;)Ljava/lang/Long;
    .registers 8
    .param p1, "var1"    # Lorg/telegram/ui/Telehgram/Teleh/c/a;

    .prologue
    .line 195
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 196
    .local v2, "var4":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 200
    :try_start_9
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v3, "var5":Landroid/content/ContentValues;
    const-string v4, "chatID"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/c/a;->a()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    const-string v5, "tbl_favorite"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 203
    .local v0, "var2":J
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_2b

    .line 205
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 208
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 205
    .end local v0    # "var2":J
    .end local v3    # "var5":Landroid/content/ContentValues;
    :catchall_2b
    move-exception v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public a(Lorg/telegram/ui/Telehgram/Teleh/e/a;)Ljava/lang/Long;
    .registers 8
    .param p1, "var1"    # Lorg/telegram/ui/Telehgram/Teleh/e/a;

    .prologue
    .line 212
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 213
    .local v2, "var4":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 217
    :try_start_9
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v3, "var5":Landroid/content/ContentValues;
    const-string v4, "dialogID"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/e/a;->a()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    const-string v5, "tbl_hidden"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 220
    .local v0, "var2":J
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_2b

    .line 222
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 225
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 222
    .end local v0    # "var2":J
    .end local v3    # "var5":Landroid/content/ContentValues;
    :catchall_2b
    move-exception v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public a(Lorg/telegram/ui/Telehgram/Teleh/f/a;)Ljava/lang/Long;
    .registers 14
    .param p1, "var1"    # Lorg/telegram/ui/Telehgram/Teleh/f/a;

    .prologue
    .line 229
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v8}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 230
    .local v4, "var4":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 231
    const/4 v7, 0x0

    .line 237
    .local v7, "var8":Z
    const/4 v7, 0x1

    .line 238
    :try_start_b
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v5, "var5":Landroid/content/ContentValues;
    const-string v8, "doc_id"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/f/a;->c()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    const-string v8, "priority"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/f/a;->b()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/f/a;->a()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_43

    .line 242
    const-string v9, "tbl_favorite_stickers"

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v9, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 243
    .local v2, "var2":J
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_78

    .line 244
    const/4 v7, 0x0

    .line 254
    if-eqz v7, :cond_3a

    .line 255
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 263
    :cond_3a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 264
    .local v0, "var10":Ljava/lang/Long;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v1, v0

    .line 265
    .end local v0    # "var10":Ljava/lang/Long;
    .end local v2    # "var2":J
    .local v1, "var10":Ljava/lang/Long;
    :goto_42
    return-object v1

    .line 248
    .end local v1    # "var10":Ljava/lang/Long;
    :cond_43
    :try_start_43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v6, "var6":Ljava/lang/StringBuilder;
    const-string v9, "tbl_favorite_stickers"

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/f/a;->a()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v4, v9, v5, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 251
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/Teleh/f/a;->a()Ljava/lang/Long;
    :try_end_6c
    .catchall {:try_start_43 .. :try_end_6c} :catchall_78

    move-result-object v0

    .line 252
    .restart local v0    # "var10":Ljava/lang/Long;
    const/4 v7, 0x0

    .line 254
    if-eqz v7, :cond_73

    .line 255
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 259
    :cond_73
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v1, v0

    .line 260
    .end local v0    # "var10":Ljava/lang/Long;
    .restart local v1    # "var10":Ljava/lang/Long;
    goto :goto_42

    .line 254
    .end local v1    # "var10":Ljava/lang/Long;
    .end local v5    # "var5":Landroid/content/ContentValues;
    .end local v6    # "var6":Ljava/lang/StringBuilder;
    :catchall_78
    move-exception v8

    if-eqz v7, :cond_7e

    .line 255
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7e
    throw v8
.end method

.method public a(Lorg/telegram/ui/Telehgram/UpdateModel;)Ljava/lang/Long;
    .registers 12
    .param p1, "updateModel"    # Lorg/telegram/ui/Telehgram/UpdateModel;

    .prologue
    .line 269
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 270
    .local v4, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 273
    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v5, "type"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v5, "old_value"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->getOldValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v5, "new_value"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->getNewValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v5, "user_id"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->getUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v6, "is_new"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->isNew()Z

    move-result v5

    if-eqz v5, :cond_71

    const/4 v5, 0x1

    :goto_43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->getChangeDate()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 280
    const-string v5, "change_date"

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->getChangeDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_59
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->getId()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_73

    .line 283
    const-string v5, "tbl_update"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 284
    .local v2, "insertOrThrow":J
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 285
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_6c
    .catchall {:try_start_9 .. :try_end_6c} :catchall_9f

    move-result-object v1

    .line 294
    .end local v2    # "insertOrThrow":J
    .local v1, "valueOf":Ljava/lang/Long;
    :goto_6d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 292
    return-object v1

    .line 278
    .end local v1    # "valueOf":Ljava/lang/Long;
    :cond_71
    const/4 v5, 0x0

    goto :goto_43

    .line 287
    :cond_73
    :try_start_73
    const-string v5, "tbl_update"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 289
    invoke-virtual {p1}, Lorg/telegram/ui/Telehgram/UpdateModel;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 290
    .restart local v1    # "valueOf":Ljava/lang/Long;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9e
    .catchall {:try_start_73 .. :try_end_9e} :catchall_9f

    goto :goto_6d

    .line 294
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "valueOf":Ljava/lang/Long;
    :catchall_9f
    move-exception v5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 319
    .local v0, "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v8, "arrayList":Ljava/util/List;
    :try_start_b
    const-string v1, "tbl_favorite"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 323
    .local v9, "query":Landroid/database/Cursor;
    :goto_18
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1b} :catch_2f

    move-result v1

    if-eqz v1, :cond_29

    .line 325
    :try_start_1e
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Telehgram/a;->c(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/Teleh/c/a;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_18

    .line 326
    :catch_26
    move-exception v11

    .line 327
    .local v11, "th2":Ljava/lang/Throwable;
    move-object v10, v11

    .line 328
    .local v10, "th":Ljava/lang/Throwable;
    goto :goto_18

    .line 330
    .end local v10    # "th":Ljava/lang/Throwable;
    .end local v11    # "th2":Ljava/lang/Throwable;
    :cond_29
    if-eqz v9, :cond_2e

    .line 331
    :try_start_2b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 333
    :cond_2e
    return-object v8

    .line 334
    .end local v9    # "query":Landroid/database/Cursor;
    :catch_2f
    move-exception v12

    .line 335
    .local v12, "th3":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 336
    .restart local v9    # "query":Landroid/database/Cursor;
    if-eqz v9, :cond_36

    .line 337
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_36
    throw v12
.end method

.method public a(Ljava/lang/String;Z)Ljava/util/List;
    .registers 17
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z

    .prologue
    .line 345
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 346
    .local v0, "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v8, "arrayList":Ljava/util/List;
    :try_start_b
    const-string v1, "tbl_category"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "priority"

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 350
    .local v10, "query":Landroid/database/Cursor;
    :goto_18
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1b} :catch_40

    move-result v1

    if-eqz v1, :cond_3a

    .line 352
    :try_start_1e
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Telehgram/a;->c(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/Teleh/c/a;

    move-result-object v9

    .line 353
    .local v9, "e":Lorg/telegram/ui/Telehgram/Teleh/c/a;
    if-eqz p2, :cond_33

    .line 354
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9}, Lorg/telegram/ui/Telehgram/Teleh/c/a;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/a;->f(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    :cond_33
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_36} :catch_37

    goto :goto_18

    .line 357
    .end local v9    # "e":Lorg/telegram/ui/Telehgram/Teleh/c/a;
    :catch_37
    move-exception v12

    .line 358
    .local v12, "th2":Ljava/lang/Throwable;
    move-object v11, v12

    .line 359
    .local v11, "th":Ljava/lang/Throwable;
    goto :goto_18

    .line 361
    .end local v11    # "th":Ljava/lang/Throwable;
    .end local v12    # "th2":Ljava/lang/Throwable;
    :cond_3a
    if-eqz v10, :cond_3f

    .line 362
    :try_start_3c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_40

    .line 364
    :cond_3f
    return-object v8

    .line 365
    .end local v10    # "query":Landroid/database/Cursor;
    :catch_40
    move-exception v13

    .line 366
    .local v13, "th3":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 367
    .restart local v10    # "query":Landroid/database/Cursor;
    if-eqz v10, :cond_47

    .line 368
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_47
    throw v13
.end method

.method public a(J)Lorg/telegram/ui/Telehgram/AlarmResponse;
    .registers 16
    .param p1, "var1"    # J

    .prologue
    .line 39
    const/4 v12, 0x0

    .line 40
    .local v12, "var3":Lorg/telegram/ui/Telehgram/AlarmResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "var5":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    .local v0, "var4":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 46
    .local v8, "var10":Z
    const/4 v8, 0x1

    .line 47
    :try_start_1c
    const-string v1, "tbl_alarm"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_43

    move-result-object v11

    .line 48
    .local v11, "var14":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 50
    if-eqz v8, :cond_35

    .line 51
    if-eqz v12, :cond_35

    .line 61
    :cond_35
    :try_start_35
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_56

    move-result v1

    if-nez v1, :cond_49

    .line 79
    if-eqz v11, :cond_40

    .line 80
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_40
    const/4 v9, 0x0

    .local v9, "var13":Lorg/telegram/ui/Telehgram/AlarmResponse;
    move-object v10, v9

    .line 84
    .end local v9    # "var13":Lorg/telegram/ui/Telehgram/AlarmResponse;
    .local v10, "var13":Lorg/telegram/ui/Telehgram/AlarmResponse;
    :goto_42
    return-object v10

    .line 50
    .end local v10    # "var13":Lorg/telegram/ui/Telehgram/AlarmResponse;
    .end local v11    # "var14":Landroid/database/Cursor;
    :catchall_43
    move-exception v1

    if-eqz v8, :cond_48

    .line 51
    if-eqz v12, :cond_48

    :cond_48
    throw v1

    .line 65
    .restart local v11    # "var14":Landroid/database/Cursor;
    :cond_49
    :try_start_49
    invoke-virtual {p0, v11}, Lorg/telegram/ui/Telehgram/a;->b(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/AlarmResponse;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_56

    move-result-object v12

    .line 70
    move-object v9, v12

    .line 71
    .restart local v9    # "var13":Lorg/telegram/ui/Telehgram/AlarmResponse;
    if-eqz v11, :cond_54

    .line 72
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 73
    move-object v9, v12

    :cond_54
    move-object v10, v9

    .line 76
    .end local v9    # "var13":Lorg/telegram/ui/Telehgram/AlarmResponse;
    .restart local v10    # "var13":Lorg/telegram/ui/Telehgram/AlarmResponse;
    goto :goto_42

    .line 67
    .end local v10    # "var13":Lorg/telegram/ui/Telehgram/AlarmResponse;
    :catchall_56
    move-exception v1

    throw v1
.end method

.method public a(Ljava/lang/Long;Z)Lorg/telegram/ui/Telehgram/Teleh/a/a;
    .registers 7
    .param p1, "var1"    # Ljava/lang/Long;
    .param p2, "var2"    # Z

    .prologue
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/telegram/ui/Telehgram/a;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 29
    .local v0, "var3":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_25

    .line 30
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Telehgram/Teleh/a/a;

    .line 35
    .local v1, "var4":Lorg/telegram/ui/Telehgram/Teleh/a/a;
    :goto_24
    return-object v1

    .line 32
    .end local v1    # "var4":Lorg/telegram/ui/Telehgram/Teleh/a/a;
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "var4":Lorg/telegram/ui/Telehgram/Teleh/a/a;
    goto :goto_24
.end method

.method public a(Ljava/lang/Long;)Lorg/telegram/ui/Telehgram/Teleh/c/a;
    .registers 6
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chatID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "var2":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_25

    .line 91
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Telehgram/Teleh/c/a;

    .line 96
    .local v1, "var3":Lorg/telegram/ui/Telehgram/Teleh/c/a;
    :goto_24
    return-object v1

    .line 93
    .end local v1    # "var3":Lorg/telegram/ui/Telehgram/Teleh/c/a;
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "var3":Lorg/telegram/ui/Telehgram/Teleh/c/a;
    goto :goto_24
.end method

.method public a(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/UpdateModel;
    .registers 14
    .param p1, "var1"    # Landroid/database/Cursor;

    .prologue
    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, "var4":Z
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 102
    .local v8, "var5":J
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 103
    .local v2, "var2":I
    const-string v0, "old_value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "var7":Ljava/lang/String;
    const-string v0, "new_value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "var8":Ljava/lang/String;
    const-string v0, "user_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 106
    .local v5, "var3":I
    const-string v0, "is_new"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "is_new"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-lez v0, :cond_50

    .line 107
    const/4 v6, 0x1

    .line 110
    :cond_50
    new-instance v0, Lorg/telegram/ui/Telehgram/UpdateModel;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v7, "change_date"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Telehgram/UpdateModel;-><init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .registers 6

    .prologue
    .line 375
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 376
    .local v0, "var1":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 379
    :try_start_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 380
    .local v1, "var2":Landroid/content/ContentValues;
    const-string v2, "is_new"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 381
    const-string v4, "tbl_update"

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 382
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_25

    .line 384
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 387
    return-void

    .line 384
    .end local v1    # "var2":Landroid/content/ContentValues;
    :catchall_25
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public a(I)V
    .registers 6
    .param p1, "var1"    # I

    .prologue
    .line 390
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 391
    .local v0, "var2":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "var3":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 395
    :try_start_1c
    const-string v3, "tbl_update"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 398
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 401
    return-void

    .line 398
    :catchall_2b
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 478
    .local v0, "var3":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v9, "var2":Ljava/util/ArrayList;
    :try_start_b
    const-string v1, "tbl_hidden"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "_id"

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_2c

    move-result-object v8

    .line 489
    .local v8, "var10":Landroid/database/Cursor;
    :goto_20
    :try_start_20
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_36

    move-result v1

    if-nez v1, :cond_2e

    .line 503
    if-eqz v8, :cond_2b

    .line 504
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_2b
    return-object v9

    .line 484
    .end local v8    # "var10":Landroid/database/Cursor;
    :catchall_2c
    move-exception v1

    throw v1

    .line 493
    .restart local v8    # "var10":Landroid/database/Cursor;
    :cond_2e
    :try_start_2e
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Telehgram/a;->d(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/Teleh/e/a;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_20

    .line 494
    :catch_36
    move-exception v10

    .line 495
    .local v10, "var9":Ljava/lang/Throwable;
    if-eqz v8, :cond_3c

    .line 496
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_3c
    throw v10
.end method

.method public b(I)Lorg/telegram/ui/Telehgram/AlarmResponse;
    .registers 15
    .param p1, "var1"    # I

    .prologue
    .line 404
    const/4 v11, 0x0

    .line 405
    .local v11, "var2":Lorg/telegram/ui/Telehgram/AlarmResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "targetVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "var4":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 407
    .local v0, "var3":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 411
    .local v12, "var9":Z
    const/4 v12, 0x1

    .line 412
    :try_start_1c
    const-string v1, "tbl_alarm"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_43

    move-result-object v10

    .line 413
    .local v10, "var13":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 415
    if-eqz v12, :cond_35

    .line 416
    if-eqz v11, :cond_35

    .line 426
    :cond_35
    :try_start_35
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_56

    move-result v1

    if-nez v1, :cond_49

    .line 444
    if-eqz v10, :cond_40

    .line 445
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_40
    const/4 v8, 0x0

    .local v8, "var12":Lorg/telegram/ui/Telehgram/AlarmResponse;
    move-object v9, v8

    .line 449
    .end local v8    # "var12":Lorg/telegram/ui/Telehgram/AlarmResponse;
    .local v9, "var12":Lorg/telegram/ui/Telehgram/AlarmResponse;
    :goto_42
    return-object v9

    .line 415
    .end local v9    # "var12":Lorg/telegram/ui/Telehgram/AlarmResponse;
    .end local v10    # "var13":Landroid/database/Cursor;
    :catchall_43
    move-exception v1

    if-eqz v12, :cond_48

    .line 416
    if-eqz v11, :cond_48

    :cond_48
    throw v1

    .line 430
    .restart local v10    # "var13":Landroid/database/Cursor;
    :cond_49
    :try_start_49
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Telehgram/a;->b(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/AlarmResponse;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_56

    move-result-object v11

    .line 435
    move-object v8, v11

    .line 436
    .restart local v8    # "var12":Lorg/telegram/ui/Telehgram/AlarmResponse;
    if-eqz v10, :cond_54

    .line 437
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 438
    move-object v8, v11

    :cond_54
    move-object v9, v8

    .line 441
    .end local v8    # "var12":Lorg/telegram/ui/Telehgram/AlarmResponse;
    .restart local v9    # "var12":Lorg/telegram/ui/Telehgram/AlarmResponse;
    goto :goto_42

    .line 432
    .end local v9    # "var12":Lorg/telegram/ui/Telehgram/AlarmResponse;
    :catchall_56
    move-exception v1

    throw v1
.end method

.method public b(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/AlarmResponse;
    .registers 24
    .param p1, "var1"    # Landroid/database/Cursor;

    .prologue
    .line 453
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 454
    .local v20, "var3":J
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 455
    .local v4, "var10":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "var7":Ljava/lang/String;
    const-string v2, "imageUrl"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, "var8":Ljava/lang/String;
    const-string v2, "positiveBtnText"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, "var14":Ljava/lang/String;
    const-string v2, "positiveBtnAction"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 459
    .local v8, "var12":Ljava/lang/String;
    const-string v2, "positiveBtnUrl"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 460
    .local v9, "var9":Ljava/lang/String;
    const-string v2, "negativeBtnText"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 461
    .local v10, "var13":Ljava/lang/String;
    const-string v2, "negativeBtnAction"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 462
    .local v11, "var11":Ljava/lang/String;
    const-string v2, "negativeBtnUrl"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 463
    .local v12, "var6":Ljava/lang/String;
    const-string v2, "showCount"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 465
    .local v18, "var2":I
    const-string v2, "exitOnDismiss"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 466
    const/16 v19, 0x0

    .line 473
    .local v19, "var5":Z
    :goto_ac
    new-instance v2, Lorg/telegram/ui/Telehgram/AlarmResponse;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v15, "targetNetwork"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "displayCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "targetVersion"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lorg/telegram/ui/Telehgram/AlarmResponse;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v2

    .line 467
    .end local v19    # "var5":Z
    :cond_fc
    const-string v2, "exitOnDismiss"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-lez v2, :cond_113

    .line 468
    const/16 v19, 0x1

    .restart local v19    # "var5":Z
    goto :goto_ac

    .line 470
    .end local v19    # "var5":Z
    :cond_113
    const/16 v19, 0x0

    .restart local v19    # "var5":Z
    goto :goto_ac
.end method

.method public b()V
    .registers 5

    .prologue
    .line 511
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 512
    .local v0, "var1":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 515
    :try_start_9
    const-string v3, "tbl_update"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 516
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    .line 518
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 521
    return-void

    .line 518
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public b(Ljava/lang/Long;)V
    .registers 6
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 524
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 525
    .local v0, "var2":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chatID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "var5":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 529
    :try_start_1c
    const-string v3, "tbl_favorite"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 530
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 532
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 535
    return-void

    .line 532
    :catchall_2b
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public c()I
    .registers 15

    .prologue
    .line 539
    const/4 v10, 0x0

    .line 540
    .local v10, "query":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 542
    .local v8, "count":I
    :try_start_2
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tbl_update"

    const/4 v2, 0x0

    const-string v3, "is_new=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_15} :catch_29

    move-result-object v10

    .line 544
    :try_start_16
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 545
    if-eqz v10, :cond_1f

    .line 546
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1f} :catch_21

    :cond_1f
    move v9, v8

    .line 563
    .end local v8    # "count":I
    .local v9, "count":I
    :goto_20
    return v9

    .line 549
    .end local v9    # "count":I
    .restart local v8    # "count":I
    :catch_21
    move-exception v12

    .line 550
    .local v12, "th2":Ljava/lang/Throwable;
    move-object v11, v12

    .line 551
    .local v11, "th":Ljava/lang/Throwable;
    if-eqz v10, :cond_28

    .line 552
    :try_start_25
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_28
    throw v11
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_29} :catch_29

    .line 556
    .end local v11    # "th":Ljava/lang/Throwable;
    .end local v12    # "th2":Ljava/lang/Throwable;
    :catch_29
    move-exception v13

    .line 558
    .local v13, "th3":Ljava/lang/Throwable;
    if-eqz v10, :cond_2f

    .line 559
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2f
    move v9, v8

    .line 563
    .end local v8    # "count":I
    .restart local v9    # "count":I
    goto :goto_20
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 585
    .local v0, "var3":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v9, "var2":Ljava/util/ArrayList;
    :try_start_b
    const-string v1, "tbl_favorite_stickers"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "priority"

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_2c

    move-result-object v8

    .line 596
    .local v8, "var10":Landroid/database/Cursor;
    :goto_20
    :try_start_20
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_36

    move-result v1

    if-nez v1, :cond_2e

    .line 610
    if-eqz v8, :cond_2b

    .line 611
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 614
    :cond_2b
    return-object v9

    .line 591
    .end local v8    # "var10":Landroid/database/Cursor;
    :catchall_2c
    move-exception v1

    throw v1

    .line 600
    .restart local v8    # "var10":Landroid/database/Cursor;
    :cond_2e
    :try_start_2e
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Telehgram/a;->f(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/Teleh/f/a;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_20

    .line 601
    :catch_36
    move-exception v10

    .line 602
    .local v10, "var9":Ljava/lang/Throwable;
    if-eqz v8, :cond_3c

    .line 603
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_3c
    throw v10
.end method

.method public c(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/Teleh/c/a;
    .registers 6
    .param p1, "var1"    # Landroid/database/Cursor;

    .prologue
    .line 568
    new-instance v0, Lorg/telegram/ui/Telehgram/Teleh/c/a;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chatID"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/Teleh/c/a;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public c(Ljava/lang/Long;)Lorg/telegram/ui/Telehgram/Teleh/e/a;
    .registers 6
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialogID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Telehgram/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 574
    .local v0, "var2":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_25

    .line 575
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Telehgram/Teleh/e/a;

    .line 580
    .local v1, "var3":Lorg/telegram/ui/Telehgram/Teleh/e/a;
    :goto_24
    return-object v1

    .line 577
    .end local v1    # "var3":Lorg/telegram/ui/Telehgram/Teleh/e/a;
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "var3":Lorg/telegram/ui/Telehgram/Teleh/e/a;
    goto :goto_24
.end method

.method public d()Ljava/util/List;
    .registers 2

    .prologue
    .line 622
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/Teleh/e/a;
    .registers 6
    .param p1, "var1"    # Landroid/database/Cursor;

    .prologue
    .line 618
    new-instance v0, Lorg/telegram/ui/Telehgram/Teleh/e/a;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dialogID"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Telehgram/Teleh/e/a;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public d(Ljava/lang/Long;)V
    .registers 6
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 626
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 627
    .local v0, "var2":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialogID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "var5":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 631
    :try_start_1c
    const-string v3, "tbl_hidden"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 632
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 634
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 637
    return-void

    .line 634
    :catchall_2b
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public e()Ljava/util/List;
    .registers 2

    .prologue
    .line 644
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/Teleh/a/a;
    .registers 6
    .param p1, "var1"    # Landroid/database/Cursor;

    .prologue
    .line 640
    new-instance v0, Lorg/telegram/ui/Telehgram/Teleh/a/a;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "priority"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Telehgram/Teleh/a/a;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public e(Ljava/lang/Long;)V
    .registers 6
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 648
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 649
    .local v0, "var2":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "var5":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 653
    :try_start_1c
    const-string v3, "tbl_category"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 654
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 656
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 659
    return-void

    .line 656
    :catchall_2b
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public f(Ljava/lang/Long;)Ljava/util/List;
    .registers 15
    .param p1, "l"    # Ljava/lang/Long;

    .prologue
    .line 667
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 668
    .local v0, "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v8, "arrayList":Ljava/util/List;
    :try_start_b
    const-string v1, "tbl_cat_dlg_info"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "categoryId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 672
    .local v9, "query":Landroid/database/Cursor;
    :goto_2a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2d} :catch_4b

    move-result v1

    if-eqz v1, :cond_45

    .line 674
    :try_start_30
    const-string v1, "dialogId"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_41} :catch_42

    goto :goto_2a

    .line 675
    :catch_42
    move-exception v11

    .line 676
    .local v11, "th2":Ljava/lang/Throwable;
    move-object v10, v11

    .line 677
    .local v10, "th":Ljava/lang/Throwable;
    goto :goto_2a

    .line 679
    .end local v10    # "th":Ljava/lang/Throwable;
    .end local v11    # "th2":Ljava/lang/Throwable;
    :cond_45
    if-eqz v9, :cond_4a

    .line 680
    :try_start_47
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 682
    :cond_4a
    return-object v8

    .line 683
    .end local v9    # "query":Landroid/database/Cursor;
    :catch_4b
    move-exception v12

    .line 684
    .local v12, "th3":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 685
    .restart local v9    # "query":Landroid/database/Cursor;
    if-eqz v9, :cond_52

    .line 686
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 688
    :cond_52
    throw v12
.end method

.method public f(Landroid/database/Cursor;)Lorg/telegram/ui/Telehgram/Teleh/f/a;
    .registers 6
    .param p1, "var1"    # Landroid/database/Cursor;

    .prologue
    .line 662
    new-instance v0, Lorg/telegram/ui/Telehgram/Teleh/f/a;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "doc_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "priority"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Telehgram/Teleh/f/a;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public f()V
    .registers 5

    .prologue
    .line 693
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 694
    .local v0, "var2":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 697
    :try_start_9
    const-string v3, "tbl_hidden"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 698
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    .line 700
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 703
    return-void

    .line 700
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public g()Ljava/util/List;
    .registers 3

    .prologue
    .line 706
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Telehgram/a;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Long;)V
    .registers 6
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 710
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 711
    .local v0, "var2":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialogId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    .local v1, "var5":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 715
    :try_start_1c
    const-string v3, "tbl_cat_dlg_info"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 716
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 718
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 721
    return-void

    .line 718
    :catchall_2b
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public h()I
    .registers 13

    .prologue
    .line 724
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 728
    .local v0, "var2":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    const-string v1, "tbl_category"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_27

    move-result-object v10

    .line 740
    .local v10, "var11":Landroid/database/Cursor;
    :try_start_1d
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_31

    move-result v8

    .line 745
    .local v8, "var1":I
    if-eqz v10, :cond_26

    .line 746
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_26
    return v8

    .line 729
    .end local v8    # "var1":I
    .end local v10    # "var11":Landroid/database/Cursor;
    :catch_27
    move-exception v9

    .line 730
    .local v9, "var10":Ljava/lang/Throwable;
    const/4 v11, 0x0

    .line 731
    .local v11, "var4":Ljava/lang/Object;
    if-eqz v11, :cond_30

    .line 732
    check-cast v11, Landroid/database/Cursor;

    .end local v11    # "var4":Ljava/lang/Object;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_30
    throw v9

    .line 742
    .end local v9    # "var10":Ljava/lang/Throwable;
    .restart local v10    # "var11":Landroid/database/Cursor;
    :catchall_31
    move-exception v1

    throw v1
.end method

.method public h(Ljava/lang/Long;)Z
    .registers 4
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/a;->i(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 755
    const/4 v0, 0x1

    .line 760
    .local v0, "var2":Z
    :goto_7
    return v0

    .line 757
    .end local v0    # "var2":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "var2":Z
    goto :goto_7
.end method

.method public i(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 19
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 764
    const/4 v13, 0x0

    .line 765
    .local v13, "var5":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialogId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 766
    .local v5, "var4":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v3}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 767
    .local v2, "var14":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 771
    .local v11, "var11":Z
    const/4 v11, 0x1

    .line 772
    :try_start_20
    const-string v3, "tbl_cat_dlg_info"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/String;

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_4e

    move-result-object v16

    .line 773
    .local v16, "var6":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 775
    if-eqz v11, :cond_3e

    .line 776
    if-eqz v13, :cond_3e

    .line 777
    check-cast v13, Landroid/database/Cursor;

    .end local v13    # "var5":Ljava/lang/Object;
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 786
    :cond_3e
    :try_start_3e
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_77

    move-result v3

    if-nez v3, :cond_59

    .line 805
    if-eqz v16, :cond_49

    .line 806
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_49
    const/16 p1, 0x0

    move-object/from16 v10, p1

    .line 810
    .end local p1    # "var1":Ljava/lang/Long;
    .local v10, "var1":Ljava/lang/Long;
    :goto_4d
    return-object v10

    .line 775
    .end local v10    # "var1":Ljava/lang/Long;
    .end local v16    # "var6":Landroid/database/Cursor;
    .restart local v13    # "var5":Ljava/lang/Object;
    .restart local p1    # "var1":Ljava/lang/Long;
    :catchall_4e
    move-exception v3

    if-eqz v11, :cond_58

    .line 776
    if-eqz v13, :cond_58

    .line 777
    check-cast v13, Landroid/database/Cursor;

    .end local v13    # "var5":Ljava/lang/Object;
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v3

    .line 790
    .restart local v16    # "var6":Landroid/database/Cursor;
    :cond_59
    :try_start_59
    const-string v3, "categoryId"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_77

    move-result-wide v14

    .line 795
    .local v14, "var2":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 796
    .local v12, "var15":Ljava/lang/Long;
    move-object/from16 p1, v12

    .line 797
    if-eqz v16, :cond_74

    .line 798
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 799
    move-object/from16 p1, v12

    :cond_74
    move-object/from16 v10, p1

    .line 802
    .end local p1    # "var1":Ljava/lang/Long;
    .restart local v10    # "var1":Ljava/lang/Long;
    goto :goto_4d

    .line 792
    .end local v10    # "var1":Ljava/lang/Long;
    .end local v12    # "var15":Ljava/lang/Long;
    .end local v14    # "var2":J
    .restart local p1    # "var1":Ljava/lang/Long;
    :catchall_77
    move-exception v3

    throw v3
.end method

.method public i()Ljava/util/List;
    .registers 3

    .prologue
    .line 814
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Telehgram/a;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/List;
    .registers 14

    .prologue
    .line 819
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 820
    .local v0, "readableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v8, "arrayList":Ljava/util/List;
    :try_start_b
    const-string v1, "tbl_cat_dlg_info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 824
    .local v9, "query":Landroid/database/Cursor;
    :goto_18
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1b} :catch_39

    move-result v1

    if-eqz v1, :cond_33

    .line 826
    :try_start_1e
    const-string v1, "dialogId"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2f} :catch_30

    goto :goto_18

    .line 827
    :catch_30
    move-exception v11

    .line 828
    .local v11, "th2":Ljava/lang/Throwable;
    move-object v10, v11

    .line 829
    .local v10, "th":Ljava/lang/Throwable;
    goto :goto_18

    .line 831
    .end local v10    # "th":Ljava/lang/Throwable;
    .end local v11    # "th2":Ljava/lang/Throwable;
    :cond_33
    if-eqz v9, :cond_38

    .line 832
    :try_start_35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_39

    .line 834
    :cond_38
    return-object v8

    .line 835
    .end local v9    # "query":Landroid/database/Cursor;
    :catch_39
    move-exception v12

    .line 836
    .local v12, "th3":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 837
    .restart local v9    # "query":Landroid/database/Cursor;
    if-eqz v9, :cond_40

    .line 838
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 840
    :cond_40
    throw v12
.end method

.method public j(Ljava/lang/Long;)V
    .registers 6
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 845
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/a;->a:Lorg/telegram/ui/Telehgram/b;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 846
    .local v0, "var2":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doc_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "var5":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 850
    :try_start_1c
    const-string v3, "tbl_favorite_stickers"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 851
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_2b

    .line 853
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 856
    return-void

    .line 853
    :catchall_2b
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public k()Ljava/util/List;
    .registers 2

    .prologue
    .line 859
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

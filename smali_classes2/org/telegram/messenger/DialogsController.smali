.class public Lorg/telegram/messenger/DialogsController;
.super Ljava/lang/Object;
.source "DialogsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/DialogsController$DialogInfo;
    }
.end annotation


# static fields
.field private static instance:Lorg/telegram/messenger/DialogsController;


# instance fields
.field private dialogsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/DialogsController$DialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field public hiddenPasscodeHash:Ljava/lang/String;

.field public hiddenPasscodeSalt:[B

.field public hiddenPasscodeType:I

.field public hiddenUseFingerprint:Z

.field private tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;


# direct methods
.method constructor <init>()V
    .registers 15

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    .line 17
    new-array v1, v11, [B

    iput-object v1, p0, Lorg/telegram/messenger/DialogsController;->hiddenPasscodeSalt:[B

    .line 20
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->getInstance(Landroid/content/Context;)Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/DialogsController;->tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    .line 46
    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 47
    .local v0, "tDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dialogs"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "did"

    aput-object v3, v2, v11

    const-string v3, "fav"

    aput-object v3, v2, v10

    const/4 v3, 0x2

    const-string v4, "hidden"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "lock"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "private_read"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "private_typing"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "bookmark_mid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "auto_download"

    aput-object v4, v2, v3

    const-string v3, "user = ?"

    new-array v4, v10, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 48
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_f1

    .line 49
    :goto_70
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 50
    iget-object v12, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    const-string v1, "did"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v1, Lorg/telegram/messenger/DialogsController$DialogInfo;

    const-string v2, "fav"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v10, :cond_e4

    move v2, v10

    :goto_95
    const-string v3, "hidden"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v10, :cond_e6

    move v3, v10

    :goto_a2
    const-string v4, "lock"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v10, :cond_e8

    move v4, v10

    :goto_af
    const-string v5, "private_read"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v10, :cond_ea

    move v5, v10

    :goto_bc
    const-string v6, "private_typing"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v10, :cond_ec

    move v6, v10

    :goto_c9
    const-string v7, "bookmark_mid"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "auto_download"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/DialogsController$DialogInfo;-><init>(ZZZZZII)V

    invoke-virtual {v12, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :cond_e4
    move v2, v11

    goto :goto_95

    :cond_e6
    move v3, v11

    goto :goto_a2

    :cond_e8
    move v4, v11

    goto :goto_af

    :cond_ea
    move v5, v11

    goto :goto_bc

    :cond_ec
    move v6, v11

    goto :goto_c9

    .line 52
    :cond_ee
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_f1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 55
    invoke-virtual {p0}, Lorg/telegram/messenger/DialogsController;->loadHiddenConfig()V

    .line 56
    return-void
.end method

.method private addToDB(J)V
    .registers 8
    .param p1, "did"    # J

    .prologue
    const/4 v4, 0x0

    .line 231
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "user"

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v2, "did"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string v2, "fav"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 235
    const-string v2, "hidden"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 236
    const-string v2, "lock"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    const-string v2, "private_read"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 238
    const-string v2, "private_typing"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    const-string v2, "auto_download"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v2, "bookmark_mid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 242
    .local v0, "tDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "dialogs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 243
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 244
    return-void
.end method

.method public static getInstance()Lorg/telegram/messenger/DialogsController;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lorg/telegram/messenger/DialogsController;->instance:Lorg/telegram/messenger/DialogsController;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lorg/telegram/messenger/DialogsController;

    invoke-direct {v0}, Lorg/telegram/messenger/DialogsController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/DialogsController;->instance:Lorg/telegram/messenger/DialogsController;

    .line 62
    :cond_b
    sget-object v0, Lorg/telegram/messenger/DialogsController;->instance:Lorg/telegram/messenger/DialogsController;

    return-object v0
.end method

.method private isInDB(J)Z
    .registers 14
    .param p1, "did"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 247
    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 248
    .local v0, "tDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dialogs"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v10

    const-string v3, "user = ? AND did = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 249
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_5d

    .line 250
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 251
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 252
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v1, v9

    .line 258
    :goto_59
    return v1

    .line 255
    :cond_5a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_5d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v1, v10

    .line 258
    goto :goto_59
.end method

.method private setX(JLjava/lang/String;I)V
    .registers 14
    .param p1, "did"    # J
    .param p3, "column"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/DialogsController;->isInDB(J)Z

    move-result v2

    if-nez v2, :cond_9

    .line 221
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/DialogsController;->addToDB(J)V

    .line 223
    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 224
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 226
    .local v0, "tDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "dialogs"

    const-string v3, "user = ? AND did = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 228
    return-void
.end method

.method private setX(JLjava/lang/String;Z)V
    .registers 14
    .param p1, "did"    # J
    .param p3, "column"    # Ljava/lang/String;
    .param p4, "value"    # Z

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/DialogsController;->isInDB(J)Z

    move-result v2

    if-nez v2, :cond_9

    .line 210
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/DialogsController;->addToDB(J)V

    .line 212
    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 214
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 215
    .local v0, "tDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "dialogs"

    const-string v3, "user = ? AND did = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 217
    return-void
.end method


# virtual methods
.method public getAutoDownloadMask(J)I
    .registers 6
    .param p1, "did"    # J

    .prologue
    .line 105
    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 106
    .local v0, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-eqz v0, :cond_11

    iget v1, v0, Lorg/telegram/messenger/DialogsController$DialogInfo;->auto_download:I

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getBookmarkMessageId(J)I
    .registers 6
    .param p1, "did"    # J

    .prologue
    .line 100
    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 101
    .local v0, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-eqz v0, :cond_11

    iget v1, v0, Lorg/telegram/messenger/DialogsController$DialogInfo;->bookmark_mid:I

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public isDialogFavorite(J)Z
    .registers 6
    .param p1, "did"    # J

    .prologue
    .line 66
    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 67
    .local v0, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-eqz v0, :cond_14

    iget-boolean v1, v0, Lorg/telegram/messenger/DialogsController$DialogInfo;->fav:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public isDialogHidden(J)Z
    .registers 8
    .param p1, "did"    # J

    .prologue
    const/4 v2, 0x0

    .line 71
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, "tPrefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 73
    .local v0, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-eqz v0, :cond_29

    iget-boolean v3, v0, Lorg/telegram/messenger/DialogsController$DialogInfo;->hidden:Z

    if-eqz v3, :cond_29

    const-string v3, "hidden_key"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2a

    .line 76
    :cond_29
    :goto_29
    return v2

    :cond_2a
    const/4 v2, 0x1

    goto :goto_29
.end method

.method public isDialogLock(J)Z
    .registers 6
    .param p1, "did"    # J

    .prologue
    .line 80
    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 81
    .local v0, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-eqz v0, :cond_14

    iget-boolean v1, v0, Lorg/telegram/messenger/DialogsController$DialogInfo;->lock:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public isDialogPrivateRead(J)Z
    .registers 8
    .param p1, "did"    # J

    .prologue
    .line 87
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "preferences":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide_reading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isDialogPrivateTyping(J)Z
    .registers 8
    .param p1, "did"    # J

    .prologue
    .line 94
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, "preferences":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide_typing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public loadHiddenConfig()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 312
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 313
    .local v1, "tPrefs":Landroid/content/SharedPreferences;
    const-string v2, "hidden_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/DialogsController;->hiddenPasscodeHash:Ljava/lang/String;

    .line 314
    const-string v2, "hidden_key_use_fingerprint"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/DialogsController;->hiddenUseFingerprint:Z

    .line 315
    const-string v2, "hidden_key_type"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/DialogsController;->hiddenPasscodeType:I

    .line 316
    const-string v2, "hidden_key_salt"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "passcodeSaltString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_38

    .line 318
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/DialogsController;->hiddenPasscodeSalt:[B

    .line 322
    :goto_37
    return-void

    .line 320
    :cond_38
    new-array v2, v4, [B

    iput-object v2, p0, Lorg/telegram/messenger/DialogsController;->hiddenPasscodeSalt:[B

    goto :goto_37
.end method

.method public removeDialog(J)V
    .registers 10
    .param p1, "did"    # J

    .prologue
    .line 110
    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    .local v0, "tDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dialogs"

    const-string v2, "user = ? AND did = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 113
    return-void
.end method

.method public saveHiddenConfig()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 325
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 326
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "hidden_key"

    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->hiddenPasscodeHash:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    const-string v2, "hidden_key_salt"

    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->hiddenPasscodeSalt:[B

    array-length v1, v1

    if-lez v1, :cond_36

    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->hiddenPasscodeSalt:[B

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_21
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    const-string v1, "hidden_key_type"

    iget v2, p0, Lorg/telegram/messenger/DialogsController;->hiddenPasscodeType:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 329
    const-string v1, "hidden_key_use_fingerprint"

    iget-boolean v2, p0, Lorg/telegram/messenger/DialogsController;->hiddenUseFingerprint:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    return-void

    .line 327
    :cond_36
    const-string v1, ""

    goto :goto_21
.end method

.method public setAutoDownloadMask(JI)V
    .registers 15
    .param p1, "did"    # J
    .param p3, "value"    # I

    .prologue
    .line 189
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 190
    .local v10, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-nez v10, :cond_fe

    .line 193
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 194
    .local v0, "tDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dialogs"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "did"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "fav"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "hidden"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "lock"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "private_read"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "private_typing"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "bookmark_mid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "auto_download"

    aput-object v4, v2, v3

    const-string v3, "user = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 195
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_fc

    move-object v1, v10

    .line 196
    .end local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .local v1, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :goto_6b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 197
    new-instance v1, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    const-string v2, "fav"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e4

    const/4 v2, 0x1

    :goto_81
    const-string v3, "hidden"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e6

    const/4 v3, 0x1

    :goto_8f
    const-string v4, "lock"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e8

    const/4 v4, 0x1

    :goto_9d
    const-string v5, "private_read"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ea

    const/4 v5, 0x1

    :goto_ab
    const-string v6, "private_typing"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ec

    const/4 v6, 0x1

    :goto_b9
    const-string v7, "bookmark_mid"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "auto_download"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/DialogsController$DialogInfo;-><init>(ZZZZZII)V

    .line 198
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    const-string v3, "did"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 197
    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_e4
    const/4 v2, 0x0

    goto :goto_81

    :cond_e6
    const/4 v3, 0x0

    goto :goto_8f

    :cond_e8
    const/4 v4, 0x0

    goto :goto_9d

    :cond_ea
    const/4 v5, 0x0

    goto :goto_ab

    :cond_ec
    const/4 v6, 0x0

    goto :goto_b9

    .line 200
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_ee
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 202
    :goto_f1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 204
    .end local v0    # "tDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "c":Landroid/database/Cursor;
    :goto_f4
    iput p3, v1, Lorg/telegram/messenger/DialogsController$DialogInfo;->auto_download:I

    .line 205
    const-string v2, "auto_download"

    invoke-direct {p0, p1, p2, v2, p3}, Lorg/telegram/messenger/DialogsController;->setX(JLjava/lang/String;I)V

    .line 206
    return-void

    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .restart local v0    # "tDB":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_fc
    move-object v1, v10

    .end local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    goto :goto_f1

    .end local v0    # "tDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_fe
    move-object v1, v10

    .end local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    goto :goto_f4
.end method

.method public setBookmarkMessageId(JI)V
    .registers 7
    .param p1, "did"    # J
    .param p3, "value"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 180
    .local v0, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-nez v0, :cond_e

    .line 184
    :cond_e
    iput p3, v0, Lorg/telegram/messenger/DialogsController$DialogInfo;->bookmark_mid:I

    .line 185
    const-string v1, "bookmark_mid"

    invoke-direct {p0, p1, p2, v1, p3}, Lorg/telegram/messenger/DialogsController;->setX(JLjava/lang/String;I)V

    .line 186
    return-void
.end method

.method public setDialogFavorite(JZ)V
    .registers 7
    .param p1, "did"    # J
    .param p3, "value"    # Z

    .prologue
    .line 116
    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 117
    .local v0, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-nez v0, :cond_14

    .line 123
    :goto_e
    const-string v1, "fav"

    invoke-direct {p0, p1, p2, v1, p3}, Lorg/telegram/messenger/DialogsController;->setX(JLjava/lang/String;Z)V

    .line 124
    return-void

    .line 122
    :cond_14
    iput-boolean p3, v0, Lorg/telegram/messenger/DialogsController$DialogInfo;->fav:Z

    goto :goto_e
.end method

.method public setDialogHidden(JZ)V
    .registers 9
    .param p1, "did"    # J
    .param p3, "value"    # Z

    .prologue
    .line 127
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hidden_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 128
    iget-object v1, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 129
    .local v0, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-nez v0, :cond_2b

    .line 135
    :goto_25
    const-string v1, "hidden"

    invoke-direct {p0, p1, p2, v1, p3}, Lorg/telegram/messenger/DialogsController;->setX(JLjava/lang/String;Z)V

    .line 137
    .end local v0    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_2a
    return-void

    .line 134
    .restart local v0    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_2b
    iput-boolean p3, v0, Lorg/telegram/messenger/DialogsController$DialogInfo;->hidden:Z

    goto :goto_25
.end method

.method public setDialogPrivateRead(JZ)V
    .registers 15
    .param p1, "did"    # J
    .param p3, "value"    # Z

    .prologue
    .line 140
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 141
    .local v10, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-nez v10, :cond_fe

    .line 144
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 145
    .local v0, "tDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dialogs"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "did"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "fav"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "hidden"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "lock"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "private_read"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "private_typing"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "bookmark_mid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "auto_download"

    aput-object v4, v2, v3

    const-string v3, "user = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 146
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_fc

    move-object v1, v10

    .line 147
    .end local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .local v1, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :goto_6b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 148
    new-instance v1, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    const-string v2, "fav"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e4

    const/4 v2, 0x1

    :goto_81
    const-string v3, "hidden"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e6

    const/4 v3, 0x1

    :goto_8f
    const-string v4, "lock"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e8

    const/4 v4, 0x1

    :goto_9d
    const-string v5, "private_read"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ea

    const/4 v5, 0x1

    :goto_ab
    const-string v6, "private_typing"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ec

    const/4 v6, 0x1

    :goto_b9
    const-string v7, "bookmark_mid"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "auto_download"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/DialogsController$DialogInfo;-><init>(ZZZZZII)V

    .line 149
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    const-string v3, "did"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 148
    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_e4
    const/4 v2, 0x0

    goto :goto_81

    :cond_e6
    const/4 v3, 0x0

    goto :goto_8f

    :cond_e8
    const/4 v4, 0x0

    goto :goto_9d

    :cond_ea
    const/4 v5, 0x0

    goto :goto_ab

    :cond_ec
    const/4 v6, 0x0

    goto :goto_b9

    .line 151
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_ee
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 153
    :goto_f1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 155
    .end local v0    # "tDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "c":Landroid/database/Cursor;
    :goto_f4
    iput-boolean p3, v1, Lorg/telegram/messenger/DialogsController$DialogInfo;->private_read:Z

    .line 156
    const-string v2, "private_read"

    invoke-direct {p0, p1, p2, v2, p3}, Lorg/telegram/messenger/DialogsController;->setX(JLjava/lang/String;Z)V

    .line 157
    return-void

    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .restart local v0    # "tDB":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_fc
    move-object v1, v10

    .end local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    goto :goto_f1

    .end local v0    # "tDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_fe
    move-object v1, v10

    .end local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    goto :goto_f4
.end method

.method public setDialogPrivateTyping(JZ)V
    .registers 15
    .param p1, "did"    # J
    .param p3, "value"    # Z

    .prologue
    .line 160
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .line 161
    .local v10, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    if-nez v10, :cond_fe

    .line 163
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->tDBHelper:Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    .local v0, "tDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dialogs"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "did"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "fav"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "hidden"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "lock"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "private_read"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "private_typing"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "bookmark_mid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "auto_download"

    aput-object v4, v2, v3

    const-string v3, "user = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 165
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_fc

    move-object v1, v10

    .line 166
    .end local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .local v1, "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :goto_6b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 167
    new-instance v1, Lorg/telegram/messenger/DialogsController$DialogInfo;

    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    const-string v2, "fav"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e4

    const/4 v2, 0x1

    :goto_81
    const-string v3, "hidden"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e6

    const/4 v3, 0x1

    :goto_8f
    const-string v4, "lock"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e8

    const/4 v4, 0x1

    :goto_9d
    const-string v5, "private_read"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ea

    const/4 v5, 0x1

    :goto_ab
    const-string v6, "private_typing"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ec

    const/4 v6, 0x1

    :goto_b9
    const-string v7, "bookmark_mid"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "auto_download"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/DialogsController$DialogInfo;-><init>(ZZZZZII)V

    .line 168
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    iget-object v2, p0, Lorg/telegram/messenger/DialogsController;->dialogsDict:Ljava/util/HashMap;

    const-string v3, "did"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 167
    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_e4
    const/4 v2, 0x0

    goto :goto_81

    :cond_e6
    const/4 v3, 0x0

    goto :goto_8f

    :cond_e8
    const/4 v4, 0x0

    goto :goto_9d

    :cond_ea
    const/4 v5, 0x0

    goto :goto_ab

    :cond_ec
    const/4 v6, 0x0

    goto :goto_b9

    .line 170
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_ee
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 172
    :goto_f1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 174
    .end local v0    # "tDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "c":Landroid/database/Cursor;
    :goto_f4
    iput-boolean p3, v1, Lorg/telegram/messenger/DialogsController$DialogInfo;->private_typing:Z

    .line 175
    const-string v2, "private_typing"

    invoke-direct {p0, p1, p2, v2, p3}, Lorg/telegram/messenger/DialogsController;->setX(JLjava/lang/String;Z)V

    .line 176
    return-void

    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .restart local v0    # "tDB":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_fc
    move-object v1, v10

    .end local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    goto :goto_f1

    .end local v0    # "tDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    :cond_fe
    move-object v1, v10

    .end local v10    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    .restart local v1    # "info":Lorg/telegram/messenger/DialogsController$DialogInfo;
    goto :goto_f4
.end method

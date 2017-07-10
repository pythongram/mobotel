.class public Lorg/telegram/ui/Telehgram/Teleh/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "b.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "var1"    # Landroid/content/Context;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/ui/Telehgram/Teleh/bd;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    invoke-static {p1}, Lorg/telegram/ui/Telehgram/Teleh/bd;->a(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v1, v0, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 19
    const-string v0, "create table tbl_update ( _id integer primary key autoincrement, type integer,old_value text,new_value text,user_id integer,is_new integer,change_date integer default (strftime(\'%s\',\'now\') * 1000))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 23
    const-string v0, "create table tbl_setting ( _id integer primary key autoincrement, key text, value text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    const-string v0, "INSERT INTO tbl_setting VALUES (1,\'notifyChanges\',\'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    const-string v0, "INSERT INTO tbl_setting VALUES (2,\'notifyNameChanges\',\'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    const-string v0, "INSERT INTO tbl_setting VALUES (3,\'notifyStatusChanges\',\'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    const-string v0, "INSERT INTO tbl_setting VALUES (4,\'notifyPhotoChanges\',\'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    const-string v0, "INSERT INTO tbl_setting VALUES (5,\'notifyPhoneChanges\',\'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 32
    const-string v0, "create table tbl_alarm ( _id integer primary key autoincrement, title text,message text,imageUrl text,positiveBtnText text,positiveBtnAction text,positiveBtnUrl text,negativeBtnText text,negativeBtnAction text,negativeBtnUrl text,showCount integer,exitOnDismiss integer,targetNetwork integer,displayCount integer,targetVersion integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 36
    const-string v0, "create table tbl_favorite ( _id integer primary key autoincrement, chatID integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    const-string v0, "create table tbl_hidden ( _id integer primary key autoincrement, dialogID integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 44
    const-string v0, "create table tbl_category ( _id integer primary key autoincrement, name text,priority integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private g(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 48
    const-string v0, "create table tbl_cat_dlg_info ( _id integer primary key autoincrement, dialogId integer,categoryId integer, foreign key( categoryId ) references tbl_category ( _id ) ON DELETE CASCADE )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private h(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 52
    const-string v0, "CREATE TRIGGER trg_category_priority_from_id AFTER INSERT ON tbl_category FOR EACH ROW  WHEN NEW.priority IS NULL  BEGIN  UPDATE tbl_category SET priority= NEW._id WHERE rowid = NEW.rowid;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private i(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 56
    const-string v0, "create table tbl_favorite_stickers ( _id integer primary key autoincrement, doc_id integer,priority integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private j(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 60
    const-string v0, "CREATE TRIGGER trg_fav_stickers_priority_from_id AFTER INSERT ON tbl_favorite_stickers FOR EACH ROW  WHEN NEW.priority IS NULL  BEGIN  UPDATE tbl_favorite_stickers SET priority= NEW._id WHERE rowid = NEW.rowid;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 12
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 64
    const/4 v2, 0x1

    .line 65
    .local v2, "var5":Z
    const/4 v3, 0x0

    .line 66
    .local v3, "var6":Z
    move v1, v3

    .line 67
    .local v1, "var4":I
    if-eqz p2, :cond_10

    .line 68
    move v1, v3

    .line 69
    if-eqz p1, :cond_10

    .line 70
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_11

    .line 71
    move v1, v3

    .line 88
    .end local v1    # "var4":I
    :cond_10
    :goto_10
    return v1

    .line 73
    .restart local v1    # "var4":I
    :cond_11
    const-string v5, "SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "table"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 74
    .local v4, "var7":Landroid/database/Cursor;
    move v1, v3

    .line 75
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 76
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 77
    .local v0, "var3":I
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 78
    if-lez v0, :cond_33

    .line 79
    move v1, v2

    goto :goto_10

    .line 81
    :cond_33
    const/4 v1, 0x0

    .local v1, "var4":Z
    goto :goto_10
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 102
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_e

    .line 107
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    :cond_e
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .param p1, "var1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .prologue
    const/4 v4, 0x0

    .line 113
    add-int/lit8 p3, p2, 0x1

    .line 114
    move p2, p3

    .line 115
    const/4 v2, 0x1

    if-ne p3, v2, :cond_9

    .line 116
    add-int/lit8 p2, p3, 0x1

    .line 119
    :cond_9
    move p3, p2

    .line 120
    const v2, 0xff8c

    if-gt p2, v2, :cond_12

    .line 121
    const p3, 0xff8d

    .line 124
    :cond_12
    move p2, p3

    .line 125
    const v2, 0xff8d

    if-ne p3, v2, :cond_1d

    .line 126
    add-int/lit8 p2, p3, 0x1

    .line 127
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    :cond_1d
    move v0, p2

    .line 131
    .local v0, "var4":I
    const v2, 0xff8e

    if-ne p2, v2, :cond_25

    .line 132
    add-int/lit8 v0, p2, 0x1

    .line 135
    :cond_25
    move p3, v0

    .line 136
    const v2, 0xff8f

    if-ne v0, v2, :cond_2d

    .line 137
    add-int/lit8 p3, v0, 0x1

    .line 140
    :cond_2d
    move p2, p3

    .line 141
    const v2, 0xff90

    if-ne p3, v2, :cond_40

    .line 142
    add-int/lit8 p2, p3, 0x1

    .line 143
    const-string v2, "drop table tbl_alarm"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    :cond_40
    move p3, p2

    .line 149
    const v2, 0x10bb0

    if-gt p2, v2, :cond_49

    .line 150
    const p3, 0x10bb1

    .line 153
    :cond_49
    move p2, p3

    .line 154
    const v2, 0x10bb1

    if-ne p3, v2, :cond_72

    .line 155
    add-int/lit8 p3, p3, 0x1

    .line 156
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 157
    .local v1, "var5":Landroid/content/SharedPreferences;
    move p2, p3

    .line 158
    const-string v2, "default_tab"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_72

    .line 159
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "default_tab"

    const/4 v4, 0x7

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    move p2, p3

    .line 164
    .end local v1    # "var5":Landroid/content/SharedPreferences;
    :cond_72
    move p3, p2

    .line 165
    const v2, 0x11908

    if-gt p2, v2, :cond_7b

    .line 166
    const p3, 0x11909

    .line 169
    :cond_7b
    move v0, p3

    .line 170
    const v2, 0x11909

    if-ne p3, v2, :cond_86

    .line 171
    add-int/lit8 v0, p3, 0x1

    .line 172
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 175
    :cond_86
    move p2, v0

    .line 176
    const v2, 0x11913

    if-gt v0, v2, :cond_8f

    .line 177
    const p2, 0x11914

    .line 180
    :cond_8f
    move p3, p2

    .line 181
    const v2, 0x11914

    if-ne p2, v2, :cond_a0

    .line 182
    add-int/lit8 p3, p2, 0x1

    .line 183
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 184
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 185
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 188
    :cond_a0
    move p2, p3

    .line 189
    const v2, 0x11915

    if-ne p3, v2, :cond_ae

    .line 190
    add-int/lit8 p2, p3, 0x1

    .line 191
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 192
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 195
    :cond_ae
    move p3, p2

    .line 196
    const v2, 0x1191b

    if-gt p2, v2, :cond_b7

    .line 197
    const p3, 0x1191c

    .line 200
    :cond_b7
    const v2, 0x1191c

    if-ne p3, v2, :cond_db

    .line 201
    const-string v2, "tbl_category"

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cd

    .line 202
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 203
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 204
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 207
    :cond_cd
    const-string v2, "tbl_favorite_stickers"

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_db

    .line 208
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 209
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/Teleh/b/b;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    :cond_db
    return-void
.end method

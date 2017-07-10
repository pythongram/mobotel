.class public Lco/ronash/pushe/d/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lco/ronash/pushe/d/a;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lco/ronash/pushe/d/a;->a(Landroid/content/Context;)Lco/ronash/pushe/d/a;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/d/e;->b:Lco/ronash/pushe/d/a;

    iput-object p1, p0, Lco/ronash/pushe/d/e;->c:Landroid/content/Context;

    invoke-direct {p0}, Lco/ronash/pushe/d/e;->c()V

    return-void
.end method

.method private a(I)V
    .registers 5

    iget-object v0, p0, Lco/ronash/pushe/d/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "_$_sch_total_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lco/ronash/pushe/d/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string v2, "_$_sch_total_size"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lco/ronash/pushe/d/e;->b:Lco/ronash/pushe/d/a;

    invoke-virtual {v0}, Lco/ronash/pushe/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_18
    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/d;Ljava/lang/String;)J
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v0, v1

    :goto_7
    invoke-virtual {p1}, Lco/ronash/pushe/k/d;->size()I

    move-result v2

    if-ge v0, v2, :cond_61

    :try_start_d
    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/d;->b(I)Lco/ronash/pushe/k/l;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_52

    move-result-object v2

    :goto_15
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "col_json"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "col_type"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "_collection_data"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_58

    const-string v3, "Insert Transaction: Inserting data to CollectionDB failed."

    new-instance v4, Lco/ronash/pushe/log/d;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "collection-type"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    const-string v7, "Data"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v3, v4}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_52
    move-exception v2

    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/d;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_58
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lco/ronash/pushe/d/e;->a(I)V

    goto :goto_4f

    :cond_61
    iget-object v0, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v0, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public a(Lco/ronash/pushe/k/l;Ljava/lang/String;)J
    .registers 11

    invoke-virtual {p1}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "col_json"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "col_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "_collection_data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_40

    const-string v1, "Inserting data to CollectionDB failed."

    new-instance v4, Lco/ronash/pushe/log/d;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "collection-type"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    const-string v7, "Data"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v4}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :goto_3f
    return-wide v2

    :cond_40
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/d/e;->a(I)V

    goto :goto_3f
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "col_json"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "col_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "_collection_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lco/ronash/pushe/d/e;->a(I)V

    return-wide v0
.end method

.method public a()Ljava/util/Map;
    .registers 8

    const-string v0, "select * from _collection_data"

    iget-object v1, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const-string v0, ""

    const-string v0, ""

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_17
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_6b

    move-result v0

    if-nez v0, :cond_22

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    move v2, v0

    :goto_24
    :try_start_24
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_70

    const-string v0, "col_json"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "col_type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    new-instance v0, Lco/ronash/pushe/k/d;

    invoke-direct {v0}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_6b

    :cond_4c
    :try_start_4c
    invoke-static {v4}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v6

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/k/d;

    invoke-virtual {v0, v6}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V
    :try_end_59
    .catch Lco/ronash/pushe/k/c; {:try_start_4c .. :try_end_59} :catch_60
    .catchall {:try_start_4c .. :try_end_59} :catchall_6b

    :goto_59
    :try_start_59
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_24

    :catch_60
    move-exception v0

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/k/d;

    invoke-virtual {v0, v4}, Lco/ronash/pushe/k/d;->b(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_6b

    goto :goto_59

    :catchall_6b
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_70
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_21
.end method

.method public b()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "_collection_data"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lco/ronash/pushe/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "VACUUM"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

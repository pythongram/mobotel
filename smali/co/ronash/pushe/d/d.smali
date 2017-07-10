.class public Lco/ronash/pushe/d/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lco/ronash/pushe/d/d;


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lco/ronash/pushe/d/a;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lco/ronash/pushe/d/a;->a(Landroid/content/Context;)Lco/ronash/pushe/d/a;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/d/d;->c:Lco/ronash/pushe/d/a;

    invoke-virtual {p0}, Lco/ronash/pushe/d/d;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/d/d;
    .registers 3

    sget-object v0, Lco/ronash/pushe/d/d;->a:Lco/ronash/pushe/d/d;

    if-nez v0, :cond_17

    const-class v1, Lco/ronash/pushe/d/d;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lco/ronash/pushe/d/d;->a:Lco/ronash/pushe/d/d;

    if-nez v0, :cond_16

    new-instance v0, Lco/ronash/pushe/d/d;

    invoke-direct {v0, p0}, Lco/ronash/pushe/d/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/ronash/pushe/d/d;->a:Lco/ronash/pushe/d/d;

    sget-object v0, Lco/ronash/pushe/d/d;->a:Lco/ronash/pushe/d/d;

    iput-object p0, v0, Lco/ronash/pushe/d/d;->d:Landroid/content/Context;

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1a

    :cond_17
    sget-object v0, Lco/ronash/pushe/d/d;->a:Lco/ronash/pushe/d/d;

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lco/ronash/pushe/k/q;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lco/ronash/pushe/h/b/o;)J
    .registers 9

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/16 v0, 0x0

    :cond_f
    :goto_f
    return-wide v0

    :cond_10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "gcm_msg_id"

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->d()Lco/ronash/pushe/h/b/p;

    move-result-object v1

    if-eqz v1, :cond_35

    const-string v1, "msg_type"

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->d()Lco/ronash/pushe/h/b/p;

    move-result-object v4

    invoke-virtual {v4}, Lco/ronash/pushe/h/b/p;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_35
    const-string v1, "msg_create_date"

    invoke-direct {p0}, Lco/ronash/pushe/d/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_create_time"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "msg_data"

    invoke-virtual {p1}, Lco/ronash/pushe/h/b/o;->b()Lco/ronash/pushe/k/l;

    move-result-object v4

    invoke-virtual {v4}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5d
    iget-object v1, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "_upstream_n_notif_table"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    const-string v4, "Inserting message to android sqlite DB failed."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_72
    .catch Landroid/database/SQLException; {:try_start_5d .. :try_end_72} :catch_73

    goto :goto_f

    :catch_73
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting message errored: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v1, v4}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    goto/16 :goto_f
.end method

.method public a(Lco/ronash/pushe/k/l;Ljava/lang/String;)J
    .registers 10

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lco/ronash/pushe/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x0

    :cond_b
    :goto_b
    return-wide v0

    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "gcm_msg_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_type"

    sget-object v4, Lco/ronash/pushe/h/b/p;->k:Lco/ronash/pushe/h/b/p;

    invoke-virtual {v4}, Lco/ronash/pushe/h/b/p;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "msg_create_date"

    invoke-direct {p0}, Lco/ronash/pushe/d/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_create_time"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "msg_data"

    invoke-virtual {p1}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_49
    iget-object v1, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "_upstream_n_notif_table"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const-string v4, "Inserting message to android sqlite DB failed."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5e
    .catch Landroid/database/SQLException; {:try_start_49 .. :try_end_5e} :catch_5f

    goto :goto_b

    :catch_5f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting message errored: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v1, v4}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_b
.end method

.method public a(Ljava/lang/String;I)J
    .registers 9

    invoke-direct {p0}, Lco/ronash/pushe/d/d;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lco/ronash/pushe/d/d;->a(Ljava/lang/String;ILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;J)J
    .registers 14

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lco/ronash/pushe/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x0

    :cond_b
    :goto_b
    return-wide v0

    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "gcm_msg_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "msg_create_date"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_create_time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_2d
    iget-object v1, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "_upstream_n_notif_table"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const-string v4, "Inserting notification messageId to android sqlite DB failed."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_42
    .catch Landroid/database/SQLException; {:try_start_2d .. :try_end_42} :catch_43

    goto :goto_b

    :catch_43
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when inserting notification messageId to android sqlite DB: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v1, v4}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_b
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lco/ronash/pushe/d/d;->c:Lco/ronash/pushe/d/a;

    invoke-virtual {v0}, Lco/ronash/pushe/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_18
    return-void
.end method

.method public a(J)V
    .registers 12

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM _upstream_n_notif_table t WHERE t.msg_create_time < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Lco/ronash/pushe/log/d;

    invoke-direct {v2}, Lco/ronash/pushe/log/d;-><init>()V

    :goto_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_87

    const-string v3, "msg_data"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6e

    const-string v4, "message_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6e

    :try_start_3a
    invoke-static {v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v4

    if-eqz v4, :cond_6e

    invoke-virtual {v4}, Lco/ronash/pushe/k/l;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6e

    const-string v5, "sending_retry"

    const-string v6, "sending_retry"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    iget-object v5, p0, Lco/ronash/pushe/d/d;->d:Landroid/content/Context;

    invoke-static {v4, v5}, Lco/ronash/pushe/i/a;->a(Lco/ronash/pushe/k/l;Landroid/content/Context;)Ljava/lang/String;

    const-string v4, "Retry sending upstream message"

    new-instance v5, Lco/ronash/pushe/log/d;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "message"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-direct {v5, v6}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v4, v5}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V
    :try_end_6e
    .catch Lco/ronash/pushe/k/c; {:try_start_3a .. :try_end_6e} :catch_92

    :cond_6e
    :goto_6e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lco/ronash/pushe/log/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_87
    if-lez v0, :cond_8e

    const-string v0, "List and Content of outdated upstream messages: "

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :cond_8e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catch_92
    move-exception v4

    goto :goto_6e
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM _upstream_n_notif_table t WHERE t.gcm_msg_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lco/ronash/pushe/d/d;->a(J)V

    const-string v2, "msg_create_time < ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "_upstream_n_notif_table"

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lco/ronash/pushe/k/l;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM _upstream_n_notif_table t WHERE t.gcm_msg_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "msg_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :try_start_30
    invoke-static {v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;)Lco/ronash/pushe/k/l;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_38

    move-result-object v0

    :cond_34
    :goto_34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catch_38
    move-exception v2

    goto :goto_34
.end method

.method public c(Ljava/lang/String;)I
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "gcm_msg_id = ? "

    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v4

    iget-object v2, p0, Lco/ronash/pushe/d/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "_upstream_n_notif_table"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing MessageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from android sqlite DB affected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    return v0
.end method

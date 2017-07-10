.class public Lco/ronash/pushe/d/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lco/ronash/pushe/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lco/ronash/pushe/d/a;->a(Landroid/content/Context;)Lco/ronash/pushe/d/a;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/d/f;->b:Lco/ronash/pushe/d/a;

    return-void
.end method

.method private a(Landroid/database/Cursor;)Lco/ronash/pushe/task/scheduler/b/b;
    .registers 10

    const-wide/16 v6, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lco/ronash/pushe/task/scheduler/b/b;

    invoke-direct {v3}, Lco/ronash/pushe/task/scheduler/b/b;-><init>()V

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lco/ronash/pushe/task/scheduler/b/b;->c(J)V

    const-string v0, "back_off_count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lco/ronash/pushe/task/scheduler/b/b;->a(I)V

    const-string v0, "task_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lco/ronash/pushe/task/scheduler/b/b;->b(I)V

    const-string v0, "task_delay"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lco/ronash/pushe/task/scheduler/b/b;->b(J)V

    const-string v0, "next_try_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lco/ronash/pushe/task/scheduler/b/b;->a(J)V

    const-string v0, "tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lco/ronash/pushe/task/scheduler/b/b;->a(Ljava/lang/String;)V

    const-string v0, "network_required"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_79

    move v0, v1

    :goto_66
    invoke-virtual {v3, v0}, Lco/ronash/pushe/task/scheduler/b/b;->a(Z)V

    const-string v0, "is_periodic"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_7b

    :goto_75
    invoke-virtual {v3, v1}, Lco/ronash/pushe/task/scheduler/b/b;->b(Z)V

    return-object v3

    :cond_79
    move v0, v2

    goto :goto_66

    :cond_7b
    move v1, v2

    goto :goto_75
.end method

.method private b(Lco/ronash/pushe/task/scheduler/b/b;)Landroid/content/ContentValues;
    .registers 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-wide/16 v4, 0x3e8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "network_required"

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "is_periodic"

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->i()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "next_try_time"

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->f()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "back_off_count"

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "task_delay"

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->h()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "tag"

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "task_type"

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "created_at"

    invoke-direct {p0}, Lco/ronash/pushe/d/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v0, v1}, Lco/ronash/pushe/k/q;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lco/ronash/pushe/task/scheduler/b/b;)J
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_d

    const-string v0, "The task passed to insertTask was null."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_c
    :goto_c
    return-wide v0

    :cond_d
    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->l()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lco/ronash/pushe/d/f;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lco/ronash/pushe/task/scheduler/b/b;->l()J

    move-result-wide v0

    goto :goto_c

    :cond_1c
    invoke-direct {p0, p1}, Lco/ronash/pushe/d/f;->b(Lco/ronash/pushe/task/scheduler/b/b;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/d/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "_task_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const-string v2, "Inserting single task to android sqlite DB failed."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public a(I)Ljava/util/List;
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM _task_table t WHERE t.task_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_19
    iget-object v3, p0, Lco/ronash/pushe/d/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_34
    .catchall {:try_start_19 .. :try_end_1f} :catchall_4d

    move-result-object v0

    :try_start_20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_41

    invoke-direct {p0, v0}, Lco/ronash/pushe/d/f;->a(Landroid/database/Cursor;)Lco/ronash/pushe/task/scheduler/b/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_34
    .catchall {:try_start_20 .. :try_end_33} :catchall_5d

    goto :goto_23

    :catch_34
    move-exception v2

    if-eqz v0, :cond_40

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_40
    :goto_40
    return-object v1

    :cond_41
    if-eqz v0, :cond_40

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_40

    :catchall_4d
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_51
    if-eqz v1, :cond_5c

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0

    :catchall_5d
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_51
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/d/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lco/ronash/pushe/d/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lco/ronash/pushe/d/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lco/ronash/pushe/d/f;->b:Lco/ronash/pushe/d/a;

    invoke-virtual {v0}, Lco/ronash/pushe/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/d/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_18
    return-void
.end method

.method public a(J)Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM _task_table t WHERE t._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/d/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public b(J)I
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "_id = ? "

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lco/ronash/pushe/d/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "_task_table"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_1d

    const-string v1, "Removing single task from android sqlite DB affected 0 row or more than 1 rows"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    return v0
.end method

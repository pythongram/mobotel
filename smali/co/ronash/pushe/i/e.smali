.class public Lco/ronash/pushe/i/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lco/ronash/pushe/i/e;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/i/e;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/i/e;
    .registers 3

    sget-object v0, Lco/ronash/pushe/i/e;->a:Lco/ronash/pushe/i/e;

    if-nez v0, :cond_13

    const-class v1, Lco/ronash/pushe/i/e;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lco/ronash/pushe/i/e;->a:Lco/ronash/pushe/i/e;

    if-nez v0, :cond_12

    new-instance v0, Lco/ronash/pushe/i/e;

    invoke-direct {v0, p0}, Lco/ronash/pushe/i/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/ronash/pushe/i/e;->a:Lco/ronash/pushe/i/e;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1b

    :cond_13
    sget-object v0, Lco/ronash/pushe/i/e;->a:Lco/ronash/pushe/i/e;

    invoke-virtual {v0, p0}, Lco/ronash/pushe/i/e;->b(Landroid/content/Context;)V

    sget-object v0, Lco/ronash/pushe/i/e;->a:Lco/ronash/pushe/i/e;

    return-object v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lco/ronash/pushe/i/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "_$_sch_total_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/i/e;->a(Z)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V
    .registers 6

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    new-instance v1, Lco/ronash/pushe/h/b/j;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/j;-><init>()V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/j;->b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    new-instance v1, Lco/ronash/pushe/i/f;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/i/f;->a(Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    .registers 4

    new-instance v0, Lco/ronash/pushe/k/d;

    invoke-direct {v0}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-virtual {v0, p2}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    invoke-direct {p0, p1, v0}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    invoke-virtual {v0, p1, p2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized c(Ljava/lang/String;Lco/ronash/pushe/k/d;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    new-instance v0, Lco/ronash/pushe/d/e;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/ronash/pushe/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p1}, Lco/ronash/pushe/d/e;->a(Lco/ronash/pushe/k/d;Ljava/lang/String;)J

    const-string v0, "SendManager saved ListPack to DB"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "listPack"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lco/ronash/pushe/k/d;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Lco/ronash/pushe/k/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-direct {p0}, Lco/ronash/pushe/i/e;->b()V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    monitor-exit p0

    return-void

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    new-instance v0, Lco/ronash/pushe/d/e;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/ronash/pushe/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p1}, Lco/ronash/pushe/d/e;->a(Lco/ronash/pushe/k/l;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4a

    const-string v0, "SendManager saved pack to DB"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :cond_4a
    invoke-direct {p0}, Lco/ronash/pushe/i/e;->b()V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    monitor-exit p0

    return-void

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    new-instance v0, Lco/ronash/pushe/d/e;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/ronash/pushe/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p1}, Lco/ronash/pushe/d/e;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_42

    const-string v0, "SendManager saved string to DB"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :cond_42
    invoke-direct {p0}, Lco/ronash/pushe/i/e;->b()V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    monitor-exit p0

    return-void

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/i/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lco/ronash/pushe/k/d;)V
    .registers 4

    invoke-direct {p0, p1}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    goto :goto_6

    :cond_11
    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->c(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    .registers 4

    invoke-direct {p0, p1}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    goto :goto_6

    :cond_11
    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->c(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/i/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 6

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$send_immediate_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized a(Z)V
    .registers 14

    monitor-enter p0

    :try_start_1
    new-instance v6, Lco/ronash/pushe/d/e;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lco/ronash/pushe/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lco/ronash/pushe/d/e;->a()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lco/ronash/pushe/i/f;

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    new-instance v4, Lco/ronash/pushe/k/l;

    invoke-direct {v4}, Lco/ronash/pushe/k/l;-><init>()V

    const-wide/16 v2, 0x0

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move v5, v1

    :goto_34
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/ronash/pushe/k/d;

    invoke-virtual {v1}, Lco/ronash/pushe/k/d;->size()I

    move-result v1

    if-ge v5, v1, :cond_26

    invoke-virtual {v4, v0}, Lco/ronash/pushe/k/l;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    new-instance v1, Lco/ronash/pushe/k/d;

    invoke-direct {v1}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-virtual {v4, v0, v1}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_e3

    :cond_4e
    :try_start_4e
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/ronash/pushe/k/d;

    invoke-virtual {v1, v5}, Lco/ronash/pushe/k/d;->b(I)Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v4, v0}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v10

    invoke-virtual {v10, v1}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    invoke-virtual {v1}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_68
    .catch Ljava/lang/ClassCastException; {:try_start_4e .. :try_end_68} :catch_88
    .catchall {:try_start_4e .. :try_end_68} :catchall_e3

    int-to-long v10, v1

    add-long/2addr v2, v10

    :goto_6a
    const-wide/16 v10, 0xbb8

    cmp-long v1, v2, v10

    if-ltz v1, :cond_e8

    :try_start_70
    new-instance v1, Lco/ronash/pushe/h/b/j;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/j;-><init>()V

    invoke-virtual {v1, v4}, Lco/ronash/pushe/h/b/j;->b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v8, v1}, Lco/ronash/pushe/i/f;->a(Lco/ronash/pushe/k/l;)V

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    const-wide/16 v2, 0x0

    :goto_83
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v1

    goto :goto_34

    :catch_88
    move-exception v1

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/ronash/pushe/k/d;

    invoke-virtual {v1, v5}, Lco/ronash/pushe/k/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v10

    invoke-virtual {v10, v1}, Lco/ronash/pushe/k/d;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v10, v1

    add-long/2addr v2, v10

    goto :goto_6a

    :cond_a2
    invoke-virtual {v6}, Lco/ronash/pushe/d/e;->b()V

    iget-object v0, p0, Lco/ronash/pushe/i/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "_$_sch_total_size"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;I)V

    if-eqz p1, :cond_c5

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_c5

    new-instance v0, Lco/ronash/pushe/h/b/j;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/j;-><init>()V

    invoke-virtual {v0, v4}, Lco/ronash/pushe/h/b/j;->b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    invoke-virtual {v8, v0}, Lco/ronash/pushe/i/f;->a(Lco/ronash/pushe/k/l;)V

    :cond_c5
    if-nez p1, :cond_e6

    invoke-virtual {v4}, Lco/ronash/pushe/k/l;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-virtual {v6, v2, v0}, Lco/ronash/pushe/d/e;->a(Lco/ronash/pushe/k/d;Ljava/lang/String;)J
    :try_end_e2
    .catchall {:try_start_70 .. :try_end_e2} :catchall_e3

    goto :goto_cf

    :catchall_e3
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e6
    monitor-exit p0

    return-void

    :cond_e8
    move-object v1, v4

    goto :goto_83
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "t1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$send_immediate_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    :goto_28
    return v0

    :cond_29
    invoke-virtual {p0}, Lco/ronash/pushe/i/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$send_immediate_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_28
.end method

.method public b(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/i/e;->b:Landroid/content/Context;

    return-void
.end method

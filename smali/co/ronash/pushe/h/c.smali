.class public Lco/ronash/pushe/h/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lco/ronash/pushe/h/c;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lco/ronash/pushe/h/c;
    .registers 2

    sget-object v0, Lco/ronash/pushe/h/c;->a:Lco/ronash/pushe/h/c;

    if-nez v0, :cond_13

    const-class v1, Lco/ronash/pushe/h/c;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lco/ronash/pushe/h/c;->a:Lco/ronash/pushe/h/c;

    if-nez v0, :cond_12

    new-instance v0, Lco/ronash/pushe/h/c;

    invoke-direct {v0}, Lco/ronash/pushe/h/c;-><init>()V

    sput-object v0, Lco/ronash/pushe/h/c;->a:Lco/ronash/pushe/h/c;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lco/ronash/pushe/h/c;->a:Lco/ronash/pushe/h/c;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Lco/ronash/pushe/h/a;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lco/ronash/pushe/h/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "M##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/h/a;)V
    .registers 6

    invoke-virtual {p2}, Lco/ronash/pushe/h/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "Storing message without id"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p2}, Lco/ronash/pushe/h/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string v1, "message_direction"

    invoke-virtual {p2}, Lco/ronash/pushe/h/a;->a()Lco/ronash/pushe/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/h/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_id"

    invoke-virtual {p2}, Lco/ronash/pushe/h/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    invoke-direct {p0, p2}, Lco/ronash/pushe/h/c;->a(Lco/ronash/pushe/h/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;Ljava/lang/String;)V
    .registers 6

    if-nez p3, :cond_a

    const-string v0, "Storing message without id"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    const-string v0, "message_direction"

    sget-object v1, Lco/ronash/pushe/h/b;->b:Lco/ronash/pushe/h/b;

    invoke-virtual {v1}, Lco/ronash/pushe/h/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "message_id"

    invoke-virtual {p2, v0, p3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-direct {p0, p3}, Lco/ronash/pushe/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-direct {p0, p2}, Lco/ronash/pushe/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Lco/ronash/pushe/k/l;
    .registers 5

    if-nez p2, :cond_9

    new-instance v0, Lco/ronash/pushe/h/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/ronash/pushe/h/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-direct {p0, p2}, Lco/ronash/pushe/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-nez v0, :cond_1d

    new-instance v0, Lco/ronash/pushe/h/e;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    return-object v0
.end method

.method public b(Landroid/content/Context;Lco/ronash/pushe/h/a;)V
    .registers 5

    invoke-virtual {p2}, Lco/ronash/pushe/h/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "Deleting message without id"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-direct {p0, p2}, Lco/ronash/pushe/h/c;->a(Lco/ronash/pushe/h/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Lco/ronash/pushe/h/a;
    .registers 12

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_c

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, v4}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {p1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    invoke-direct {p0, p2}, Lco/ronash/pushe/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const-string v1, "message_direction"

    invoke-virtual {v0, v1, v4}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    const-string v0, "Invalid message json when retrieving from message store: no message direction"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :try_start_35
    invoke-static {v1}, Lco/ronash/pushe/h/b;->valueOf(Ljava/lang/String;)Lco/ronash/pushe/h/b;
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_38} :catch_78

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3, v4}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lco/ronash/pushe/h/b;->a:Lco/ronash/pushe/h/b;

    invoke-virtual {v2, v4}, Lco/ronash/pushe/h/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    :try_start_47
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lco/ronash/pushe/h/a/j;->a(I)Lco/ronash/pushe/h/a/j;

    move-result-object v2

    if-nez v2, :cond_91

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_57} :catch_57

    :catch_57
    move-exception v0

    const-string v0, "Invalid message type when retrieving from message store"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Message Type"

    aput-object v5, v4, v6

    aput-object v3, v4, v7

    const-string v3, "Message Direction"

    aput-object v3, v4, v8

    const/4 v3, 0x3

    aput-object v1, v4, v3

    invoke-direct {v2, v4}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_78
    move-exception v0

    const-string v0, "Invalid message direction when retrieving from message store"

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "Message Direction"

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    invoke-virtual {v2}, Lco/ronash/pushe/h/a/j;->b()Lco/ronash/pushe/h/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/a/k;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/i;

    move-result-object v0

    :goto_99
    return-object v0

    :cond_9a
    sget-object v1, Lco/ronash/pushe/h/b;->b:Lco/ronash/pushe/h/b;

    invoke-virtual {v2, v1}, Lco/ronash/pushe/h/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    :try_start_a2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lco/ronash/pushe/h/b/p;->a(I)Lco/ronash/pushe/h/b/p;

    move-result-object v1

    if-nez v1, :cond_cb

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a2 .. :try_end_b2} :catch_b2

    :catch_b2
    move-exception v0

    const-string v0, "Invalid message type when retrieving from message store"

    new-instance v1, Lco/ronash/pushe/log/d;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "Message Type"

    aput-object v4, v2, v6

    aput-object v3, v2, v7

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cb
    invoke-virtual {v1}, Lco/ronash/pushe/h/b/p;->b()Lco/ronash/pushe/h/b/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/q;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;

    move-result-object v0

    goto :goto_99

    :cond_d4
    new-instance v0, Lco/ronash/pushe/h/d;

    invoke-direct {v0, p2}, Lco/ronash/pushe/h/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

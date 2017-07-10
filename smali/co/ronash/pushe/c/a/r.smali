.class public Lco/ronash/pushe/c/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/r;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    if-eqz v1, :cond_14

    const/16 v0, 0x3b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/j/a;

    invoke-virtual {v0}, Lco/ronash/pushe/j/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_c
    array-length v3, v2

    if-ge v0, v3, :cond_1c

    new-instance v3, Lco/ronash/pushe/j/a;

    aget-object v4, v2, v0

    invoke-direct {v3, v4}, Lco/ronash/pushe/j/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 15

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v2, Lco/ronash/pushe/j/c;

    iget-object v0, p0, Lco/ronash/pushe/c/a/r;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lco/ronash/pushe/j/c;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/j/a;

    :try_start_1f
    const-string v1, "subscribe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const-string v1, "Subscribing to topic"

    new-instance v5, Lco/ronash/pushe/log/d;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Topic"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lco/ronash/pushe/j/a;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v5, v6}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v5}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-virtual {v0}, Lco/ronash/pushe/j/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lco/ronash/pushe/j/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lco/ronash/pushe/j/b;->a()Lco/ronash/pushe/j/b;

    move-result-object v1

    iget-object v5, p0, Lco/ronash/pushe/c/a/r;->a:Landroid/content/Context;

    invoke-virtual {v1, v5, v0}, Lco/ronash/pushe/j/b;->a(Landroid/content/Context;Lco/ronash/pushe/j/a;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_50} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_50} :catch_b4

    goto :goto_13

    :catch_51
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Topic subscription/unsubscription failed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lco/ronash/pushe/log/d;

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "Topic"

    aput-object v7, v6, v9

    invoke-virtual {v0}, Lco/ronash/pushe/j/a;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-direct {v5, v6}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v5}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_81
    :try_start_81
    const-string v1, "unsubscribe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "Unsubscribing from topic"

    new-instance v5, Lco/ronash/pushe/log/d;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Topic"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lco/ronash/pushe/j/a;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v5, v6}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v5}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-virtual {v0}, Lco/ronash/pushe/j/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lco/ronash/pushe/j/c;->b(Ljava/lang/String;)V

    invoke-static {}, Lco/ronash/pushe/j/b;->a()Lco/ronash/pushe/j/b;

    move-result-object v1

    iget-object v5, p0, Lco/ronash/pushe/c/a/r;->a:Landroid/content/Context;

    invoke-virtual {v1, v5, v0}, Lco/ronash/pushe/j/b;->b(Landroid/content/Context;Lco/ronash/pushe/j/a;)V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_b2} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_b2} :catch_b4

    goto/16 :goto_13

    :catch_b4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error subscribing/unsubscribing to topic - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lco/ronash/pushe/log/d;

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "Error"

    aput-object v7, v6, v9

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-direct {v5, v6}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v5}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    goto/16 :goto_13

    :cond_e2
    return-object v3
.end method

.method public a(Lco/ronash/pushe/h/a/i;)V
    .registers 8

    const/4 v5, 0x0

    check-cast p1, Lco/ronash/pushe/h/a/x;

    const-string v0, "subscribe"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/x;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lco/ronash/pushe/c/a/r;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "unsubscribe"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/x;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/c/a/r;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_48

    const-string v2, "Subscribing topics failed, scheduling task"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lco/ronash/pushe/k/l;

    invoke-direct {v2}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v3, "task_action"

    const-string v4, "subscribe"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "topics"

    invoke-virtual {p0, v0}, Lco/ronash/pushe/c/a/r;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/r;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v3, Lco/ronash/pushe/task/b/f;

    invoke-virtual {v0, v3, v2}, Lco/ronash/pushe/task/d;->b(Ljava/lang/Class;Lco/ronash/pushe/k/l;)V

    :cond_48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_79

    const-string v0, "Unsubscribing topics failed, scheduling task"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v2, "task_action"

    const-string v3, "unsubscribe"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "topics"

    invoke-virtual {p0, v1}, Lco/ronash/pushe/c/a/r;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/c/a/r;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    const-class v2, Lco/ronash/pushe/task/b/f;

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->b(Ljava/lang/Class;Lco/ronash/pushe/k/l;)V

    :cond_79
    return-void
.end method

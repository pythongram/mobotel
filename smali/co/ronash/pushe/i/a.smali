.class public Lco/ronash/pushe/i/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lco/ronash/pushe/i/a;->b:Z

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "t1"

    aput-object v2, v0, v1

    const-string v1, "t3"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "t4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "t5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "t10"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "t14"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "t12"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "t16"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "t18"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "t19"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "t20"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "t21"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "t22"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "t30"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "t31"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "t32"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "t25"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "t23"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "t6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lco/ronash/pushe/i/a;->c:[Ljava/lang/String;

    iput-object p1, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/i/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Lco/ronash/pushe/k/l;Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0xf

    invoke-static {v0}, Lco/ronash/pushe/k/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {p0, v1, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lco/ronash/pushe/h/c;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;Ljava/lang/String;)V

    invoke-static {p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    const-class v2, Lco/ronash/pushe/task/b/g;

    invoke-virtual {v1, v2, p0}, Lco/ronash/pushe/task/d;->b(Ljava/lang/Class;Lco/ronash/pushe/k/l;)V

    return-object v0
.end method

.method private a(Lco/ronash/pushe/k/l;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "status"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    :goto_b
    return v0

    :cond_c
    new-instance v2, Lco/ronash/pushe/h/g;

    invoke-direct {v2}, Lco/ronash/pushe/h/g;-><init>()V

    invoke-virtual {v2, p1}, Lco/ronash/pushe/h/g;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/f;

    move-result-object v2

    if-eqz v2, :cond_4c

    iget-object v3, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v3

    new-instance v4, Lco/ronash/pushe/i/b;

    invoke-direct {v4, p0, v2}, Lco/ronash/pushe/i/b;-><init>(Lco/ronash/pushe/i/a;Lco/ronash/pushe/h/f;)V

    invoke-virtual {v3, v4}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    const-string v3, "Message Response Received"

    new-instance v4, Lco/ronash/pushe/log/d;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Data"

    aput-object v6, v5, v0

    invoke-virtual {p1}, Lco/ronash/pushe/k/l;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    const-string v6, "Message Type"

    aput-object v6, v5, v0

    const/4 v0, 0x3

    invoke-virtual {v2}, Lco/ronash/pushe/h/f;->e()Lco/ronash/pushe/h/b/p;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/h/b/p;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v3, v4}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :cond_4c
    move v0, v1

    goto :goto_b
.end method

.method private a(Lco/ronash/pushe/k/l;Ljava/lang/String;I)Z
    .registers 6

    const-string v0, "message_id"

    invoke-virtual {p1, v0, p2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lco/ronash/pushe/i/a;->a(Lco/ronash/pushe/k/l;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v1

    :cond_4
    const/4 v0, -0x1

    :try_start_5
    const-string v2, "t"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_36

    move-result v0

    :goto_11
    const-string v2, "t31"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "t32"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "t30"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    sget-object v2, Lco/ronash/pushe/h/a/j;->a:Lco/ronash/pushe/h/a/j;

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/j;->a()I

    move-result v2

    if-ne v0, v2, :cond_34

    :cond_31
    const/4 v0, 0x1

    :goto_32
    move v1, v0

    goto :goto_3

    :cond_34
    move v0, v1

    goto :goto_32

    :catch_36
    move-exception v2

    goto :goto_11
.end method

.method private b(Lco/ronash/pushe/k/l;)V
    .registers 11

    const/4 v8, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lco/ronash/pushe/k/l;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lco/ronash/pushe/i/a;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    array-length v6, v2

    move v1, v3

    :goto_1c
    if-ge v1, v6, :cond_2f

    aget-object v0, v2, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :cond_2f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_58

    const-string v1, "MessageTooBig contains only one key and can not split it."

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v5, v8, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v5, v3

    const/4 v6, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_55

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_4c
    aput-object v0, v5, v6

    invoke-direct {v2, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :goto_54
    return-void

    :cond_55
    const-string v0, "is empty"

    goto :goto_4c

    :cond_58
    const-string v1, ""

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/k/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_bc

    move v1, v2

    :goto_79
    move v3, v1

    move-object v1, v0

    goto :goto_5e

    :cond_7c
    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    iget-object v2, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lco/ronash/pushe/i/a;->a(Lco/ronash/pushe/k/l;Landroid/content/Context;)Ljava/lang/String;

    new-instance v2, Lco/ronash/pushe/k/l;

    invoke-direct {v2}, Lco/ronash/pushe/k/l;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_96
    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    goto :goto_96

    :cond_b6
    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lco/ronash/pushe/i/a;->a(Lco/ronash/pushe/k/l;Landroid/content/Context;)Ljava/lang/String;

    goto :goto_54

    :cond_bc
    move-object v0, v1

    move v1, v3

    goto :goto_79
.end method

.method private b(Lco/ronash/pushe/k/l;Ljava/lang/String;)Z
    .registers 7

    const-string v0, ""

    invoke-static {p2}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "delay_until"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "open_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v1, "t"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "delayed_notification"

    invoke-virtual {v0, v1, p1}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    const/4 v0, 0x1

    :goto_44
    return v0

    :cond_45
    const/4 v0, 0x0

    goto :goto_44
.end method

.method private c(Lco/ronash/pushe/k/l;)V
    .registers 8

    const/4 v4, 0x0

    const-string v0, "send_schedule"

    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/l;->e(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v1

    if-eqz v1, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send schedule command received dict:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    const-string v0, "send_immediate"

    invoke-virtual {v1, v0, v4}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Lco/ronash/pushe/task/b/a;

    invoke-direct {v0}, Lco/ronash/pushe/task/b/a;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/task/b/a;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;

    :cond_39
    :goto_39
    return-void

    :cond_3a
    :try_start_3a
    const-string v0, "schedule"

    invoke-virtual {v1, v0}, Lco/ronash/pushe/k/l;->d(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_68

    move-result-object v0

    :goto_44
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-ltz v1, :cond_39

    iget-object v1, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    const-class v2, Lco/ronash/pushe/task/b/a;

    new-instance v3, Lco/ronash/pushe/task/a/e;

    invoke-direct {v3}, Lco/ronash/pushe/task/a/e;-><init>()V

    invoke-virtual {v3, v0}, Lco/ronash/pushe/task/a/e;->c(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/e;->a()Lco/ronash/pushe/task/a/d;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;Lco/ronash/pushe/task/a/d;)V

    goto :goto_39

    :catch_68
    move-exception v0

    new-instance v0, Ljava/lang/Long;

    const-string v2, "schedule"

    invoke-virtual {v1, v2}, Lco/ronash/pushe/k/l;->c(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_44
.end method

.method private c(Lco/ronash/pushe/k/l;Ljava/lang/String;)V
    .registers 7

    invoke-static {p2}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "cancel_update"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "update_app_notif"

    invoke-virtual {v0, v1}, Lco/ronash/pushe/d/c;->c(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-string v0, "av_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1f

    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v1, "t"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "update_app_notif"

    invoke-virtual {v0, v1, p1}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    goto :goto_1f
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "message deleted from gcm.send"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    const-string v1, "$stats_deleted_messages"

    invoke-static {v0, v1}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lco/ronash/pushe/k/l;Ljava/lang/String;)V
    .registers 11

    const/4 v7, 0x1

    const/4 v1, 0x0

    iput-boolean v7, p0, Lco/ronash/pushe/i/a;->b:Z

    invoke-direct {p0, p1}, Lco/ronash/pushe/i/a;->c(Lco/ronash/pushe/k/l;)V

    const-string v0, "message_id"

    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :cond_e
    iget-object v3, p0, Lco/ronash/pushe/i/a;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Lco/ronash/pushe/k/l;->e(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v3

    iget-object v4, p0, Lco/ronash/pushe/i/a;->c:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v3, :cond_4c

    iget-object v5, p0, Lco/ronash/pushe/i/a;->c:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v6, "t30"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v3}, Lco/ronash/pushe/k/l;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_38

    iput-boolean v1, p0, Lco/ronash/pushe/i/a;->b:Z

    :cond_38
    iget-object v5, p0, Lco/ronash/pushe/i/a;->c:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p1, v5}, Lco/ronash/pushe/k/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v3, v2, v4}, Lco/ronash/pushe/i/a;->a(Lco/ronash/pushe/k/l;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_67

    iget-object v3, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    const-string v4, "$stats_recv_response"

    invoke-static {v3, v4}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lco/ronash/pushe/i/a;->c:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_e

    iget-boolean v0, p0, Lco/ronash/pushe/i/a;->b:Z

    if-eqz v0, :cond_66

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    const-string v1, "$stats_bad_recv_messages"

    invoke-static {v0, v1}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_66
    :goto_66
    return-void

    :cond_67
    iget-object v4, p0, Lco/ronash/pushe/i/a;->c:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {p0, v2, v3, v4, p2}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_6f
    invoke-virtual {p0, v2, p1, v0, p2}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p2}, Lco/ronash/pushe/k/m;->a(Landroid/os/Bundle;)Lco/ronash/pushe/k/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message Received from GCM. msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/i/a;->a(Lco/ronash/pushe/k/l;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lco/ronash/pushe/k/l;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    invoke-static {p3}, Lco/ronash/pushe/i/a;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "t"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lco/ronash/pushe/h/a/j;->a(I)Lco/ronash/pushe/h/a/j;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_41

    move-result-object v0

    move-object v2, v0

    :goto_16
    if-nez v2, :cond_44

    const-string v0, "Unsupported Message Received from GCM."

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "msg"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lco/ronash/pushe/k/l;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Message Type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    const-string v1, "$stats_bad_recv_messages"

    invoke-static {v0, v1}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v1

    move-object v2, v0

    goto :goto_16

    :cond_44
    invoke-virtual {v2}, Lco/ronash/pushe/h/a/j;->b()Lco/ronash/pushe/h/a/k;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lco/ronash/pushe/i/a;->b(Lco/ronash/pushe/k/l;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, p2, p3}, Lco/ronash/pushe/i/a;->c(Lco/ronash/pushe/k/l;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lco/ronash/pushe/h/a/k;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/i;

    move-result-object v4

    invoke-virtual {v4, p1}, Lco/ronash/pushe/h/a/i;->a(Ljava/lang/String;)V

    if-eqz v3, :cond_116

    const-string v0, "send_immediate"

    const/4 v5, 0x1

    invoke-virtual {p2, v0, v5}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    :goto_5f
    const-string v5, "collection"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_11f

    iget-object v3, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v3

    const-string v6, "t1"

    invoke-virtual {v3, v6, v0}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;Z)V

    :goto_74
    invoke-virtual {v4}, Lco/ronash/pushe/h/a/i;->f()Z

    move-result v0

    if-eqz v0, :cond_92

    new-instance v0, Lco/ronash/pushe/h/b/d;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/d;-><init>()V

    invoke-virtual {v0, v4}, Lco/ronash/pushe/h/b/d;->a(Lco/ronash/pushe/h/a/i;)Lco/ronash/pushe/h/b/c;

    move-result-object v0

    iget-object v3, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v3

    const-string v6, "t1"

    invoke-virtual {v0}, Lco/ronash/pushe/h/b/c;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    :cond_92
    invoke-static {p3}, Lco/ronash/pushe/b/c;->a(Ljava/lang/String;)Lco/ronash/pushe/b/c;

    move-result-object v3

    if-eqz v3, :cond_c2

    const-string v0, "schedule"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    :try_start_a0
    const-string v0, "schedule"

    invoke-virtual {p2, v0}, Lco/ronash/pushe/k/l;->d(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a9} :catch_12a

    move-result-object v0

    :goto_aa
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    cmp-long v6, v6, v8

    if-ltz v6, :cond_139

    invoke-static {}, Lco/ronash/pushe/b/a;->a()Lco/ronash/pushe/b/a;

    move-result-object v6

    iget-object v7, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v7, v3, v8, v9}, Lco/ronash/pushe/b/a;->b(Landroid/content/Context;Lco/ronash/pushe/b/c;J)V

    :cond_c2
    :goto_c2
    if-eqz v3, :cond_cc

    const-string v0, "immediate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_cc
    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    const-string v3, "$stats_recv_messages"

    invoke-static {v0, v3}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v3, "$open_app_time"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v3, v6, v7}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_14e

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-gtz v0, :cond_14e

    const/4 v0, 0x0

    :goto_fa
    if-nez v0, :cond_40

    invoke-virtual {v2}, Lco/ronash/pushe/h/a/j;->c()Lco/ronash/pushe/c/b;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lco/ronash/pushe/c/b;->a(Landroid/content/Context;)Lco/ronash/pushe/c/a;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    new-instance v2, Lco/ronash/pushe/i/c;

    invoke-direct {v2, p0, v0, v4}, Lco/ronash/pushe/i/c;-><init>(Lco/ronash/pushe/i/a;Lco/ronash/pushe/c/a;Lco/ronash/pushe/h/a/i;)V

    invoke-virtual {v1, v2}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    goto/16 :goto_40

    :cond_116
    const-string v0, "send_immediate"

    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto/16 :goto_5f

    :cond_11f
    iget-object v3, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v3

    invoke-virtual {v3, p3, v0}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;Z)V

    goto/16 :goto_74

    :catch_12a
    move-exception v0

    new-instance v0, Ljava/lang/Long;

    const-string v6, "schedule"

    invoke-virtual {p2, v6}, Lco/ronash/pushe/k/l;->c(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_aa

    :cond_139
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_c2

    invoke-static {}, Lco/ronash/pushe/b/a;->a()Lco/ronash/pushe/b/a;

    move-result-object v0

    iget-object v6, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v6, v3}, Lco/ronash/pushe/b/a;->a(Landroid/content/Context;Lco/ronash/pushe/b/c;)V

    goto/16 :goto_c2

    :cond_14e
    move v0, v1

    goto :goto_fa
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    const-string v1, "$stats_sent_errors"

    invoke-static {v0, v1}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "TooManyMessages"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_1c
    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/d;->a(Landroid/content/Context;)Lco/ronash/pushe/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/ronash/pushe/d/d;->b(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-nez v0, :cond_29

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v1, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lco/ronash/pushe/i/a;->a(Lco/ronash/pushe/k/l;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/d/d;->a(Landroid/content/Context;)Lco/ronash/pushe/d/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lco/ronash/pushe/d/d;->c(Ljava/lang/String;)I

    const-string v2, "Failed upstream message dropped from DB and message rescheduled with a new msgId"

    new-instance v3, Lco/ronash/pushe/log/d;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Failed Message ID= "

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    const-string v5, "New Message ID= "

    aput-object v5, v4, v8

    aput-object v1, v4, v9

    const-string v1, "Message Data="

    aput-object v1, v4, v10

    const/4 v1, 0x5

    invoke-virtual {v0}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-direct {v3, v4}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    :cond_5c
    const-string v0, "MessageTooBig"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/d;->a(Landroid/content/Context;)Lco/ronash/pushe/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/ronash/pushe/d/d;->b(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v1, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/d/d;->a(Landroid/content/Context;)Lco/ronash/pushe/d/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lco/ronash/pushe/d/d;->c(Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lco/ronash/pushe/i/a;->b(Lco/ronash/pushe/k/l;)V

    goto :goto_28

    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upstream Message Failed with unexpected error- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/log/d;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "Message ID"

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    const-string v3, "Error"

    aput-object v3, v2, v8

    aput-object p2, v2, v9

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    goto :goto_28
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "Upstream Message Sent"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Message ID"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/d;->a(Landroid/content/Context;)Lco/ronash/pushe/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/ronash/pushe/d/d;->c(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_49

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing sent upstream message with msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from DB affected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " row instead of expected 1 row."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    iget-object v0, p0, Lco/ronash/pushe/i/a;->a:Landroid/content/Context;

    const-string v1, "$stats_acked_messages"

    invoke-static {v0, v1}, Lco/ronash/pushe/log/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

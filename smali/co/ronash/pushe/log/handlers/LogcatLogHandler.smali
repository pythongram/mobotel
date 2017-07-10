.class public Lco/ronash/pushe/log/handlers/LogcatLogHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/log/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLogData(Lco/ronash/pushe/log/d;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    invoke-virtual {p1}, Lco/ronash/pushe/log/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/log/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_2a
    invoke-virtual {v1}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public onLog(Lco/ronash/pushe/log/c;)V
    .registers 5

    sget-object v0, Lco/ronash/pushe/log/handlers/a;->a:[I

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->a()Lco/ronash/pushe/log/f;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/log/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e4

    const-string v0, "Pushe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LogcatLogHandler(): logLevel is not valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->a()Lco/ronash/pushe/log/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->h()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return-void

    :pswitch_30
    const-string v0, "Pushe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->b()Lco/ronash/pushe/log/d;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/ronash/pushe/log/handlers/LogcatLogHandler;->getLogData(Lco/ronash/pushe/log/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :pswitch_59
    const-string v0, "Pushe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->b()Lco/ronash/pushe/log/d;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/ronash/pushe/log/handlers/LogcatLogHandler;->getLogData(Lco/ronash/pushe/log/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :pswitch_82
    const-string v0, "Pushe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->b()Lco/ronash/pushe/log/d;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/ronash/pushe/log/handlers/LogcatLogHandler;->getLogData(Lco/ronash/pushe/log/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :pswitch_ab
    const-string v0, "Pushe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->b()Lco/ronash/pushe/log/d;

    move-result-object v2

    invoke-direct {p0, v2}, Lco/ronash/pushe/log/handlers/LogcatLogHandler;->getLogData(Lco/ronash/pushe/log/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :pswitch_d5
    const-string v0, "Pushe"

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lco/ronash/pushe/log/c;->h()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_30
        :pswitch_59
        :pswitch_82
        :pswitch_ab
        :pswitch_d5
    .end packed-switch
.end method

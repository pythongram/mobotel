.class public Lco/ronash/pushe/task/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/task/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .registers 9

    const/4 v5, 0x0

    if-nez p2, :cond_d

    const-string v0, "No data given to UpstreamSendTask, possibly because of a clean data"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "message_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_14
    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lco/ronash/pushe/h/c;->b(Landroid/content/Context;Ljava/lang/String;)Lco/ronash/pushe/k/l;
    :try_end_1b
    .catch Lco/ronash/pushe/h/e; {:try_start_14 .. :try_end_1b} :catch_38

    move-result-object v1

    sget-object v2, Lco/ronash/pushe/h/b;->b:Lco/ronash/pushe/h/b;

    invoke-virtual {v2}, Lco/ronash/pushe/h/b;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message_direction"

    invoke-virtual {v1, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string v0, "Downstream message given for Upstream Send Task"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_c

    :catch_38
    move-exception v1

    const-string v1, "Invalid message id given for Upstream Send Task"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Message ID"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    sget-object v0, Lco/ronash/pushe/task/c;->b:Lco/ronash/pushe/task/c;

    goto :goto_c

    :cond_50
    :try_start_50
    new-instance v2, Lco/ronash/pushe/i/f;

    invoke-direct {v2, p1}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lco/ronash/pushe/i/f;->b(Lco/ronash/pushe/k/l;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_58} :catch_82
    .catch Lco/ronash/pushe/k/o; {:try_start_50 .. :try_end_58} :catch_62

    invoke-static {}, Lco/ronash/pushe/h/c;->a()Lco/ronash/pushe/h/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lco/ronash/pushe/h/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    goto :goto_c

    :catch_62
    move-exception v0

    :goto_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Upstream Message failed in UpstreamSendTask class- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lco/ronash/pushe/task/c;->c:Lco/ronash/pushe/task/c;

    goto :goto_c

    :catch_82
    move-exception v0

    goto :goto_63
.end method

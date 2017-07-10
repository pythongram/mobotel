.class public Lco/ronash/pushe/h/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/f;
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    new-instance v1, Lco/ronash/pushe/h/f;

    invoke-direct {v1}, Lco/ronash/pushe/h/f;-><init>()V

    const-string v2, "message_id"

    invoke-virtual {p1, v2, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/h/f;->a(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {p1, v2, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3b

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "Missing status in response"

    aput-object v4, v3, v7

    new-instance v4, Lco/ronash/pushe/log/d;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Message ID"

    aput-object v6, v5, v7

    invoke-virtual {v1}, Lco/ronash/pushe/h/f;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    :try_start_3b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lco/ronash/pushe/h/f;->a(I)V
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_42} :catch_7a

    :goto_42
    const-string v2, "error"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/h/f;->b(Ljava/lang/String;)V

    :try_start_4b
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_54} :catch_a4

    move-result v2

    invoke-static {v2}, Lco/ronash/pushe/h/b/p;->a(I)Lco/ronash/pushe/h/b/p;

    move-result-object v2

    if-nez v2, :cond_b7

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Response received for invalid message type"

    aput-object v2, v1, v7

    new-instance v2, Lco/ronash/pushe/log/d;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "Message Type"

    aput-object v4, v3, v7

    const-string v4, "type"

    invoke-virtual {p1, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_79
    return-object v0

    :catch_7a
    move-exception v3

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "Invalid status in response"

    aput-object v4, v3, v7

    new-instance v4, Lco/ronash/pushe/log/d;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Status"

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    const-string v2, "Message ID"

    aput-object v2, v5, v9

    const/4 v2, 0x3

    invoke-virtual {v1}, Lco/ronash/pushe/h/f;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/h/f;->a(I)V

    goto :goto_42

    :catch_a4
    move-exception v1

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Invalid Message Type for Response message: %s"

    aput-object v2, v1, v7

    const-string v2, "type"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_79

    :cond_b7
    invoke-virtual {v1, v2}, Lco/ronash/pushe/h/f;->a(Lco/ronash/pushe/h/b/p;)V

    move-object v0, v1

    goto :goto_79
.end method

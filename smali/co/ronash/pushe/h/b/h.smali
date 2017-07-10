.class public Lco/ronash/pushe/h/b/h;
.super Lco/ronash/pushe/h/b/q;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/h/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lco/ronash/pushe/h/b/g;
    .registers 5

    new-instance v0, Lco/ronash/pushe/h/b/g;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/g;-><init>()V

    invoke-virtual {p0, v0}, Lco/ronash/pushe/h/b/h;->a(Lco/ronash/pushe/h/a;)V

    invoke-virtual {v0, p1}, Lco/ronash/pushe/h/b/g;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lco/ronash/pushe/h/b/g;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lco/ronash/pushe/h/b/g;->a(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;
    .registers 5

    new-instance v1, Lco/ronash/pushe/h/b/g;

    invoke-direct {v1}, Lco/ronash/pushe/h/b/g;-><init>()V

    invoke-virtual {p0, v1, p1}, Lco/ronash/pushe/h/b/h;->a(Lco/ronash/pushe/h/a;Lco/ronash/pushe/k/l;)V

    const-string v0, "orig_msg_id"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/g;->b(Ljava/lang/String;)V

    const-string v0, "status"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/g;->c(Ljava/lang/String;)V

    :try_start_1e
    const-string v0, "btn_id"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2d} :catch_32

    move-result-object v0

    :goto_2e
    invoke-virtual {v1, v0}, Lco/ronash/pushe/h/b/g;->a(Ljava/lang/Integer;)V

    return-object v1

    :catch_32
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2e
.end method

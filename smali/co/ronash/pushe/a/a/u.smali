.class public Lco/ronash/pushe/a/a/u;
.super Lco/ronash/pushe/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .registers 5

    new-instance v0, Lco/ronash/pushe/a/a/t;

    invoke-direct {v0}, Lco/ronash/pushe/a/a/t;-><init>()V

    const-string v1, "url"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/a/a/t;->a(Lco/ronash/pushe/a/a/t;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "orig_msg_id"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/a/a/t;->b(Lco/ronash/pushe/a/a/t;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

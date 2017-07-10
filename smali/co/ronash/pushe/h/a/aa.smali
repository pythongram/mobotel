.class public Lco/ronash/pushe/h/a/aa;
.super Lco/ronash/pushe/h/a/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/h/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/i;
    .registers 6

    const/16 v3, 0x64

    new-instance v0, Lco/ronash/pushe/h/a/z;

    invoke-direct {v0}, Lco/ronash/pushe/h/a/z;-><init>()V

    const-string v1, "user_dsn"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/a/z;->a(Lco/ronash/pushe/h/a/z;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "user_percent"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/a/z;->a(Lco/ronash/pushe/h/a/z;I)I

    invoke-static {v0}, Lco/ronash/pushe/h/a/z;->a(Lco/ronash/pushe/h/a/z;)I

    move-result v1

    if-gt v1, v3, :cond_27

    invoke-static {v0}, Lco/ronash/pushe/h/a/z;->a(Lco/ronash/pushe/h/a/z;)I

    move-result v1

    if-gez v1, :cond_2a

    :cond_27
    invoke-static {v0, v3}, Lco/ronash/pushe/h/a/z;->a(Lco/ronash/pushe/h/a/z;I)I

    :cond_2a
    return-object v0
.end method

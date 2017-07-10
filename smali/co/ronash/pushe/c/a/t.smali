.class Lco/ronash/pushe/c/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lco/ronash/pushe/c/a/s;


# direct methods
.method constructor <init>(Lco/ronash/pushe/c/a/s;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/c/a/t;->a:Lco/ronash/pushe/c/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/e/f;Lco/ronash/pushe/e/f;)I
    .registers 7

    invoke-virtual {p1}, Lco/ronash/pushe/e/f;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lco/ronash/pushe/e/f;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Lco/ronash/pushe/e/f;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lco/ronash/pushe/e/f;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lco/ronash/pushe/e/f;

    check-cast p2, Lco/ronash/pushe/e/f;

    invoke-virtual {p0, p1, p2}, Lco/ronash/pushe/c/a/t;->a(Lco/ronash/pushe/e/f;Lco/ronash/pushe/e/f;)I

    move-result v0

    return v0
.end method

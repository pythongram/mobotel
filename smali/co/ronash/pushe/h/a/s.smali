.class Lco/ronash/pushe/h/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lco/ronash/pushe/h/a/r;


# direct methods
.method constructor <init>(Lco/ronash/pushe/h/a/r;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/s;->a:Lco/ronash/pushe/h/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lco/ronash/pushe/h/a/q;

    check-cast p2, Lco/ronash/pushe/h/a/q;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/q;->c()I

    move-result v0

    invoke-virtual {p2}, Lco/ronash/pushe/h/a/q;->c()I

    move-result v1

    if-le v0, v1, :cond_10

    const/4 v0, -0x1

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p1}, Lco/ronash/pushe/h/a/q;->c()I

    move-result v0

    invoke-virtual {p2}, Lco/ronash/pushe/h/a/q;->c()I

    move-result v1

    if-ge v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_f

    :cond_1c
    const/4 v0, 0x0

    goto :goto_f
.end method
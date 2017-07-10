.class Lco/ronash/pushe/c/a/p;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/c/a/o;


# direct methods
.method constructor <init>(Lco/ronash/pushe/c/a/o;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/c/a/p;->a:Lco/ronash/pushe/c/a/o;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 7

    invoke-static {}, Lco/ronash/pushe/b/c;->values()[Lco/ronash/pushe/b/c;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_14

    aget-object v3, v1, v0

    invoke-static {}, Lco/ronash/pushe/b/a;->a()Lco/ronash/pushe/b/a;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lco/ronash/pushe/b/a;->b(Landroid/content/Context;Lco/ronash/pushe/b/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_14
    new-instance v0, Lco/ronash/pushe/task/b/a;

    invoke-direct {v0}, Lco/ronash/pushe/task/b/a;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/c/a/p;->a:Lco/ronash/pushe/c/a/o;

    invoke-static {v1}, Lco/ronash/pushe/c/a/o;->a(Lco/ronash/pushe/c/a/o;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/task/b/a;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;

    return-void
.end method

.class Lco/ronash/pushe/b/b;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/b/c;

.field final synthetic b:Lco/ronash/pushe/b/a;


# direct methods
.method constructor <init>(Lco/ronash/pushe/b/a;Lco/ronash/pushe/b/c;)V
    .registers 3

    iput-object p1, p0, Lco/ronash/pushe/b/b;->b:Lco/ronash/pushe/b/a;

    iput-object p2, p0, Lco/ronash/pushe/b/b;->a:Lco/ronash/pushe/b/c;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_2
    iget-object v0, p0, Lco/ronash/pushe/b/b;->a:Lco/ronash/pushe/b/c;

    invoke-virtual {v0}, Lco/ronash/pushe/b/c;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/task/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lco/ronash/pushe/task/b;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    :try_end_12
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_12} :catch_1e

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v1, "InstantiationException in collectNow()"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :catch_1e
    move-exception v0

    const-string v1, "IllegalAccessException in collectNow()"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12
.end method

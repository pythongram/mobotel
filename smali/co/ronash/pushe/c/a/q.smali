.class Lco/ronash/pushe/c/a/q;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/c/a/o;


# direct methods
.method constructor <init>(Lco/ronash/pushe/c/a/o;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/c/a/q;->a:Lco/ronash/pushe/c/a/o;

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

    invoke-virtual {v4, p1, v3}, Lco/ronash/pushe/b/a;->c(Landroid/content/Context;Lco/ronash/pushe/b/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_14
    invoke-static {p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v1, Lco/ronash/pushe/task/b/a;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;)V

    return-void
.end method

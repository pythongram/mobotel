.class public Lco/ronash/pushe/c/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;
.implements Lco/ronash/pushe/c/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/s;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/util/List;I)Ljava/util/List;
    .registers 9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lco/ronash/pushe/h/b/n;

    invoke-direct {v4}, Lco/ronash/pushe/h/b/n;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v1, p2

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    :cond_18
    const/4 v1, 0x0

    move v2, v1

    :goto_1a
    if-ge v2, v0, :cond_41

    add-int/lit8 v1, v0, -0x1

    if-ne v2, v1, :cond_37

    mul-int v1, v2, p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    :goto_2a
    iget-object v5, p0, Lco/ronash/pushe/c/a/s;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lco/ronash/pushe/h/b/n;->a(Landroid/content/Context;Ljava/util/List;)Lco/ronash/pushe/h/b/m;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1a

    :cond_37
    mul-int v1, v2, p2

    add-int/lit8 v5, v2, 0x1

    mul-int/2addr v5, p2

    invoke-interface {p1, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_2a

    :cond_41
    return-object v3
.end method

.method private a(Ljava/util/List;)V
    .registers 3

    new-instance v0, Lco/ronash/pushe/c/a/t;

    invoke-direct {v0, p0}, Lco/ronash/pushe/c/a/t;-><init>(Lco/ronash/pushe/c/a/s;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 3

    new-instance v0, Lco/ronash/pushe/e/h;

    iget-object v1, p0, Lco/ronash/pushe/c/a/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lco/ronash/pushe/e/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/e/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/c/a/s;->a(Ljava/util/List;)V

    return-object v0
.end method

.method public a(Lco/ronash/pushe/h/a/i;)V
    .registers 2

    invoke-virtual {p0}, Lco/ronash/pushe/c/a/s;->c()V

    return-void
.end method

.method public a(Lco/ronash/pushe/h/f;)V
    .registers 2

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 3

    new-instance v0, Lco/ronash/pushe/e/h;

    iget-object v1, p0, Lco/ronash/pushe/c/a/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lco/ronash/pushe/e/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/e/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/ronash/pushe/c/a/s;->a(Ljava/util/List;)V

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Lco/ronash/pushe/c/a/s;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 4

    invoke-virtual {p0}, Lco/ronash/pushe/c/a/s;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/i/f;

    iget-object v2, p0, Lco/ronash/pushe/c/a/s;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lco/ronash/pushe/i/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/h/b/m;

    invoke-virtual {v1, v0}, Lco/ronash/pushe/i/f;->a(Lco/ronash/pushe/h/b/o;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

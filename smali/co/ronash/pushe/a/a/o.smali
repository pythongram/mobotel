.class public Lco/ronash/pushe/a/a/o;
.super Lco/ronash/pushe/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .registers 9

    const/4 v1, 0x0

    const/4 v6, 0x0

    new-instance v2, Lco/ronash/pushe/a/a/n;

    invoke-direct {v2}, Lco/ronash/pushe/a/a/n;-><init>()V

    const-string v0, "action"

    invoke-virtual {p1, v0, v6}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lco/ronash/pushe/a/a/n;->c:Ljava/lang/String;

    const-string v0, "uri"

    invoke-virtual {p1, v0, v6}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lco/ronash/pushe/a/a/n;->a:Ljava/lang/String;

    const-string v0, "category"

    invoke-virtual {p1, v0, v6}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;

    move-result-object v3

    if-eqz v3, :cond_39

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lco/ronash/pushe/a/a/n;->b:Ljava/util/List;

    move v0, v1

    :goto_27
    invoke-virtual {v3}, Lco/ronash/pushe/k/d;->size()I

    move-result v4

    if-ge v0, v4, :cond_39

    iget-object v4, v2, Lco/ronash/pushe/a/a/n;->b:Ljava/util/List;

    invoke-virtual {v3, v0}, Lco/ronash/pushe/k/d;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_39
    :try_start_39
    const-string v0, "resolvers"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;

    move-result-object v0

    if-eqz v0, :cond_70

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lco/ronash/pushe/a/a/n;->e:Ljava/util/List;

    :goto_49
    invoke-virtual {v0}, Lco/ronash/pushe/k/d;->size()I

    move-result v3

    if-ge v1, v3, :cond_70

    iget-object v3, v2, Lco/ronash/pushe/a/a/n;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/k/d;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_58} :catch_5b

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :catch_5b
    move-exception v0

    const-string v0, "resolvers"

    invoke-virtual {p1, v0, v6}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_70

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Lco/ronash/pushe/a/a/n;->e:Ljava/util/List;

    iget-object v1, v2, Lco/ronash/pushe/a/a/n;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_70
    return-object v2
.end method

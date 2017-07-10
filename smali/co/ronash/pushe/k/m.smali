.class public Lco/ronash/pushe/k/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lco/ronash/pushe/k/l;)Landroid/os/Bundle;
    .registers 7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lco/ronash/pushe/k/l;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lco/ronash/pushe/k/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lco/ronash/pushe/k/l;

    if-eqz v5, :cond_3d

    check-cast v1, Lco/ronash/pushe/k/l;

    invoke-virtual {v1}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    const/4 v1, 0x1

    :try_start_30
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_3a} :catch_3b

    goto :goto_12

    :catch_3b
    move-exception v0

    goto :goto_12

    :cond_3d
    instance-of v5, v1, Lco/ronash/pushe/k/d;

    if-eqz v5, :cond_4b

    check-cast v1, Lco/ronash/pushe/k/d;

    invoke-virtual {v1}, Lco/ronash/pushe/k/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_4b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_53
    new-instance v0, Lco/ronash/pushe/k/d;

    invoke-direct {v0, v3}, Lco/ronash/pushe/k/d;-><init>(Ljava/util/Collection;)V

    const-string v1, "types"

    invoke-virtual {v0}, Lco/ronash/pushe/k/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static a(Landroid/os/Bundle;)Lco/ronash/pushe/k/l;
    .registers 7

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_21
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-static {v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    :try_end_42
    .catch Lco/ronash/pushe/k/c; {:try_start_21 .. :try_end_42} :catch_43

    goto :goto_d

    :catch_43
    move-exception v4

    invoke-virtual {v1, v0, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_48
    :try_start_48
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-static {v3}, Lco/ronash/pushe/k/d;->a(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    goto :goto_d

    :cond_68
    invoke-virtual {v1, v0, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Lco/ronash/pushe/k/c; {:try_start_48 .. :try_end_6b} :catch_43

    goto :goto_d

    :cond_6c
    return-object v1
.end method

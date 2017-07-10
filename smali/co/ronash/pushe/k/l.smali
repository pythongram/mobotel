.class public Lco/ronash/pushe/k/l;
.super Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lco/ronash/pushe/k/l;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lco/ronash/pushe/k/l;->a(Lorg/json/JSONObject;)Lco/ronash/pushe/k/l;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    :goto_b
    new-instance v1, Lco/ronash/pushe/k/c;

    invoke-direct {v1, v0}, Lco/ronash/pushe/k/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_11
    move-exception v0

    goto :goto_b
.end method

.method public static a(Lorg/json/JSONObject;)Lco/ronash/pushe/k/l;
    .registers 6

    :try_start_0
    new-instance v2, Lco/ronash/pushe/k/l;

    invoke-direct {v2}, Lco/ronash/pushe/k/l;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lorg/json/JSONObject;

    if-eqz v4, :cond_2e

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lco/ronash/pushe/k/l;->a(Lorg/json/JSONObject;)Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_26} :catch_3c

    goto :goto_9

    :catch_27
    move-exception v0

    :goto_28
    new-instance v1, Lco/ronash/pushe/k/c;

    invoke-direct {v1, v0}, Lco/ronash/pushe/k/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2e
    :try_start_2e
    instance-of v4, v1, Lorg/json/JSONArray;

    if-eqz v4, :cond_3e

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lco/ronash/pushe/k/d;->a(Lorg/json/JSONArray;)Lco/ronash/pushe/k/d;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    goto :goto_9

    :catch_3c
    move-exception v0

    goto :goto_28

    :cond_3e
    invoke-virtual {v2, v0, v1}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_41} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_41} :catch_3c

    goto :goto_9

    :cond_42
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .registers 5

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_6

    :cond_12
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_6
.end method

.method public a(Ljava/lang/String;J)J
    .registers 6

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-wide p2

    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_6

    :cond_12
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;
    .registers 6

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    :try_start_7
    check-cast v0, Lco/ronash/pushe/k/d;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9} :catch_b

    move-object p2, v0

    goto :goto_6

    :catch_b
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListPack raised ClassCastException. key is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;
    .registers 6

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-object p2

    :cond_7
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_14

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    :cond_14
    :try_start_14
    check-cast v1, Lco/ronash/pushe/k/l;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_16} :catch_18

    move-object p2, v1

    goto :goto_6

    :catch_18
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPack raised ClassCastException. key is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    goto :goto_6
.end method

.method public a()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lco/ronash/pushe/k/l;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_42

    const-string v1, "status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to use getString on non-string value. key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " string.valueOf(value): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_42
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 5

    invoke-virtual {p0, p1}, Lco/ronash/pushe/k/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_6

    :cond_12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .registers 7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lco/ronash/pushe/k/l;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lco/ronash/pushe/k/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_1d
    instance-of v4, v1, Lco/ronash/pushe/k/l;

    if-eqz v4, :cond_39

    check-cast v1, Lco/ronash/pushe/k/l;

    invoke-virtual {v1}, Lco/ronash/pushe/k/l;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_2a} :catch_2b

    goto :goto_d

    :catch_2b
    move-exception v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Error rendering json string from pack"

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_39
    :try_start_39
    instance-of v4, v1, Lco/ronash/pushe/k/d;

    if-eqz v4, :cond_47

    check-cast v1, Lco/ronash/pushe/k/d;

    invoke-virtual {v1}, Lco/ronash/pushe/k/d;->b()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_47
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_4a} :catch_2b

    goto :goto_d

    :cond_4b
    return-object v2
.end method

.method public b(Ljava/lang/String;I)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/k/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ljava/lang/String;)Lco/ronash/pushe/k/l;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lco/ronash/pushe/k/d;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;

    move-result-object v0

    return-object v0
.end method

.class public Lco/ronash/pushe/d/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lco/ronash/pushe/d/c;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "co.ronash.pushe.keystore"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lco/ronash/pushe/d/c;
    .registers 3

    sget-object v0, Lco/ronash/pushe/d/c;->a:Lco/ronash/pushe/d/c;

    if-nez v0, :cond_13

    const-class v1, Lco/ronash/pushe/d/c;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lco/ronash/pushe/d/c;->a:Lco/ronash/pushe/d/c;

    if-nez v0, :cond_12

    new-instance v0, Lco/ronash/pushe/d/c;

    invoke-direct {v0, p0}, Lco/ronash/pushe/d/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/ronash/pushe/d/c;->a:Lco/ronash/pushe/d/c;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lco/ronash/pushe/d/c;->a:Lco/ronash/pushe/d/c;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized a(Ljava/lang/String;J)J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)Lco/ronash/pushe/k/l;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object p2

    :cond_8
    :try_start_8
    invoke-static {v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;)Lco/ronash/pushe/k/l;
    :try_end_b
    .catch Lco/ronash/pushe/k/c; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object p2

    goto :goto_7

    :catch_d
    move-exception v1

    move-object p2, v0

    goto :goto_7
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V
    .registers 5

    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Lco/ronash/pushe/k/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/d/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

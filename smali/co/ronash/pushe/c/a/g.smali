.class public Lco/ronash/pushe/c/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .registers 4

    invoke-virtual {p0}, Lco/ronash/pushe/c/a/g;->a()Lco/ronash/pushe/k/l;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/k/d;

    invoke-direct {v1}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v2, "t5"

    invoke-virtual {v0, v2, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    const-string v1, "message_id"

    invoke-static {}, Lco/ronash/pushe/h/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v1

    new-instance v2, Lco/ronash/pushe/c/a/h;

    invoke-direct {v2, p0, v0}, Lco/ronash/pushe/c/a/h;-><init>(Lco/ronash/pushe/c/a/g;Lco/ronash/pushe/k/l;)V

    invoke-virtual {v1, v2}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/k/l;
    .registers 8

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->d()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->e()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_1a
    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->c()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->b()V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_34
    .catch Lco/ronash/pushe/k/b; {:try_start_2 .. :try_end_34} :catch_10f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_34} :catch_10c
    .catchall {:try_start_2 .. :try_end_34} :catchall_d5

    :cond_34
    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_d5

    const/4 v0, 0x0

    :try_start_36
    iget-object v1, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/g/a;->a()Landroid/location/Location;
    :try_end_3f
    .catch Lco/ronash/pushe/k/b; {:try_start_36 .. :try_end_3f} :catch_109

    move-result-object v0

    :goto_40
    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    if-eqz v0, :cond_d8

    const-string v2, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_61
    invoke-static {}, Lco/ronash/pushe/k/f;->a()Lco/ronash/pushe/k/g;

    move-result-object v0

    if-eqz v0, :cond_e8

    const-string v2, "ip"

    iget-object v0, v0, Lco/ronash/pushe/k/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    const-string v0, "none"

    :try_start_70
    iget-object v2, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/k/f;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_75
    .catch Lco/ronash/pushe/k/b; {:try_start_70 .. :try_end_75} :catch_106

    move-result-object v0

    :goto_76
    const-string v2, "wifi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    const-string v0, "type"

    const-string v2, "wifi"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/k/h;->c(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_c7

    const-string v0, "mac"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a7

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_a7
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_b9
    const-string v3, "ssid"

    invoke-virtual {v1, v3, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sig_level"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    :cond_c7
    :goto_c7
    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_d5
    move-exception v0

    :try_start_d6
    monitor-exit p0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v0

    :cond_d8
    const-string v0, "lat"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "long"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_61

    :cond_e8
    const-string v0, "Getting public ip info failed"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6e

    :cond_f1
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    const-string v2, "type"

    const-string v3, "mobile"

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "network"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    :catch_106
    move-exception v2

    goto/16 :goto_76

    :catch_109
    move-exception v1

    goto/16 :goto_40

    :catch_10c
    move-exception v0

    goto/16 :goto_34

    :catch_10f
    move-exception v0

    goto/16 :goto_34
.end method

.method public a(Lco/ronash/pushe/h/a/i;)V
    .registers 2

    invoke-direct {p0}, Lco/ronash/pushe/c/a/g;->b()V

    return-void
.end method

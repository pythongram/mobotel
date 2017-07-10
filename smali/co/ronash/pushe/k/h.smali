.class public Lco/ronash/pushe/k/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lco/ronash/pushe/k/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .registers 2

    invoke-static {p0}, Lco/ronash/pushe/k/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lco/ronash/pushe/k/d;
    .registers 12

    new-instance v2, Lco/ronash/pushe/k/d;

    invoke-direct {v2}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-static {p1}, Lco/ronash/pushe/k/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    move-object v0, v2

    :goto_c
    return-object v0

    :cond_d
    monitor-enter p0

    :try_start_e
    invoke-static {p1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->d()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->e()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_22
    invoke-static {p1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->c()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/g/a;->b()V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_38
    .catch Lco/ronash/pushe/k/b; {:try_start_e .. :try_end_38} :catch_cd
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_38} :catch_ca
    .catchall {:try_start_e .. :try_end_38} :catchall_ba

    :cond_38
    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_ba

    const/4 v0, 0x0

    :try_start_3a
    invoke-static {p1}, Lco/ronash/pushe/g/a;->a(Landroid/content/Context;)Lco/ronash/pushe/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/g/a;->a()Landroid/location/Location;
    :try_end_41
    .catch Lco/ronash/pushe/k/b; {:try_start_3a .. :try_end_41} :catch_bd

    move-result-object v0

    move-object v1, v0

    :goto_43
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lco/ronash/pushe/k/h;->a:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lco/ronash/pushe/k/h;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_5a
    if-ltz v3, :cond_c7

    :try_start_5c
    new-instance v5, Lco/ronash/pushe/k/l;

    invoke-direct {v5}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v6, "ssid"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mac"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sig_level"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v6, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v6, "lat"

    if-eqz v1, :cond_c0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_94
    invoke-virtual {v5, v6, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "long"

    if-eqz v1, :cond_c3

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_a3
    invoke-virtual {v5, v6, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_b6} :catch_c6

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_5a

    :catchall_ba
    move-exception v0

    :try_start_bb
    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v0

    :catch_bd
    move-exception v1

    move-object v1, v0

    goto :goto_43

    :cond_c0
    :try_start_c0
    const-string v0, "0"

    goto :goto_94

    :cond_c3
    const-string v0, "0"
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c5} :catch_c6

    goto :goto_a3

    :catch_c6
    move-exception v0

    :cond_c7
    move-object v0, v2

    goto/16 :goto_c

    :catch_ca
    move-exception v0

    goto/16 :goto_38

    :catch_cd
    move-exception v0

    goto/16 :goto_38
.end method

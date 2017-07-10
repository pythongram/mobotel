.class public Lco/ronash/pushe/k/f;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lco/ronash/pushe/k/g;
    .registers 11

    const/4 v4, 0x0

    sget-object v0, Lco/ronash/pushe/Constants;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1f
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_1fe
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_2a} :catch_1fa
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_2a} :catch_15a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_1a1
    .catchall {:try_start_1f .. :try_end_2a} :catchall_1e8

    const/16 v3, 0x7d0

    :try_start_2c
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Lco/ronash/pushe/k/g;

    invoke-direct {v3}, Lco/ronash/pushe/k/g;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10d

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    const/16 v8, 0x1000

    new-array v8, v8, [C

    :goto_56
    const/4 v9, -0x1

    invoke-virtual {v6, v8}, Ljava/io/BufferedReader;->read([C)I

    move-result v10

    if-eq v9, v10, :cond_a8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/StringWriter;->write([CII)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_61} :catch_62
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_61} :catch_114
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_61} :catch_1f7
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_61} :catch_1f5
    .catchall {:try_start_2c .. :try_end_61} :catchall_1f3

    goto :goto_56

    :catch_62
    move-exception v0

    :goto_63
    :try_start_63
    new-instance v3, Lco/ronash/pushe/log/c;

    invoke-direct {v3}, Lco/ronash/pushe/log/c;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting public ip info failed - IOException - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/c;)V
    :try_end_a1
    .catchall {:try_start_63 .. :try_end_a1} :catchall_1f3

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_7

    :cond_a8
    :try_start_a8
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/16 v8, 0x7d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cf

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lco/ronash/pushe/k/g;->a:Ljava/lang/String;

    :cond_cf
    const-string v0, "isp"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_df

    const-string v0, "isp"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lco/ronash/pushe/k/g;->b:Ljava/lang/String;

    :cond_df
    :goto_df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting public ip info successfully:\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v3, Lco/ronash/pushe/k/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\nISP:\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v3, Lco/ronash/pushe/k/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_106} :catch_62
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_106} :catch_114
    .catch Ljava/lang/NullPointerException; {:try_start_a8 .. :try_end_106} :catch_1f7
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_106} :catch_1f5
    .catchall {:try_start_a8 .. :try_end_106} :catchall_1f3

    if-eqz v2, :cond_10b

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10b
    move-object v0, v3

    :goto_10c
    return-object v0

    :cond_10d
    :try_start_10d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lco/ronash/pushe/k/g;->a:Ljava/lang/String;
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_113} :catch_62
    .catch Lorg/json/JSONException; {:try_start_10d .. :try_end_113} :catch_114
    .catch Ljava/lang/NullPointerException; {:try_start_10d .. :try_end_113} :catch_1f7
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_113} :catch_1f5
    .catchall {:try_start_10d .. :try_end_113} :catchall_1f3

    goto :goto_df

    :catch_114
    move-exception v0

    :goto_115
    :try_start_115
    new-instance v3, Lco/ronash/pushe/log/c;

    invoke-direct {v3}, Lco/ronash/pushe/log/c;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting public ip info failed - JSONException - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/c;)V
    :try_end_153
    .catchall {:try_start_115 .. :try_end_153} :catchall_1f3

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_7

    :catch_15a
    move-exception v0

    move-object v2, v4

    :goto_15c
    :try_start_15c
    new-instance v3, Lco/ronash/pushe/log/c;

    invoke-direct {v3}, Lco/ronash/pushe/log/c;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting public ip info failed - NullPointerException - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/c;)V
    :try_end_19a
    .catchall {:try_start_15c .. :try_end_19a} :catchall_1f3

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_7

    :catch_1a1
    move-exception v0

    move-object v2, v4

    :goto_1a3
    :try_start_1a3
    new-instance v3, Lco/ronash/pushe/log/c;

    invoke-direct {v3}, Lco/ronash/pushe/log/c;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting public ip info failed -  - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/c;)V
    :try_end_1e1
    .catchall {:try_start_1a3 .. :try_end_1e1} :catchall_1f3

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_7

    :catchall_1e8
    move-exception v0

    move-object v2, v4

    :goto_1ea
    if-eqz v2, :cond_1ef

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1ef
    throw v0

    :cond_1f0
    move-object v0, v4

    goto/16 :goto_10c

    :catchall_1f3
    move-exception v0

    goto :goto_1ea

    :catch_1f5
    move-exception v0

    goto :goto_1a3

    :catch_1f7
    move-exception v0

    goto/16 :goto_15c

    :catch_1fa
    move-exception v0

    move-object v2, v4

    goto/16 :goto_115

    :catch_1fe
    move-exception v0

    move-object v2, v4

    goto/16 :goto_63
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_34

    const-string v0, "data"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "gprs"

    goto :goto_5

    :pswitch_9
    const-string v0, "edge"

    goto :goto_5

    :pswitch_c
    const-string v0, "umts"

    goto :goto_5

    :pswitch_f
    const-string v0, "cdma"

    goto :goto_5

    :pswitch_12
    const-string v0, "evdo 0"

    goto :goto_5

    :pswitch_15
    const-string v0, "evdo a"

    goto :goto_5

    :pswitch_18
    const-string v0, "1xrtt"

    goto :goto_5

    :pswitch_1b
    const-string v0, "hsdpa"

    goto :goto_5

    :pswitch_1e
    const-string v0, "hsupa"

    goto :goto_5

    :pswitch_21
    const-string v0, "hspa"

    goto :goto_5

    :pswitch_24
    const-string v0, "iden"

    goto :goto_5

    :pswitch_27
    const-string v0, "evdo b"

    goto :goto_5

    :pswitch_2a
    const-string v0, "lte"

    goto :goto_5

    :pswitch_2d
    const-string v0, "ehrpd"

    goto :goto_5

    :pswitch_30
    const-string v0, "hspap"

    goto :goto_5

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x2

    const-string v1, ""

    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v0, v2, :cond_22

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v2

    if-ne v2, v3, :cond_22

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_1f

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    move-object v0, v1

    goto :goto_1e

    :cond_22
    move-object v0, v1

    goto :goto_1e
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_2
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lco/ronash/pushe/k/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lco/ronash/pushe/k/b;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {v0, v1}, Lco/ronash/pushe/k/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_12

    :catch_12
    move-exception v0

    const-string v1, "couldn\'t get NetworkTypeName"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "couldn\'t get NetworkTypeName"

    :goto_1e
    return-object v0

    :cond_1f
    :try_start_1f
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v0, "wifi"

    goto :goto_1e

    :cond_3a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {p0}, Lco/ronash/pushe/k/f;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lco/ronash/pushe/k/f;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_49
    const-string v0, "none"
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4b} :catch_12

    goto :goto_1e
.end method

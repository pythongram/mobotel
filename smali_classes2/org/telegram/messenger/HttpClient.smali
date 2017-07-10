.class public Lorg/telegram/messenger/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/HttpClient$Response;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPostDataString(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 101
    .local v1, "first":Z
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_41

    .line 103
    const/4 v1, 0x0

    .line 107
    :goto_1d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 105
    :cond_41
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 111
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static performGetCall(Ljava/lang/String;Ljava/util/List;)Lorg/telegram/messenger/HttpClient$Response;
    .registers 3
    .param p0, "requestURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Lorg/telegram/messenger/HttpClient$Response;"
        }
    .end annotation

    .prologue
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v0, 0x0

    .line 42
    invoke-static {p0, v0, v0, v0, p1}, Lorg/telegram/messenger/HttpClient;->performHttpCall(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Lorg/telegram/messenger/HttpClient$Response;

    move-result-object v0

    return-object v0
.end method

.method public static performHttpCall(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Lorg/telegram/messenger/HttpClient$Response;
    .registers 16
    .param p0, "requestURL"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Lorg/telegram/messenger/HttpClient$Response;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 48
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v9, 0x3a98

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 49
    const/16 v9, 0x3a98

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 50
    if-nez p1, :cond_87

    if-nez p2, :cond_87

    if-nez p3, :cond_87

    .line 51
    const-string v9, "GET"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 55
    :goto_20
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 56
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 57
    if-eqz p4, :cond_35

    .line 58
    const-string v9, "Cookie"

    const-string v10, ";"

    invoke-static {v10, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_35
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 62
    .local v4, "os":Ljava/io/OutputStream;
    if-eqz p1, :cond_93

    .line 63
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "UTF-8"

    invoke-direct {v9, v4, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    .local v8, "writer":Ljava/io/BufferedWriter;
    invoke-static {p1}, Lorg/telegram/messenger/HttpClient;->getPostDataString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 66
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 75
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    :cond_54
    :goto_54
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 76
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 77
    .local v5, "resCode":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    const-string v10, "Set-Cookie"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 78
    .local v6, "resCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, ""

    .line 79
    .local v7, "resText":Ljava/lang/String;
    const/16 v9, 0xc8

    if-ne v5, v9, :cond_cd

    .line 80
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 82
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_7b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_bb

    .line 91
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :goto_81
    new-instance v9, Lorg/telegram/messenger/HttpClient$Response;

    invoke-direct {v9, v5, v7, v6}, Lorg/telegram/messenger/HttpClient$Response;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 94
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "resCode":I
    .end local v6    # "resCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "resText":Ljava/lang/String;
    :goto_86
    return-object v9

    .line 53
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    :cond_87
    const-string v9, "POST"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8c} :catch_8d

    goto :goto_20

    .line 92
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    :catch_8d
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const/4 v9, 0x0

    goto :goto_86

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_93
    if-eqz p2, :cond_a3

    .line 68
    :try_start_95
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V

    goto :goto_54

    .line 69
    :cond_a3
    if-eqz p3, :cond_54

    .line 70
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "UTF-8"

    invoke-direct {v9, v4, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 71
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v8, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 73
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    goto :goto_54

    .line 86
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "resCode":I
    .restart local v6    # "resCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "resText":Ljava/lang/String;
    :cond_bb
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_cb} :catch_8d

    move-result-object v7

    .line 87
    goto :goto_7b

    .line 89
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :cond_cd
    const/4 v7, 0x0

    goto :goto_81
.end method

.method public static performPostCall(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)Lorg/telegram/messenger/HttpClient$Response;
    .registers 4
    .param p0, "requestURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Lorg/telegram/messenger/HttpClient$Response;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v0, 0x0

    .line 38
    invoke-static {p0, p1, v0, v0, p2}, Lorg/telegram/messenger/HttpClient;->performHttpCall(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Lorg/telegram/messenger/HttpClient$Response;

    move-result-object v0

    return-object v0
.end method

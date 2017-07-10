.class public Lcom/stripe/android/net/StripeApiHandler;
.super Ljava/lang/Object;
.source "StripeApiHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/net/StripeApiHandler$Parameter;,
        Lcom/stripe/android/net/StripeApiHandler$RestMethod;
    }
.end annotation


# static fields
.field public static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DNS_CACHE_TTL_PROPERTY_NAME:Ljava/lang/String; = "networkaddress.cache.ttl"

.field static final GET:Ljava/lang/String; = "GET"

.field public static final LIVE_API_BASE:Ljava/lang/String; = "https://api.stripe.com"

.field static final POST:Ljava/lang/String; = "POST"

.field private static final SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field public static final TOKENS:Ljava/lang/String; = "tokens"

.field public static final VERSION:Ljava/lang/String; = "3.5.0"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lcom/stripe/android/net/StripeSSLSocketFactory;

    invoke-direct {v0}, Lcom/stripe/android/net/StripeSSLSocketFactory;-><init>()V

    sput-object v0, Lcom/stripe/android/net/StripeApiHandler;->SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGetConnection(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/stripe/android/net/RequestOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {p0, p1}, Lcom/stripe/android/net/StripeApiHandler;->formatURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "getURL":Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/stripe/android/net/StripeApiHandler;->createStripeConnection(Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 197
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 199
    return-object v0
.end method

.method private static createPostConnection(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;
    .registers 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/stripe/android/net/RequestOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 204
    invoke-static {p0, p2}, Lcom/stripe/android/net/StripeApiHandler;->createStripeConnection(Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 206
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 207
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 208
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded;charset=%s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x0

    .line 213
    .local v1, "output":Ljava/io/OutputStream;
    :try_start_20
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 214
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_33

    .line 216
    if-eqz v1, :cond_32

    .line 217
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 220
    :cond_32
    return-object v0

    .line 216
    :catchall_33
    move-exception v2

    if-eqz v1, :cond_39

    .line 217
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_39
    throw v2
.end method

.method static createQuery(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/stripe/android/exception/InvalidRequestException;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v3, "queryStringBuffer":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/stripe/android/net/StripeApiHandler;->flattenParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "flatParams":Ljava/util/List;, "Ljava/util/List<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 125
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1e

    .line 127
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/android/net/StripeApiHandler$Parameter;

    .line 130
    .local v2, "param":Lcom/stripe/android/net/StripeApiHandler$Parameter;
    iget-object v4, v2, Lcom/stripe/android/net/StripeApiHandler$Parameter;->key:Ljava/lang/String;

    iget-object v5, v2, Lcom/stripe/android/net/StripeApiHandler$Parameter;->value:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/stripe/android/net/StripeApiHandler;->urlEncodePair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 133
    .end local v2    # "param":Lcom/stripe/android/net/StripeApiHandler$Parameter;
    :cond_30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static createStripeConnection(Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;
    .registers 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/stripe/android/net/RequestOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, "stripeURL":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 231
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 232
    const v3, 0x13880

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 233
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 234
    invoke-static {p1}, Lcom/stripe/android/net/StripeApiHandler;->getHeaders(Lcom/stripe/android/net/RequestOptions;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 238
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_42
    instance-of v3, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_4e

    move-object v3, v0

    .line 239
    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v4, Lcom/stripe/android/net/StripeApiHandler;->SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 242
    :cond_4e
    return-object v0
.end method

.method public static createToken(Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/model/Token;
    .registers 4
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Lcom/stripe/android/net/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/android/net/RequestOptions;",
            ")",
            "Lcom/stripe/android/model/Token;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/CardException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "cardParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "POST"

    invoke-static {}, Lcom/stripe/android/net/StripeApiHandler;->getApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0, p1}, Lcom/stripe/android/net/StripeApiHandler;->requestToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/model/Token;

    move-result-object v0

    return-object v0
.end method

.method private static flattenParams(Ljava/util/Map;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/stripe/android/net/StripeApiHandler$Parameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/stripe/android/net/StripeApiHandler;->flattenParamsMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static flattenParamsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/stripe/android/net/StripeApiHandler$Parameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 341
    .local v0, "flatParams":Ljava/util/List;, "Ljava/util/List<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 342
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const-string v3, "%s[]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "newPrefix":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 349
    new-instance v3, Lcom/stripe/android/net/StripeApiHandler$Parameter;

    const-string v4, ""

    invoke-direct {v3, p1, v4}, Lcom/stripe/android/net/StripeApiHandler$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_25
    return-object v0

    .line 351
    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 352
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/stripe/android/net/StripeApiHandler;->flattenParamsValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method private static flattenParamsMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/stripe/android/net/StripeApiHandler$Parameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 362
    .local v1, "flatParams":Ljava/util/List;, "Ljava/util/List<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    if-nez p0, :cond_8

    .line 378
    :cond_7
    return-object v1

    .line 366
    :cond_8
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 367
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 368
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 370
    .local v4, "value":Ljava/lang/Object;
    move-object v3, v2

    .line 371
    .local v3, "newPrefix":Ljava/lang/String;
    if-eqz p1, :cond_38

    .line 372
    const-string v6, "%s[%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 375
    :cond_38
    invoke-static {v4, v3}, Lcom/stripe/android/net/StripeApiHandler;->flattenParamsValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10
.end method

.method private static flattenParamsValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/stripe/android/net/StripeApiHandler$Parameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 385
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 386
    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/stripe/android/net/StripeApiHandler;->flattenParamsMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 402
    .local v6, "flatParams":Ljava/util/List;, "Ljava/util/List<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    :goto_b
    return-object v6

    .line 387
    .end local v6    # "flatParams":Ljava/util/List;, "Ljava/util/List<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_17

    .line 388
    check-cast p0, Ljava/util/List;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/stripe/android/net/StripeApiHandler;->flattenParamsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .restart local v6    # "flatParams":Ljava/util/List;, "Ljava/util/List<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    goto :goto_b

    .line 389
    .end local v6    # "flatParams":Ljava/util/List;, "Ljava/util/List<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_17
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 390
    new-instance v0, Lcom/stripe/android/exception/InvalidRequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You cannot set \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to an empty string. We interpret empty strings as null in requests. You may set \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to null to delete the property."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    .line 394
    :cond_4f
    if-nez p0, :cond_61

    .line 395
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 396
    .restart local v6    # "flatParams":Ljava/util/List;, "Ljava/util/List<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    new-instance v0, Lcom/stripe/android/net/StripeApiHandler$Parameter;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/net/StripeApiHandler$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 398
    .end local v6    # "flatParams":Ljava/util/List;, "Ljava/util/List<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    :cond_61
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 399
    .restart local v6    # "flatParams":Ljava/util/List;, "Ljava/util/List<Lcom/stripe/android/net/StripeApiHandler$Parameter;>;"
    new-instance v0, Lcom/stripe/android/net/StripeApiHandler$Parameter;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/stripe/android/net/StripeApiHandler$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method private static formatURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 184
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 189
    .end local p0    # "url":Ljava/lang/String;
    :cond_8
    :goto_8
    return-object p0

    .line 188
    .restart local p0    # "url":Ljava/lang/String;
    :cond_9
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v0, "&"

    .line 189
    .local v0, "separator":Ljava/lang/String;
    :goto_13
    const-string v1, "%s%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 188
    .end local v0    # "separator":Ljava/lang/String;
    :cond_26
    const-string v0, "?"

    goto :goto_13
.end method

.method static getApiUrl()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 175
    const-string v0, "%s/v1/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://api.stripe.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "tokens"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getHeaders(Lcom/stripe/android/net/RequestOptions;)Ljava/util/Map;
    .registers 13
    .param p0, "options"    # Lcom/stripe/android/net/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/net/RequestOptions;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/stripe/android/net/RequestOptions;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "apiVersion":Ljava/lang/String;
    const-string v7, "Accept-Charset"

    const-string v8, "UTF-8"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v7, "Accept"

    const-string v8, "application/json"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v7, "User-Agent"

    const-string v8, "Stripe/v1 JavaBindings/%s"

    new-array v9, v11, [Ljava/lang/Object;

    const-string v10, "3.5.0"

    aput-object v10, v9, v6

    .line 142
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 141
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v7, "Authorization"

    const-string v8, "Bearer %s"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/stripe/android/net/RequestOptions;->getPublishableApiKey()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/4 v7, 0x7

    new-array v5, v7, [Ljava/lang/String;

    const-string v7, "os.name"

    aput-object v7, v5, v6

    const-string v7, "os.version"

    aput-object v7, v5, v11

    const/4 v7, 0x2

    const-string v8, "os.arch"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string v8, "java.version"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string v8, "java.vendor"

    aput-object v8, v5, v7

    const/4 v7, 0x5

    const-string v8, "java.vm.version"

    aput-object v8, v5, v7

    const/4 v7, 0x6

    const-string v8, "java.vm.vendor"

    aput-object v8, v5, v7

    .line 151
    .local v5, "propertyNames":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v3, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, v5

    :goto_67
    if-ge v6, v7, :cond_75

    aget-object v4, v5, v6

    .line 153
    .local v4, "propertyName":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 156
    .end local v4    # "propertyName":Ljava/lang/String;
    :cond_75
    const-string v6, "bindings.version"

    const-string v7, "3.5.0"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v6, "lang"

    const-string v7, "Java"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v6, "publisher"

    const-string v7, "Stripe"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 160
    .local v1, "headerMappingObject":Lorg/json/JSONObject;
    const-string v6, "X-Stripe-Client-User-Agent"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    if-eqz v0, :cond_9f

    .line 163
    const-string v6, "Stripe-Version"

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_9f
    invoke-virtual {p0}, Lcom/stripe/android/net/RequestOptions;->getIdempotencyKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_ae

    .line 167
    const-string v6, "Idempotency-Key"

    invoke-virtual {p0}, Lcom/stripe/android/net/RequestOptions;->getIdempotencyKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_ae
    return-object v2
.end method

.method private static getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .param p0, "responseStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    new-instance v1, Ljava/util/Scanner;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v2, "\\A"

    .line 519
    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "rBody":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 523
    return-object v0
.end method

.method static getRetrieveTokenApiUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "tokenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 180
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/stripe/android/net/StripeApiHandler;->getApiUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStripeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/net/StripeResponse;
    .registers 11
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/stripe/android/net/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/android/net/RequestOptions;",
            ")",
            "Lcom/stripe/android/net/StripeResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 321
    :try_start_1
    invoke-static {p2}, Lcom/stripe/android/net/StripeApiHandler;->createQuery(Ljava/util/Map;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_4} :catch_a

    move-result-object v6

    .line 330
    .local v6, "query":Ljava/lang/String;
    invoke-static {p0, p1, v6, p3}, Lcom/stripe/android/net/StripeApiHandler;->makeURLConnectionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/net/StripeResponse;

    move-result-object v0

    return-object v0

    .line 322
    .end local v6    # "query":Ljava/lang/String;
    :catch_a
    move-exception v5

    .line 323
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lcom/stripe/android/exception/InvalidRequestException;

    const-string v1, "Unable to encode parameters to UTF-8. Please contact support@stripe.com for assistance."

    const/4 v3, 0x0

    .line 326
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static handleAPIError(Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .param p0, "rBody"    # Ljava/lang/String;
    .param p1, "rCode"    # I
    .param p2, "requestId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/CardException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {p0}, Lcom/stripe/android/net/ErrorParser;->parseError(Ljava/lang/String;)Lcom/stripe/android/net/ErrorParser$StripeError;

    move-result-object v9

    .line 410
    .local v9, "stripeError":Lcom/stripe/android/net/ErrorParser$StripeError;
    sparse-switch p1, :sswitch_data_72

    .line 442
    new-instance v0, Lcom/stripe/android/exception/APIException;

    iget-object v1, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/stripe/android/exception/APIException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    .line 412
    :sswitch_14
    new-instance v0, Lcom/stripe/android/exception/InvalidRequestException;

    iget-object v1, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    iget-object v2, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    .line 419
    :sswitch_24
    new-instance v0, Lcom/stripe/android/exception/InvalidRequestException;

    iget-object v1, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    iget-object v2, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    .line 426
    :sswitch_34
    new-instance v0, Lcom/stripe/android/exception/AuthenticationException;

    iget-object v1, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw v0

    .line 428
    :sswitch_40
    new-instance v0, Lcom/stripe/android/exception/CardException;

    iget-object v1, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    iget-object v3, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->code:Ljava/lang/String;

    iget-object v4, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    iget-object v5, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->decline_code:Ljava/lang/String;

    iget-object v6, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->charge:Ljava/lang/String;

    .line 435
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/stripe/android/exception/CardException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    .line 438
    :sswitch_56
    new-instance v0, Lcom/stripe/android/exception/PermissionException;

    iget-object v1, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/stripe/android/exception/PermissionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw v0

    .line 440
    :sswitch_62
    new-instance v0, Lcom/stripe/android/exception/RateLimitException;

    iget-object v1, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    iget-object v2, v9, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/exception/RateLimitException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v0

    .line 410
    :sswitch_data_72
    .sparse-switch
        0x190 -> :sswitch_14
        0x191 -> :sswitch_34
        0x192 -> :sswitch_40
        0x193 -> :sswitch_56
        0x194 -> :sswitch_24
        0x1ad -> :sswitch_62
    .end sparse-switch
.end method

.method private static makeURLConnectionRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/net/StripeResponse;
    .registers 14
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/stripe/android/net/RequestOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/APIConnectionException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v6, -0x1

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_8e

    :cond_b
    move v5, v6

    :goto_c
    packed-switch v5, :pswitch_data_98

    .line 478
    new-instance v5, Lcom/stripe/android/exception/APIConnectionException;

    const-string v6, "Unrecognized HTTP method %s. This indicates a bug in the Stripe bindings. Please contact support@stripe.com for assistance."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    .line 479
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/stripe/android/exception/APIConnectionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_21} :catch_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_3f

    .line 498
    :catch_21
    move-exception v1

    .line 499
    .local v1, "e":Ljava/io/IOException;
    :try_start_22
    new-instance v5, Lcom/stripe/android/exception/APIConnectionException;

    const-string v6, "IOException during API request to Stripe (%s): %s Please check your internet connection and try again. If this problem persists, you should check Stripe\'s service status at https://twitter.com/stripestatus, or let us know at support@stripe.com."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 506
    invoke-static {}, Lcom/stripe/android/net/StripeApiHandler;->getApiUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 500
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/stripe/android/exception/APIConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_3f

    .line 508
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3f
    move-exception v5

    if-eqz v0, :cond_45

    .line 509
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_45
    throw v5

    .line 470
    :sswitch_46
    :try_start_46
    const-string v7, "GET"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_c

    :sswitch_4f
    const-string v5, "POST"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v7

    goto :goto_c

    .line 472
    :pswitch_59
    invoke-static {p1, p2, p3}, Lcom/stripe/android/net/StripeApiHandler;->createGetConnection(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 486
    :goto_5d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 490
    .local v4, "rCode":I
    const/16 v5, 0xc8

    if-lt v4, v5, :cond_85

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_85

    .line 491
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/android/net/StripeApiHandler;->getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "rBody":Ljava/lang/String;
    :goto_71
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 496
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v5, Lcom/stripe/android/net/StripeResponse;

    invoke-direct {v5, v4, v3, v2}, Lcom/stripe/android/net/StripeResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_7a} :catch_21
    .catchall {:try_start_46 .. :try_end_7a} :catchall_3f

    .line 508
    if-eqz v0, :cond_7f

    .line 509
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 496
    :cond_7f
    return-object v5

    .line 475
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "rBody":Ljava/lang/String;
    .end local v4    # "rCode":I
    :pswitch_80
    :try_start_80
    invoke-static {p1, p2, p3}, Lcom/stripe/android/net/StripeApiHandler;->createPostConnection(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 476
    goto :goto_5d

    .line 493
    .restart local v4    # "rCode":I
    :cond_85
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/android/net/StripeApiHandler;->getResponseBody(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8c} :catch_21
    .catchall {:try_start_80 .. :try_end_8c} :catchall_3f

    move-result-object v3

    .restart local v3    # "rBody":Ljava/lang/String;
    goto :goto_71

    .line 470
    :sswitch_data_8e
    .sparse-switch
        0x11336 -> :sswitch_46
        0x2590a0 -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_59
        :pswitch_80
    .end packed-switch
.end method

.method private static requestToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/model/Token;
    .registers 19
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/stripe/android/net/RequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/android/net/RequestOptions;",
            ")",
            "Lcom/stripe/android/model/Token;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/CardException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .prologue
    .line 252
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_4

    .line 253
    const/4 v11, 0x0

    .line 297
    :cond_3
    :goto_3
    return-object v11

    .line 255
    :cond_4
    const/4 v4, 0x0

    .line 256
    .local v4, "originalDNSCacheTTL":Ljava/lang/String;
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 259
    .local v0, "allowedToSetTTL":Ljava/lang/Boolean;
    :try_start_a
    const-string v11, "networkaddress.cache.ttl"

    .line 260
    invoke-static {v11}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    const-string v11, "networkaddress.cache.ttl"

    const-string v12, "0"

    .line 263
    invoke-static {v11, v12}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_17} :catch_33

    .line 268
    :goto_17
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/android/net/RequestOptions;->getPublishableApiKey()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "apiKey":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 270
    new-instance v11, Lcom/stripe/android/exception/AuthenticationException;

    const-string v12, "No API key provided. (HINT: set your API key using \'Stripe.apiKey = <API-KEY>\'. You can generate API keys from the Stripe web interface. See https://stripe.com/api for details or email support@stripe.com if you have questions."

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 274
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw v11

    .line 264
    .end local v1    # "apiKey":Ljava/lang/String;
    :catch_33
    move-exception v10

    .line 265
    .local v10, "se":Ljava/lang/SecurityException;
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_17

    .line 278
    .end local v10    # "se":Ljava/lang/SecurityException;
    .restart local v1    # "apiKey":Ljava/lang/String;
    :cond_3a
    :try_start_3a
    invoke-static/range {p0 .. p3}, Lcom/stripe/android/net/StripeApiHandler;->getStripeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/net/StripeResponse;

    move-result-object v9

    .line 280
    .local v9, "response":Lcom/stripe/android/net/StripeResponse;
    invoke-virtual {v9}, Lcom/stripe/android/net/StripeResponse;->getResponseCode()I

    move-result v6

    .line 281
    .local v6, "rCode":I
    invoke-virtual {v9}, Lcom/stripe/android/net/StripeResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "rBody":Ljava/lang/String;
    const/4 v7, 0x0

    .line 284
    .local v7, "requestId":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/stripe/android/net/StripeResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v2

    .line 285
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v2, :cond_7c

    const/4 v8, 0x0

    .line 286
    .local v8, "requestIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4e
    if-eqz v8, :cond_5d

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5d

    .line 287
    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "requestId":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 290
    .restart local v7    # "requestId":Ljava/lang/String;
    :cond_5d
    const/16 v11, 0xc8

    if-lt v6, v11, :cond_65

    const/16 v11, 0x12c

    if-lt v6, v11, :cond_68

    .line 291
    :cond_65
    invoke-static {v5, v6, v7}, Lcom/stripe/android/net/StripeApiHandler;->handleAPIError(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    :cond_68
    invoke-static {v5}, Lcom/stripe/android/net/TokenParser;->parseToken(Ljava/lang/String;)Lcom/stripe/android/model/Token;
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_6b} :catch_8d
    .catchall {:try_start_3a .. :try_end_6b} :catchall_a7

    move-result-object v11

    .line 299
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 300
    if-nez v4, :cond_86

    .line 303
    const-string v12, "networkaddress.cache.ttl"

    const-string v13, "-1"

    invoke-static {v12, v13}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 285
    .end local v8    # "requestIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7c
    :try_start_7c
    const-string v11, "Request-Id"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_84} :catch_8d
    .catchall {:try_start_7c .. :try_end_84} :catchall_a7

    move-object v8, v11

    goto :goto_4e

    .line 306
    .restart local v8    # "requestIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_86
    const-string v12, "networkaddress.cache.ttl"

    invoke-static {v12, v4}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 296
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "rBody":Ljava/lang/String;
    .end local v6    # "rCode":I
    .end local v7    # "requestId":Ljava/lang/String;
    .end local v8    # "requestIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "response":Lcom/stripe/android/net/StripeResponse;
    :catch_8d
    move-exception v3

    .line 297
    .local v3, "jsonException":Lorg/json/JSONException;
    const/4 v11, 0x0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 300
    if-nez v4, :cond_a0

    .line 303
    const-string v12, "networkaddress.cache.ttl"

    const-string v13, "-1"

    invoke-static {v12, v13}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 306
    :cond_a0
    const-string v12, "networkaddress.cache.ttl"

    invoke-static {v12, v4}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 299
    .end local v3    # "jsonException":Lorg/json/JSONException;
    :catchall_a7
    move-exception v11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_b7

    .line 300
    if-nez v4, :cond_b8

    .line 303
    const-string v12, "networkaddress.cache.ttl"

    const-string v13, "-1"

    invoke-static {v12, v13}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_b7
    :goto_b7
    throw v11

    :cond_b8
    const-string v12, "networkaddress.cache.ttl"

    invoke-static {v12, v4}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7
.end method

.method public static retrieveToken(Lcom/stripe/android/net/RequestOptions;Ljava/lang/String;)Lcom/stripe/android/model/Token;
    .registers 7
    .param p0, "options"    # Lcom/stripe/android/net/RequestOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "tokenId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/exception/AuthenticationException;,
            Lcom/stripe/android/exception/InvalidRequestException;,
            Lcom/stripe/android/exception/APIConnectionException;,
            Lcom/stripe/android/exception/APIException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    const-string v1, "GET"

    invoke-static {p1}, Lcom/stripe/android/net/StripeApiHandler;->getRetrieveTokenApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0}, Lcom/stripe/android/net/StripeApiHandler;->requestToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/model/Token;
    :try_end_a
    .catch Lcom/stripe/android/exception/CardException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 109
    :catch_c
    move-exception v0

    .line 111
    .local v0, "cardException":Lcom/stripe/android/exception/CardException;
    new-instance v1, Lcom/stripe/android/exception/APIException;

    .line 112
    invoke-virtual {v0}, Lcom/stripe/android/exception/CardException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Lcom/stripe/android/exception/CardException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v0}, Lcom/stripe/android/exception/CardException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/stripe/android/exception/APIException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 454
    if-nez p0, :cond_4

    .line 455
    const/4 v0, 0x0

    .line 458
    :goto_3
    return-object v0

    :cond_4
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static urlEncodePair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "k"    # Ljava/lang/String;
    .param p1, "v"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 448
    const-string v0, "%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/stripe/android/net/StripeApiHandler;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/stripe/android/net/StripeApiHandler;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

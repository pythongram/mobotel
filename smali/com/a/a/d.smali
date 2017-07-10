.class final Lcom/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/a;

.field final synthetic b:Lcom/a/a/p;


# direct methods
.method constructor <init>(Lcom/a/a/a;Lcom/a/a/p;)V
    .registers 3

    iput-object p1, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    iput-object p2, p0, Lcom/a/a/d;->b:Lcom/a/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    invoke-static {v0}, Lcom/a/a/a;->a(Lcom/a/a/a;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    invoke-static {v4}, Lcom/a/a/a;->b(Lcom/a/a/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/api/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/store/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending to URL - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->b()Lcom/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->c(Lcom/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_111

    const-string v0, "Using http client"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :goto_5d
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    long-to-int v3, v6

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v5, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v3, "UTF-8"

    invoke-static {v5, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {v5, v3}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :try_start_7f
    const-string v3, "X-Sentry-Auth"

    iget-object v5, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    invoke-static {v5}, Lcom/a/a/a;->a(Lcom/a/a/a;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/a/a/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User-Agent"

    const-string v5, "sentry-android/1.5.3"

    invoke-virtual {v4, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v5, "application/json; charset=utf-8"

    invoke-virtual {v4, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    iget-object v5, p0, Lcom/a/a/d;->b:Lcom/a/a/p;

    invoke-virtual {v5}, Lcom/a/a/p;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v3, v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_bb} :catch_12d

    move-result-object v4

    if-eqz v4, :cond_125

    :try_start_be
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/d;->a(Ljava/io/InputStream;)[B
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c9} :catch_121
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c9} :catch_12d

    move-result-object v0

    :goto_ca
    :try_start_ca
    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d3} :catch_12d

    move-result-object v4

    :try_start_d4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_df
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_d4 .. :try_end_df} :catch_127
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_df} :catch_12d

    move-result-object v0

    :goto_e0
    const/16 v2, 0xc8

    if-ne v3, v2, :cond_e5

    const/4 v1, 0x1

    :cond_e5
    :try_start_e5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendEvent - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_105} :catch_12d

    :goto_105
    if-eqz v1, :cond_132

    invoke-static {}, Lcom/a/a/j;->b()Lcom/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d;->b:Lcom/a/a/p;

    invoke-virtual {v0, v1}, Lcom/a/a/j;->b(Lcom/a/a/p;)V

    :goto_110
    return-void

    :cond_111
    const-string v0, "Using https client"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-static {v0}, Lcom/a/a/a;->a(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    goto/16 :goto_5d

    :catch_121
    move-exception v0

    :try_start_122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_125
    move-object v0, v2

    goto :goto_ca

    :catch_127
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->printStackTrace()V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_12b} :catch_12d

    move-object v0, v2

    goto :goto_e0

    :catch_12d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_105

    :cond_132
    invoke-static {}, Lcom/a/a/j;->b()Lcom/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d;->b:Lcom/a/a/p;

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/p;)V

    goto :goto_110
.end method

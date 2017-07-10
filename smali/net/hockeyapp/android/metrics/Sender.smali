.class public Lnet/hockeyapp/android/metrics/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field static final DEFAULT_ENDPOINT_URL:Ljava/lang/String; = "https://gate.hockeyapp.net/v2/track"

.field static final DEFAULT_SENDER_CONNECT_TIMEOUT:I = 0x3a98

.field static final DEFAULT_SENDER_READ_TIMEOUT:I = 0x2710

.field static final MAX_REQUEST_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"


# instance fields
.field private mCustomServerURL:Ljava/lang/String;

.field private mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mWeakPersistence:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/hockeyapp/android/metrics/Persistence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    return-void
.end method

.method private logRequest(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 9
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 316
    .local v1, "writer":Ljava/io/Writer;
    if-eqz p1, :cond_47

    if-eqz p2, :cond_47

    .line 317
    :try_start_5
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending payload:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Sender;->getWriter(Ljava/net/HttpURLConnection;)Ljava/io/Writer;

    move-result-object v1

    .line 321
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_47} :catch_6b
    .catchall {:try_start_5 .. :try_end_47} :catchall_ac

    .line 327
    :cond_47
    if-eqz v1, :cond_4c

    .line 329
    :try_start_49
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 335
    :cond_4c
    :goto_4c
    return-void

    .line 330
    :catch_4d
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t close writer with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 324
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6b
    move-exception v0

    .line 325
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6c
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t log data with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_ac

    .line 327
    if-eqz v1, :cond_4c

    .line 329
    :try_start_8a
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_4c

    .line 330
    :catch_8e
    move-exception v0

    .line 331
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t close writer with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_ac
    move-exception v2

    if-eqz v1, :cond_b2

    .line 329
    :try_start_af
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    .line 332
    :cond_b2
    :goto_b2
    throw v2

    .line 330
    :catch_b3
    move-exception v0

    .line 331
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "HockeyApp-Metrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t close writer with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2
.end method


# virtual methods
.method protected createConnection()Ljava/net/HttpURLConnection;
    .registers 7

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getCustomServerURL()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_39

    .line 196
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://gate.hockeyapp.net/v2/track"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, "url":Ljava/net/URL;
    :cond_e
    :goto_e
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 208
    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 209
    const/16 v4, 0x3a98

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 210
    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 211
    const-string v4, "Content-Type"

    const-string v5, "application/x-json-stream"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 213
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 214
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 218
    .end local v3    # "url":Ljava/net/URL;
    :goto_38
    return-object v1

    .line 198
    :cond_39
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lnet/hockeyapp/android/metrics/Sender;->mCustomServerURL:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v3    # "url":Ljava/net/URL;
    if-nez v3, :cond_e

    .line 202
    new-instance v3, Ljava/net/URL;

    .end local v3    # "url":Ljava/net/URL;
    const-string v4, "https://gate.hockeyapp.net/v2/track"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_49} :catch_4a

    .restart local v3    # "url":Ljava/net/URL;
    goto :goto_e

    .line 215
    .end local v3    # "url":Ljava/net/URL;
    :catch_4a
    move-exception v2

    .line 216
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "HockeyApp-Metrics"

    const-string v5, "Could not open connection for provided URL with exception: "

    invoke-static {v4, v5, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method protected getCustomServerURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mCustomServerURL:Ljava/lang/String;

    return-object v0
.end method

.method protected getPersistence()Lnet/hockeyapp/android/metrics/Persistence;
    .registers 3

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "persistence":Lnet/hockeyapp/android/metrics/Persistence;
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Sender;->mWeakPersistence:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d

    .line 409
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Sender;->mWeakPersistence:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "persistence":Lnet/hockeyapp/android/metrics/Persistence;
    check-cast v0, Lnet/hockeyapp/android/metrics/Persistence;

    .line 411
    .restart local v0    # "persistence":Lnet/hockeyapp/android/metrics/Persistence;
    :cond_d
    return-object v0
.end method

.method protected getWriter(Ljava/net/HttpURLConnection;)Ljava/io/Writer;
    .registers 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_26

    .line 396
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, "Content-Type"

    const-string v2, "application/x-json-stream"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 399
    .local v0, "gzip":Ljava/util/zip/GZIPOutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 402
    .end local v0    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :goto_25
    return-object v1

    :cond_26
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_25
.end method

.method protected isExpected(I)Z
    .registers 3
    .param p1, "responseCode"    # I

    .prologue
    .line 282
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_a

    const/16 v0, 0xcb

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isRecoverableError(I)Z
    .registers 6
    .param p1, "responseCode"    # I

    .prologue
    .line 271
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x198

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x1ad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x1f7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x1ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 272
    .local v0, "recoverableCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected loadData(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "persistedData":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 173
    if-eqz p1, :cond_20

    .line 174
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/metrics/Persistence;->load(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 176
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/metrics/Persistence;->deleteFile(Ljava/io/File;)V

    .line 181
    :cond_20
    return-object v0
.end method

.method protected onResponse(Ljava/net/HttpURLConnection;ILjava/lang/String;Ljava/io/File;)V
    .registers 10
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "responseCode"    # I
    .param p3, "payload"    # Ljava/lang/String;
    .param p4, "fileToSend"    # Ljava/io/File;

    .prologue
    .line 233
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 234
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/metrics/Sender;->isRecoverableError(I)Z

    move-result v1

    .line 237
    .local v1, "isRecoverableError":Z
    if-eqz v1, :cond_4d

    .line 238
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recoverable error (probably a server error), persisting data:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 240
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    invoke-virtual {v2, p4}, Lnet/hockeyapp/android/metrics/Persistence;->makeAvailable(Ljava/io/File;)V

    .line 256
    :cond_4c
    :goto_4c
    return-void

    .line 244
    :cond_4d
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 245
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    invoke-virtual {v2, p4}, Lnet/hockeyapp/android/metrics/Persistence;->deleteFile(Ljava/io/File;)V

    .line 249
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/metrics/Sender;->isExpected(I)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 251
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    goto :goto_4c

    .line 253
    :cond_69
    invoke-virtual {p0, p1, p2, v0}, Lnet/hockeyapp/android/metrics/Sender;->onUnexpected(Ljava/net/HttpURLConnection;ILjava/lang/StringBuilder;)V

    goto :goto_4c
.end method

.method protected onUnexpected(Ljava/net/HttpURLConnection;ILjava/lang/StringBuilder;)V
    .registers 10
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "responseCode"    # I
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 294
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Unexpected response code: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, "\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, "HockeyApp-Metrics"

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, p1, p3}, Lnet/hockeyapp/android/metrics/Sender;->readResponse(Ljava/net/HttpURLConnection;Ljava/lang/StringBuilder;)V

    .line 303
    return-void
.end method

.method protected readResponse(Ljava/net/HttpURLConnection;Ljava/lang/StringBuilder;)V
    .registers 12
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 344
    const/4 v5, 0x0

    .line 345
    .local v5, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 346
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 349
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 350
    if-nez v4, :cond_11

    .line 351
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 354
    :cond_11
    if-eqz v4, :cond_59

    .line 355
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 356
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 357
    .local v3, "inputLine":Ljava/lang/String;
    :goto_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 358
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2a} :catch_2b
    .catchall {:try_start_7 .. :try_end_2a} :catchall_66

    goto :goto_21

    .line 372
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    :catch_2b
    move-exception v2

    .line 373
    .local v2, "e":Ljava/io/IOException;
    :try_start_2c
    const-string v6, "HockeyApp-Metrics"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_66

    .line 375
    if-eqz v4, :cond_3a

    .line 377
    :try_start_37
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_6d

    .line 383
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3a
    :goto_3a
    return-void

    .line 360
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "inputLine":Ljava/lang/String;
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 366
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    :goto_3f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 367
    invoke-static {v5}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_48} :catch_2b
    .catchall {:try_start_3b .. :try_end_48} :catchall_66

    .line 375
    :goto_48
    if-eqz v4, :cond_3a

    .line 377
    :try_start_4a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_3a

    .line 378
    :catch_4e
    move-exception v2

    .line 379
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "HockeyApp-Metrics"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 363
    .end local v2    # "e":Ljava/io/IOException;
    :cond_59
    :try_start_59
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_3f

    .line 370
    :cond_5e
    const-string v6, "HockeyApp-Metrics"

    const-string v7, "Couldn\'t log response, result is null or empty string"

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_65} :catch_2b
    .catchall {:try_start_59 .. :try_end_65} :catchall_66

    goto :goto_48

    .line 375
    :catchall_66
    move-exception v6

    if-eqz v4, :cond_6c

    .line 377
    :try_start_69
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_78

    .line 380
    :cond_6c
    :goto_6c
    throw v6

    .line 378
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_6d
    move-exception v2

    .line 379
    const-string v6, "HockeyApp-Metrics"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 378
    .end local v2    # "e":Ljava/io/IOException;
    :catch_78
    move-exception v2

    .line 379
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "HockeyApp-Metrics"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c
.end method

.method protected requestCount()I
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected send(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V
    .registers 9
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "persistedData"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1, p3}, Lnet/hockeyapp/android/metrics/Sender;->logRequest(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    if-eqz p3, :cond_18

    .line 143
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 146
    :try_start_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 148
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 150
    .local v1, "responseCode":I
    invoke-virtual {p0, p1, v1, p3, p2}, Lnet/hockeyapp/android/metrics/Sender;->onResponse(Ljava/net/HttpURLConnection;ILjava/lang/String;Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_19

    .line 161
    .end local v1    # "responseCode":I
    :cond_18
    :goto_18
    return-void

    .line 151
    :catch_19
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t send data with IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 155
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 156
    const-string v2, "HockeyApp-Metrics"

    const-string v3, "Persisting because of IOException: We\'re probably offline."

    invoke-static {v2, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/hockeyapp/android/metrics/Persistence;->makeAvailable(Ljava/io/File;)V

    goto :goto_18
.end method

.method protected sendAvailableFiles()V
    .registers 5

    .prologue
    .line 120
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 121
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hockeyapp/android/metrics/Persistence;->nextAvailableFileInDirectory()Ljava/io/File;

    move-result-object v1

    .line 122
    .local v1, "fileToSend":Ljava/io/File;
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/Sender;->loadData(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "persistedData":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 125
    .local v0, "connection":Ljava/net/HttpURLConnection;
    if-eqz v2, :cond_1d

    if-eqz v0, :cond_1d

    .line 126
    invoke-virtual {p0, v0, v1, v2}, Lnet/hockeyapp/android/metrics/Sender;->send(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "fileToSend":Ljava/io/File;
    .end local v2    # "persistedData":Ljava/lang/String;
    :cond_1d
    return-void
.end method

.method protected setCustomServerURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "customServerURL"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Sender;->mCustomServerURL:Ljava/lang/String;

    .line 443
    return-void
.end method

.method protected setPersistence(Lnet/hockeyapp/android/metrics/Persistence;)V
    .registers 3
    .param p1, "persistence"    # Lnet/hockeyapp/android/metrics/Persistence;

    .prologue
    .line 420
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mWeakPersistence:Ljava/lang/ref/WeakReference;

    .line 421
    return-void
.end method

.method protected triggerSending()V
    .registers 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->requestCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_18

    .line 81
    :try_start_8
    new-instance v1, Lnet/hockeyapp/android/metrics/Sender$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/metrics/Sender$1;-><init>(Lnet/hockeyapp/android/metrics/Sender;)V

    invoke-static {v1}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_10
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_8 .. :try_end_10} :catch_11

    .line 97
    :goto_10
    return-void

    .line 91
    :catch_11
    move-exception v0

    .line 92
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "Could not send events. Executor rejected async task."

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 95
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_18
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "We have already 10 pending requests, not sending anything."

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method protected triggerSendingForTesting(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "persistedData"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->requestCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 101
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 103
    new-instance v0, Lnet/hockeyapp/android/metrics/Sender$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/hockeyapp/android/metrics/Sender$2;-><init>(Lnet/hockeyapp/android/metrics/Sender;Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 114
    :cond_15
    return-void
.end method

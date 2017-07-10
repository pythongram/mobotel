.class Lorg/telegram/messenger/ImageLoader$HttpImageTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private canRetry:Z

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private httpConnection:Ljava/net/URLConnection;

.field private imageSize:I

.field private lastProgressTime:J

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;I)V
    .registers 6
    .param p2, "cacheImage"    # Lorg/telegram/messenger/ImageLoader$CacheImage;
    .param p3, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 282
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 275
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 276
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    .line 280
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    .line 283
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 284
    iput p3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    .line 285
    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .prologue
    .line 273
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .prologue
    .line 273
    iget v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    return v0
.end method

.method private reportProgress(F)V
    .registers 8
    .param p1, "progress"    # F

    .prologue
    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 289
    .local v0, "currentTime":J
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1c

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    const-wide/16 v4, 0x1f4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_28

    .line 290
    :cond_1c
    iput-wide v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    .line 291
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;F)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 304
    :cond_28
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 16
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 307
    const/4 v6, 0x0

    .line 308
    .local v6, "httpConnectionStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 310
    .local v2, "done":Z
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_63

    .line 312
    :try_start_8
    new-instance v3, Ljava/net/URL;

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 313
    .local v3, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    iput-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    .line 314
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const-string v12, "User-Agent"

    const-string v13, "Mozilla/5.0 (Linux; Android 4.4; Nexus 5 Build/_BuildID_) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v11, v12, v13}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const-string v12, "Referer"

    const-string v13, "google.com"

    invoke-virtual {v11, v12, v13}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const/16 v12, 0x1388

    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 317
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    const/16 v12, 0x1388

    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 318
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    instance-of v11, v11, Ljava/net/HttpURLConnection;

    if-eqz v11, :cond_45

    .line 319
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    check-cast v11, Ljava/net/HttpURLConnection;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 321
    :cond_45
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_63

    .line 322
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    invoke-virtual {v11}, Ljava/net/URLConnection;->connect()V

    .line 323
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 324
    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    const-string v13, "rws"

    invoke-direct {v11, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_63} :catch_fe

    .line 344
    .end local v3    # "downloadUrl":Ljava/net/URL;
    :cond_63
    :goto_63
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_ca

    .line 346
    :try_start_69
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    if-eqz v11, :cond_8a

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    instance-of v11, v11, Ljava/net/HttpURLConnection;

    if-eqz v11, :cond_8a

    .line 347
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    check-cast v11, Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 348
    .local v0, "code":I
    const/16 v11, 0xc8

    if-eq v0, v11, :cond_8a

    const/16 v11, 0xca

    if-eq v0, v11, :cond_8a

    const/16 v11, 0x130

    if-eq v0, v11, :cond_8a

    .line 349
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_8a} :catch_13b

    .line 355
    .end local v0    # "code":I
    :cond_8a
    :goto_8a
    iget v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    if-nez v11, :cond_bd

    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    if-eqz v11, :cond_bd

    .line 357
    :try_start_92
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/URLConnection;

    invoke-virtual {v11}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 358
    .local v5, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_bd

    .line 359
    const-string v11, "content-Length"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 360
    .local v10, "values":Ljava/util/List;
    if-eqz v10, :cond_bd

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_bd

    .line 361
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 362
    .local v7, "length":Ljava/lang/String;
    if-eqz v7, :cond_bd

    .line 363
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_bd} :catch_141

    .line 372
    .end local v5    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "length":Ljava/lang/String;
    .end local v10    # "values":Ljava/util/List;
    :cond_bd
    :goto_bd
    if-eqz v6, :cond_ca

    .line 374
    const/16 v11, 0x2000

    :try_start_c1
    new-array v1, v11, [B

    .line 375
    .local v1, "data":[B
    const/4 v9, 0x0

    .line 377
    .local v9, "totalLoaded":I
    :cond_c4
    :goto_c4
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->isCancelled()Z
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c7} :catch_168

    move-result v11

    if-eqz v11, :cond_147

    .line 409
    .end local v1    # "data":[B
    .end local v9    # "totalLoaded":I
    :cond_ca
    :goto_ca
    :try_start_ca
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v11, :cond_d6

    .line 410
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 411
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_d6} :catch_17d

    .line 418
    :cond_d6
    :goto_d6
    if-eqz v6, :cond_db

    .line 419
    :try_start_d8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_db} :catch_183

    .line 425
    :cond_db
    :goto_db
    if-eqz v2, :cond_f9

    .line 426
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    if-eqz v11, :cond_f9

    .line 427
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_f9

    .line 428
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    iput-object v12, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 433
    :cond_f9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    return-object v11

    .line 326
    :catch_fe
    move-exception v4

    .line 327
    .local v4, "e":Ljava/lang/Throwable;
    instance-of v11, v4, Ljava/net/SocketTimeoutException;

    if-eqz v11, :cond_111

    .line 328
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isNetworkOnline()Z

    move-result v11

    if-eqz v11, :cond_10c

    .line 329
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    .line 340
    :cond_10c
    :goto_10c
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_63

    .line 331
    :cond_111
    instance-of v11, v4, Ljava/net/UnknownHostException;

    if-eqz v11, :cond_119

    .line 332
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_10c

    .line 333
    :cond_119
    instance-of v11, v4, Ljava/net/SocketException;

    if-eqz v11, :cond_133

    .line 334
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10c

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ECONNRESET"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10c

    .line 335
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_10c

    .line 337
    :cond_133
    instance-of v11, v4, Ljava/io/FileNotFoundException;

    if-eqz v11, :cond_10c

    .line 338
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_10c

    .line 352
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_13b
    move-exception v4

    .line 353
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8a

    .line 367
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_141
    move-exception v4

    .line 368
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_bd

    .line 381
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "data":[B
    .restart local v9    # "totalLoaded":I
    :cond_147
    :try_start_147
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 382
    .local v8, "read":I
    if-lez v8, :cond_16e

    .line 383
    add-int/2addr v9, v8

    .line 384
    iget-object v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 385
    iget v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    if-eqz v11, :cond_c4

    .line 386
    int-to-float v11, v9

    iget v12, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-direct {p0, v11}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(F)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_160} :catch_162
    .catch Ljava/lang/Throwable; {:try_start_147 .. :try_end_160} :catch_168

    goto/16 :goto_c4

    .line 397
    .end local v8    # "read":I
    :catch_162
    move-exception v4

    .line 398
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_163
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_166
    .catch Ljava/lang/Throwable; {:try_start_163 .. :try_end_166} :catch_168

    goto/16 :goto_ca

    .line 402
    .end local v1    # "data":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "totalLoaded":I
    :catch_168
    move-exception v4

    .line 403
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_ca

    .line 388
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v1    # "data":[B
    .restart local v8    # "read":I
    .restart local v9    # "totalLoaded":I
    :cond_16e
    const/4 v11, -0x1

    if-ne v8, v11, :cond_ca

    .line 389
    const/4 v2, 0x1

    .line 390
    :try_start_172
    iget v11, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:I

    if-eqz v11, :cond_ca

    .line 391
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {p0, v11}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(F)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_17b} :catch_162
    .catch Ljava/lang/Throwable; {:try_start_172 .. :try_end_17b} :catch_168

    goto/16 :goto_ca

    .line 413
    .end local v1    # "data":[B
    .end local v8    # "read":I
    .end local v9    # "totalLoaded":I
    :catch_17d
    move-exception v4

    .line 414
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_d6

    .line 421
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_183
    move-exception v4

    .line 422
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_db
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 3

    .prologue
    .line 469
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$4;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 475
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$5;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 487
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 438
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    if-nez v0, :cond_31

    .line 439
    :cond_a
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const/4 v3, 0x0

    # invokes: Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->access$400(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V

    .line 443
    :goto_18
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$2;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 459
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$3;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 465
    return-void

    .line 441
    :cond_31
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    # invokes: Lorg/telegram/messenger/ImageLoader;->httpFileLoadError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->access$500(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    goto :goto_18
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 273
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

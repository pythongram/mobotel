.class Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbGenerateTask"
.end annotation


# instance fields
.field private filter:Ljava/lang/String;

.field private mediaType:I

.field private originalPath:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field private thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .registers 6
    .param p2, "type"    # I
    .param p3, "path"    # Ljava/io/File;
    .param p4, "location"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p5, "f"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput p2, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->mediaType:I

    .line 499
    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    .line 500
    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 501
    iput-object p5, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->filter:Ljava/lang/String;

    .line 502
    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    .prologue
    .line 490
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->filter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    .prologue
    .line 490
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    return-void
.end method

.method private removeTask()V
    .registers 4

    .prologue
    .line 505
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v1, :cond_5

    .line 515
    :goto_4
    return-void

    .line 508
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->access$700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 520
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v14, :cond_a

    .line 521
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    .line 596
    :goto_9
    return-void

    .line 524
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, "key":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "q_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 526
    .local v12, "thumbFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_68

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_74

    .line 527
    :cond_68
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_9

    .line 592
    .end local v5    # "key":Ljava/lang/String;
    .end local v12    # "thumbFile":Ljava/io/File;
    :catch_6c
    move-exception v3

    .line 593
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 594
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    goto :goto_9

    .line 530
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v12    # "thumbFile":Ljava/io/File;
    :cond_74
    const/16 v14, 0xb4

    :try_start_76
    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    sget-object v16, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    div-int/lit8 v15, v15, 0x4

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 531
    .local v10, "size":I
    const/4 v6, 0x0

    .line 532
    .local v6, "originalBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->mediaType:I

    if-nez v14, :cond_af

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    int-to-float v0, v10

    move/from16 v16, v0

    int-to-float v0, v10

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v18}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 544
    :cond_a8
    :goto_a8
    if-nez v6, :cond_10c

    .line 545
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    goto/16 :goto_9

    .line 534
    :cond_af
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->mediaType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_c4

    .line 535
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_a8

    .line 536
    :cond_c4
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->mediaType:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_a8

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->originalPath:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 538
    .local v7, "path":Ljava/lang/String;
    const-string v14, ".jpg"

    invoke-virtual {v7, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_fc

    const-string v14, ".jpeg"

    invoke-virtual {v7, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_fc

    const-string v14, ".png"

    invoke-virtual {v7, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_fc

    const-string v14, ".gif"

    invoke-virtual {v7, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_fc

    .line 539
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    goto/16 :goto_9

    .line 542
    :cond_fc
    const/4 v14, 0x0

    int-to-float v15, v10

    int-to-float v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v7, v14, v15, v0, v1}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_a8

    .line 549
    .end local v7    # "path":Ljava/lang/String;
    :cond_10c
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 550
    .local v13, "w":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 551
    .local v4, "h":I
    if-eqz v13, :cond_118

    if-nez v4, :cond_11d

    .line 552
    :cond_118
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;->removeTask()V

    goto/16 :goto_9

    .line 555
    :cond_11d
    int-to-float v14, v13

    int-to-float v15, v10

    div-float/2addr v14, v15

    int-to-float v15, v4

    int-to-float v0, v10

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 556
    .local v8, "scaleFactor":F
    int-to-float v14, v13

    div-float/2addr v14, v8

    float-to-int v14, v14

    int-to-float v15, v4

    div-float/2addr v15, v8

    float-to-int v15, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v14, v15, v0}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 557
    .local v9, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eq v9, v6, :cond_13d

    .line 558
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 560
    :cond_13d
    move-object v6, v9

    .line 561
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 562
    .local v11, "stream":Ljava/io/FileOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x3c

    invoke-virtual {v6, v14, v15, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_14a
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_14a} :catch_6c

    .line 564
    :try_start_14a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14d} :catch_15e
    .catch Ljava/lang/Throwable; {:try_start_14a .. :try_end_14d} :catch_6c

    .line 568
    :goto_14d
    :try_start_14d
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 569
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v14, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5, v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask$2;-><init>(Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 565
    .end local v2    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_15e
    move-exception v3

    .line 566
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_162
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_162} :catch_6c

    goto :goto_14d
.end method

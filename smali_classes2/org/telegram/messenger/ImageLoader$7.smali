.class Lorg/telegram/messenger/ImageLoader$7;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$cacheOnly:Z

.field final synthetic val$ext:Ljava/lang/String;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$finalIsNeedsQualityThumb:Z

.field final synthetic val$finalTag:Ljava/lang/Integer;

.field final synthetic val$httpLocation:Ljava/lang/String;

.field final synthetic val$imageLocation:Lorg/telegram/tgnet/TLObject;

.field final synthetic val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$shouldGenerateQualityThumb:Z

.field final synthetic val$size:I

.field final synthetic val$thumb:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;ZZILjava/lang/String;)V
    .registers 16
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 1631
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput p2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p7, p0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    iput-boolean p9, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    iput-object p10, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p11, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    iput-boolean p12, p0, Lorg/telegram/messenger/ImageLoader$7;->val$shouldGenerateQualityThumb:Z

    iput-boolean p13, p0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    iput p14, p0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    iput-object p15, p0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 1634
    const/4 v5, 0x0

    .line 1635
    .local v5, "added":Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_98

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1637
    .local v8, "alreadyLoadingUrl":Lorg/telegram/messenger/ImageLoader$CacheImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1638
    .local v6, "alreadyLoadingCache":Lorg/telegram/messenger/ImageLoader$CacheImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1639
    .local v7, "alreadyLoadingImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-eqz v7, :cond_58

    .line 1640
    if-eq v7, v8, :cond_57

    if-ne v7, v6, :cond_25f

    .line 1641
    :cond_57
    const/4 v5, 0x1

    .line 1647
    :cond_58
    :goto_58
    if-nez v5, :cond_78

    if-eqz v6, :cond_78

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const/4 v5, 0x1

    .line 1651
    :cond_78
    if-nez v5, :cond_98

    if-eqz v8, :cond_98

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const/4 v5, 0x1

    .line 1657
    .end local v6    # "alreadyLoadingCache":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v7    # "alreadyLoadingImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v8    # "alreadyLoadingUrl":Lorg/telegram/messenger/ImageLoader$CacheImage;
    :cond_98
    if-nez v5, :cond_25e

    .line 1658
    const/16 v18, 0x0

    .line 1659
    .local v18, "onlyCache":Z
    const/16 v16, 0x0

    .line 1660
    .local v16, "isQuality":Z
    const/4 v11, 0x0

    .line 1662
    .local v11, "cacheFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2ae

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "http"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_e8

    .line 1664
    const/16 v18, 0x1

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "thumb://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_26c

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ":"

    const/16 v21, 0x8

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 1667
    .local v13, "idx":I
    if-ltz v13, :cond_e8

    .line 1668
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1716
    .end local v13    # "idx":I
    .restart local v11    # "cacheFile":Ljava/io/File;
    :cond_e8
    :goto_e8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_25e

    .line 1717
    new-instance v14, Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 1718
    .local v14, "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_147

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "vthumb"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_147

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "thumb"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_147

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "mp4"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_187

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "gif"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_187

    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    move/from16 v19, v0

    if-eqz v19, :cond_16b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "image/gif"

    .line 1719
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_187

    :cond_16b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v19, v0

    if-eqz v19, :cond_18d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1720
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v19

    if-eqz v19, :cond_18d

    .line 1721
    :cond_187
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    .line 1724
    :cond_18d
    if-nez v11, :cond_1c0

    .line 1725
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v19, v0

    if-eqz v19, :cond_1a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_411

    .line 1726
    :cond_1a7
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1740
    .restart local v11    # "cacheFile":Ljava/io/File;
    :cond_1c0
    :goto_1c0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    if-eqz v19, :cond_4a7

    const/16 v19, 0x1

    :goto_1ca
    move/from16 v0, v19

    iput-boolean v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    if-nez v18, :cond_219

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4be

    .line 1747
    :cond_219
    iput-object v11, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1748
    new-instance v19, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    if-eqz v19, :cond_4ab

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v19

    iget-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1780
    .end local v11    # "cacheFile":Ljava/io/File;
    .end local v14    # "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v16    # "isQuality":Z
    .end local v18    # "onlyCache":Z
    :cond_25e
    :goto_25e
    return-void

    .line 1643
    .restart local v6    # "alreadyLoadingCache":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .restart local v7    # "alreadyLoadingImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .restart local v8    # "alreadyLoadingUrl":Lorg/telegram/messenger/ImageLoader$CacheImage;
    :cond_25f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    goto/16 :goto_58

    .line 1670
    .end local v6    # "alreadyLoadingCache":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v7    # "alreadyLoadingImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v8    # "alreadyLoadingUrl":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .restart local v11    # "cacheFile":Ljava/io/File;
    .restart local v16    # "isQuality":Z
    .restart local v18    # "onlyCache":Z
    :cond_26c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "vthumb://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_29f

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ":"

    const/16 v21, 0x9

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 1672
    .restart local v13    # "idx":I
    if-ltz v13, :cond_e8

    .line 1673
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_e8

    .line 1676
    .end local v13    # "idx":I
    :cond_29f
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_e8

    .line 1679
    :cond_2ae
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    if-eqz v19, :cond_e8

    .line 1680
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2f1

    .line 1681
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "q_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1682
    .restart local v11    # "cacheFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2f1

    .line 1683
    const/4 v11, 0x0

    .line 1687
    :cond_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e8

    .line 1688
    const/4 v9, 0x0

    .line 1689
    .local v9, "attachPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_346

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_346

    .line 1690
    new-instance v9, Ljava/io/File;

    .end local v9    # "attachPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1691
    .restart local v9    # "attachPath":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_346

    .line 1692
    const/4 v9, 0x0

    .line 1695
    :cond_346
    if-nez v9, :cond_358

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v9

    .line 1698
    :cond_358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3d8

    if-nez v11, :cond_3d8

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v17

    .line 1700
    .local v17, "location":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .line 1701
    .local v15, "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    if-nez v15, :cond_3bc

    .line 1702
    new-instance v15, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .end local v15    # "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 1703
    .restart local v15    # "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    move-object/from16 v0, v19

    # setter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->fileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v15, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3402(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->filter:Ljava/lang/String;
    invoke-static {v15, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3502(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    :cond_3bc
    # operator++ for: Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->count:I
    invoke-static {v15}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$2908(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$3600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    .end local v15    # "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    .end local v17    # "location":Ljava/lang/String;
    :cond_3d8
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_e8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$shouldGenerateQualityThumb:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e8

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getFileType()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    # invokes: Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    invoke-static {v0, v1, v9, v2, v3}, Lorg/telegram/messenger/ImageLoader;->access$3700(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    goto/16 :goto_e8

    .line 1727
    .end local v9    # "attachPath":Ljava/io/File;
    .restart local v14    # "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    :cond_411
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v19, v0

    if-eqz v19, :cond_463

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v19

    if-eqz v19, :cond_448

    .line 1729
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_1c0

    .line 1731
    :cond_448
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_1c0

    .line 1733
    :cond_463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    move/from16 v19, v0

    if-eqz v19, :cond_48c

    .line 1734
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_1c0

    .line 1736
    :cond_48c
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_1c0

    .line 1740
    :cond_4a7
    const/16 v19, 0x0

    goto/16 :goto_1ca

    .line 1753
    :cond_4ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v19

    iget-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_25e

    .line 1756
    :cond_4be
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_5a1

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v19, v0

    if-eqz v19, :cond_543

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v17, v0

    check-cast v17, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1762
    .local v17, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v19, v0

    if-eqz v19, :cond_52f

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    move-object/from16 v19, v0

    if-nez v19, :cond_52f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_540

    :cond_52f
    const/16 v19, 0x1

    :goto_531
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V

    goto/16 :goto_25e

    :cond_540
    const/16 v19, 0x0

    goto :goto_531

    .line 1763
    .end local v17    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_543
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v19, v0

    if-eqz v19, :cond_572

    .line 1764
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_25e

    .line 1765
    :cond_572
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    move/from16 v19, v0

    if-eqz v19, :cond_25e

    .line 1766
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$TL_webDocument;ZZ)V

    goto/16 :goto_25e

    .line 1769
    :cond_5a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1770
    .local v12, "file":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v10

    .line 1771
    .local v10, "cacheDir":Ljava/io/File;
    new-instance v19, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_temp.jpg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    .line 1772
    iput-object v11, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1773
    new-instance v19, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v14, v2}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;I)V

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v19

    iget-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # invokes: Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V
    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/ImageLoader;->access$600(Lorg/telegram/messenger/ImageLoader;Z)V

    goto/16 :goto_25e
.end method

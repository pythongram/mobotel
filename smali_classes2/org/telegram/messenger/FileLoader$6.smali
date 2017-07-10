.class Lorg/telegram/messenger/FileLoader$6;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$cacheOnly:Z

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$force:Z

.field final synthetic val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field final synthetic val$locationExt:Ljava/lang/String;

.field final synthetic val$locationSize:I

.field final synthetic val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;ZIZ)V
    .registers 9
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 360
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p5, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iput-boolean p6, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    iput p7, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationSize:I

    iput-boolean p8, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, "fileName":Ljava/lang/String;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_18

    .line 365
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v12, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_d
    :goto_d
    if-eqz v2, :cond_17

    const-string v11, "-2147483648"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2e

    .line 528
    :cond_17
    :goto_17
    return-void

    .line 366
    :cond_18
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_23

    .line 367
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 368
    :cond_23
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v11, :cond_d

    .line 369
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 376
    :cond_2e
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/FileLoadOperation;

    .line 377
    .local v7, "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v7, :cond_84

    .line 378
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_17

    .line 379
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;->setForceRequest(Z)V

    .line 381
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-nez v11, :cond_54

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_6a

    .line 382
    :cond_54
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .line 388
    .local v0, "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :goto_5a
    if-eqz v0, :cond_17

    .line 389
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 390
    .local v5, "index":I
    if-lez v5, :cond_17

    .line 391
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 392
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_17

    .line 383
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    .end local v5    # "index":I
    :cond_6a
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v11, :cond_76

    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 384
    :cond_76
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .restart local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    goto :goto_5a

    .line 386
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :cond_7d
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .restart local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    goto :goto_5a

    .line 399
    .end local v0    # "downloadQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/FileLoadOperation;>;"
    :cond_84
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v9

    .line 400
    .local v9, "tempDir":Ljava/io/File;
    move-object v8, v9

    .line 401
    .local v8, "storeDir":Ljava/io/File;
    const/4 v10, 0x4

    .line 403
    .local v10, "type":I
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_da

    .line 404
    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    .end local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v12, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationExt:Ljava/lang/String;

    iget v13, p0, Lorg/telegram/messenger/FileLoader$6;->val$locationSize:I

    invoke-direct {v7, v11, v12, v13}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;I)V

    .line 405
    .restart local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    const/4 v10, 0x0

    .line 427
    :cond_9d
    :goto_9d
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$cacheOnly:Z

    if-nez v11, :cond_a7

    .line 428
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-virtual {v11, v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    .line 430
    :cond_a7
    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->setPaths(Ljava/io/File;Ljava/io/File;)V

    .line 432
    move-object v3, v2

    .line 433
    .local v3, "finalFileName":Ljava/lang/String;
    move v4, v10

    .line 434
    .local v4, "finalType":I
    new-instance v1, Lorg/telegram/messenger/FileLoader$6$1;

    invoke-direct {v1, p0, v3, v4}, Lorg/telegram/messenger/FileLoader$6$1;-><init>(Lorg/telegram/messenger/FileLoader$6;Ljava/lang/String;I)V

    .line 458
    .local v1, "fileLoadOperationDelegate":Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    invoke-virtual {v7, v1}, Lorg/telegram/messenger/FileLoadOperation;->setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V

    .line 489
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_128

    const/4 v6, 0x3

    .line 491
    .local v6, "maxCount":I
    :goto_c2
    const/4 v11, 0x1

    if-ne v10, v11, :cond_145

    .line 492
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_12a

    .line 493
    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 494
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1108(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_17

    .line 406
    .end local v1    # "fileLoadOperationDelegate":Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .end local v3    # "finalFileName":Ljava/lang/String;
    .end local v4    # "finalType":I
    .end local v6    # "maxCount":I
    :cond_da
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_fb

    .line 407
    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    .end local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 408
    .restart local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_ef

    .line 409
    const/4 v10, 0x1

    goto :goto_9d

    .line 410
    :cond_ef
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-eqz v11, :cond_f9

    .line 411
    const/4 v10, 0x2

    goto :goto_9d

    .line 413
    :cond_f9
    const/4 v10, 0x3

    goto :goto_9d

    .line 415
    :cond_fb
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v11, :cond_9d

    .line 416
    new-instance v7, Lorg/telegram/messenger/FileLoadOperation;

    .end local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-direct {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V

    .line 417
    .restart local v7    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 418
    const/4 v10, 0x1

    goto :goto_9d

    .line 419
    :cond_110
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_11a

    .line 420
    const/4 v10, 0x2

    goto :goto_9d

    .line 421
    :cond_11a
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v11

    if-eqz v11, :cond_125

    .line 422
    const/4 v10, 0x0

    goto/16 :goto_9d

    .line 424
    :cond_125
    const/4 v10, 0x3

    goto/16 :goto_9d

    .line 490
    .restart local v1    # "fileLoadOperationDelegate":Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .restart local v3    # "finalFileName":Ljava/lang/String;
    .restart local v4    # "finalType":I
    :cond_128
    const/4 v6, 0x1

    goto :goto_c2

    .line 497
    .restart local v6    # "maxCount":I
    :cond_12a
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_13a

    .line 498
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_17

    .line 500
    :cond_13a
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 503
    :cond_145
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_179

    .line 504
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1300(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_15e

    .line 505
    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 506
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1308(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_17

    .line 509
    :cond_15e
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_16e

    .line 510
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_17

    .line 512
    :cond_16e
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 516
    :cond_179
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1500(Lorg/telegram/messenger/FileLoader;)I

    move-result v11

    if-ge v11, v6, :cond_18e

    .line 517
    invoke-virtual {v7}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 518
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1508(Lorg/telegram/messenger/FileLoader;)I

    goto/16 :goto_17

    .line 521
    :cond_18e
    iget-boolean v11, p0, Lorg/telegram/messenger/FileLoader$6;->val$force:Z

    if-eqz v11, :cond_19e

    .line 522
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_17

    .line 524
    :cond_19e
    iget-object v11, p0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17
.end method

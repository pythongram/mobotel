.class Lorg/telegram/messenger/FileLoader$7;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$arg1:Ljava/lang/String;

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field final synthetic val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 533
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$7;->val$arg1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$7;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$7;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iput-object p5, p0, Lorg/telegram/messenger/FileLoader$7;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 536
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/FileLoader$7;->val$arg1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 537
    .local v1, "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 538
    :cond_21
    if-eqz v1, :cond_2e

    .line 539
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 540
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator-- for: Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1110(Lorg/telegram/messenger/FileLoader;)I

    .line 545
    :cond_2e
    :goto_2e
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13b

    .line 546
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 547
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest()Z

    move-result v4

    if-eqz v4, :cond_79

    move v0, v2

    .line 548
    .local v0, "maxCount":I
    :goto_4d
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)I

    move-result v4

    if-ge v4, v0, :cond_13b

    .line 549
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 550
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 551
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentAudioLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1108(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_2e

    .line 542
    .end local v0    # "maxCount":I
    :cond_6f
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->audioLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_79
    move v0, v3

    .line 547
    goto :goto_4d

    .line 557
    :cond_7b
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v4, :cond_87

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 558
    :cond_87
    if-eqz v1, :cond_94

    .line 559
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 560
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator-- for: Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1310(Lorg/telegram/messenger/FileLoader;)I

    .line 565
    :cond_94
    :goto_94
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13b

    .line 566
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 567
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest()Z

    move-result v4

    if-eqz v4, :cond_df

    move v0, v2

    .line 568
    .restart local v0    # "maxCount":I
    :goto_b3
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1300(Lorg/telegram/messenger/FileLoader;)I

    move-result v4

    if-ge v4, v0, :cond_13b

    .line 569
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 570
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v1, :cond_94

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 571
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentPhotoLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1308(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_94

    .line 562
    .end local v0    # "maxCount":I
    :cond_d5
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->photoLoadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_94

    :cond_df
    move v0, v3

    .line 567
    goto :goto_b3

    .line 578
    :cond_e1
    if-eqz v1, :cond_ee

    .line 579
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 580
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator-- for: Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1510(Lorg/telegram/messenger/FileLoader;)I

    .line 585
    :cond_ee
    :goto_ee
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13b

    .line 586
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 587
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest()Z

    move-result v4

    if-eqz v4, :cond_139

    move v0, v2

    .line 588
    .restart local v0    # "maxCount":I
    :goto_10d
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1500(Lorg/telegram/messenger/FileLoader;)I

    move-result v4

    if-ge v4, v0, :cond_13b

    .line 589
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 590
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v1, :cond_ee

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 591
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # operator++ for: Lorg/telegram/messenger/FileLoader;->currentLoadOperationsCount:I
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1508(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_ee

    .line 582
    .end local v0    # "maxCount":I
    :cond_12f
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    # getter for: Lorg/telegram/messenger/FileLoader;->loadOperationQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_ee

    :cond_139
    move v0, v3

    .line 587
    goto :goto_10d

    .line 598
    :cond_13b
    return-void
.end method
